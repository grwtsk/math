# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointRecursion.Variantf1e0b764079f35971481fb312ba478cb707b739fac695b17db5930a5dd06ee12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec964e9ae81d3ca40708dc5d995e098523ec9bf7` · SHA-256 `f1e0b764079f35971481fb312ba478cb707b739fac695b17db5930a5dd06ee12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.Status

/-!
# Folder.GrandChallenge.BSD.FixedPointRecursion

Radiation role: research-boundary
BinaryMatrix spine: This module records BSD fixed-point recursion scaffolding.
Ontology: bsd_fixed_point_recursion
Pivot role: arithmetic
Zero typology: l-function
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace BSD

structure EllipticCurveObject where
  label : String

structure FixedPointRecursion where
  curve : EllipticCurveObject
  recursionLabel : String
  fixedPointData : Type
  recursionCompatible : Prop
  recursionCompatible_certified : recursionCompatible

theorem fixed_point_recursion_compatible_if_supplied
    (R : FixedPointRecursion) :
    R.recursionCompatible :=
  R.recursionCompatible_certified

end BSD
end GrandChallenge
end Folder
```
