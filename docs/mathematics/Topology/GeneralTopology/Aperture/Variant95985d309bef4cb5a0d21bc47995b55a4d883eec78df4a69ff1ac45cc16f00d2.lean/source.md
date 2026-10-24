# Complete source: GRWTSK.Topology.GeneralTopology.Aperture.Variant95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18bc4684ef92c03f7315fa0213327e475607e9a1` · SHA-256 `95985d309bef4cb5a0d21bc47995b55a4d883eec78df4a69ff1ac45cc16f00d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
