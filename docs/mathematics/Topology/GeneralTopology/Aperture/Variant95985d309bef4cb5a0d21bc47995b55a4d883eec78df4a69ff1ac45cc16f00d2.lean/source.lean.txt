import Color.Centroid

namespace Color

namespace Aperture

def closed : Byte := 0

def fullyOpen : Byte := 255

def isClosed (value : Byte) : Prop := value = closed

def isOpen (value : Byte) : Prop := value = fullyOpen

theorem closed_eq_zero : closed = 0 := rfl

theorem fullyOpen_eq_255 : fullyOpen = 255 := rfl

end Aperture

end Color
