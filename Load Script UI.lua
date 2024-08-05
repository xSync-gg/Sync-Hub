local UserInputService = game:GetService("UserInputService")
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainFrameCorner = Instance.new("UICorner")
local TitleLabel = Instance.new("TextLabel")
local ProgressBarBackground = Instance.new("Frame")
local ProgressBar = Instance.new("Frame")
local ProgressBarCorner = Instance.new("UICorner")
local ProgressBarBackgroundCorner = Instance.new("UICorner")
local DescriptionLabel = Instance.new("TextLabel")
local Image = Instance.new("ImageLabel")

ScreenGui.Name = "ScreenGui"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game:GetService("CoreGui")
MainFrame.BorderSizePixel = 0
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.Size = UDim2.new(0, 401, 0, 143)
MainFrame.Position = UDim2.new(0.5, -MainFrame.Size.X.Offset / 2, 0.5, -MainFrame.Size.Y.Offset / 2)
MainFrame.Parent = ScreenGui
MainFrameCorner.CornerRadius = UDim.new(0, 10)
MainFrameCorner.Parent = MainFrame
TitleLabel.BorderSizePixel = 0
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TitleLabel.Position = UDim2.new(0.0252632, 0, 0.052, 0)
TitleLabel.Name = "Title"
TitleLabel.TextSize = 17
TitleLabel.Size = UDim2.new(0, 200, 0, 25)
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.Text = "Sync Hub"
TitleLabel.BackgroundTransparency = 1
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = MainFrame
ProgressBarBackground.BorderSizePixel = 0
ProgressBarBackground.BackgroundColor3 = Color3.fromRGB(42, 46, 50)
ProgressBarBackground.Size = UDim2.new(0, 380, 0, 10)
ProgressBarBackground.Position = UDim2.new(0.0252631, 0, 0.732877, 0)
ProgressBarBackground.Parent = MainFrame
ProgressBar.BorderSizePixel = 0
ProgressBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ProgressBar.Size = UDim2.new(0, 120, 0, 10)
ProgressBar.Parent = ProgressBarBackground
ProgressBarCorner.Parent = ProgressBar
ProgressBarBackgroundCorner.Parent = ProgressBarBackground
DescriptionLabel.BorderSizePixel = 0
DescriptionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DescriptionLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
DescriptionLabel.Position = UDim2.new(0.0252632, 0, 0.321678, 0)
DescriptionLabel.Name = "Decs"
DescriptionLabel.Text = 'Loading Script...'
DescriptionLabel.TextSize = 35
DescriptionLabel.Size = UDim2.new(0, 200, 0, 50)
DescriptionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
DescriptionLabel.BackgroundTransparency = 1
DescriptionLabel.TextXAlignment = Enum.TextXAlignment.Left
DescriptionLabel.Parent = MainFrame
Image.BorderSizePixel = 0
Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image.Position = UDim2.new(0.715112, 0, 0, 0)
Image.Image = "rbxassetid://18818065735"
Image.Size = UDim2.new(0, 114, 0, 107)
Image.BackgroundTransparency = 1
Image.Parent = MainFrame

local TweenService = game:GetService("TweenService")
local running = true
local function StartLoad()
    local targetPosition = UDim2.new(1, 0, 0.2, 0)
    local tweenInfo = TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
    local function UpdateProgressBar()
        TweenService:Create(ProgressBar, tweenInfo, {Size = UDim2.new(1, 0, 1, 0)}):Play()
        ProgressBar.Size = UDim2.new(0, 0, 1, 0)
        wait(3)
    end
    if running then
        UpdateProgressBar()
    end
end

spawn(StartLoad)
wait(5)
running = false
ScreenGui:Destroy()
