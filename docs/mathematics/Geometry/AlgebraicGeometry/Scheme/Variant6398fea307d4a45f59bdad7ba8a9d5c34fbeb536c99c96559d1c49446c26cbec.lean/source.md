# Complete source: GRWTSK.Geometry.AlgebraicGeometry.Scheme.Variant6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a98e9d4ad635fcb60925916b3f89de93f33fffa` · SHA-256 `6398fea307d4a45f59bdad7ba8a9d5c34fbeb536c99c96559d1c49446c26cbec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.AlgebraicGeometry.Restrict

universe u

open AlgebraicGeometry

variable (X : Scheme.{u}) (x : X) in
/-- info: x : ↥X -/
#guard_msgs in
#check x

variable (R : CommRingCat.{u}) (x : Spec R) in
/-- info: x : ↥(Spec R) -/
#guard_msgs in
#check x

variable (X : Scheme.{u}) (U : X.Opens) (x : U.toScheme) in
/-- info: x : ↥↑U -/
#guard_msgs in
#check x

variable (X : Scheme.{u}) (U : X.Opens) (x : U) in
/-- info: x : ↥U -/
#guard_msgs in
#check x
```
