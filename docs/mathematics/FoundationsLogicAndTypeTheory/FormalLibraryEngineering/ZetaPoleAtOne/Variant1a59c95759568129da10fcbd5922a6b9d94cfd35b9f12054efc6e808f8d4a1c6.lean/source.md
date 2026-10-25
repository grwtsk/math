# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZetaPoleAtOne.Variant1a59c95759568129da10fcbd5922a6b9d94cfd35b9f12054efc6e808f8d4a1c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bab1f297e89e4767d47991426125a38388a5fc5c` · SHA-256 `1a59c95759568129da10fcbd5922a6b9d94cfd35b9f12054efc6e808f8d4a1c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.ReciprocalBoundary

set_option autoImplicit false

namespace Think.Analysis

universe u

/-
Zeta pole at one.

This file records the pole-at-one input as an explicit witness over the natural
`ReciprocalBoundary` interface. It does not introduce a terminology layer and it
does not prove the external analytic theorem that the classical Riemann zeta
function has a pole at one. If such theorem authority is later imported from a
library, it should supply the `poleAtOne` field.
-/

/-- A witness that the chosen zeta object has a pole at the distinguished point `one`. -/
structure ZetaPoleAtOne (Object Point : Type u) where
  boundary : ReciprocalBoundary Object Point
  zeta : Object
  reciprocalZeta : Object
  one : Point
  reciprocalZeta_eq : reciprocalZeta = boundary.reciprocal zeta
  poleAtOne : boundary.poleAt zeta one

/-- The pole-at-one witness contains the pole predicate directly. -/
theorem zeta_pole_at_one
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    Z.boundary.poleAt Z.zeta Z.one :=
  Z.poleAtOne

/-- The pole at one gives a zero of the reciprocal zeta object at one. -/
theorem zeta_pole_at_one_gives_reciprocal_zero_at_one
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    Z.boundary.zeroAt Z.reciprocalZeta Z.one := by
  rw [Z.reciprocalZeta_eq]
  exact pole_implies_reciprocal_zero Z.boundary Z.poleAtOne

/-- Convert a pole-at-one witness into the more general reciprocal-boundary zeta package. -/
def ZetaPoleAtOne.toReciprocalBoundary
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    ZetaReciprocalBoundary Object Point :=
  { boundary := Z.boundary
    zeta := Z.zeta
    reciprocalZeta := Z.reciprocalZeta
    one := Z.one
    reciprocalZeta_eq := Z.reciprocalZeta_eq }

/-- The conversion preserves the reciprocal-zero consequence. -/
theorem zeta_pole_at_one_conversion_gives_reciprocal_zero_at_one
    {Object Point : Type u}
    (Z : ZetaPoleAtOne Object Point) :
    (Z.toReciprocalBoundary).boundary.zeroAt
      (Z.toReciprocalBoundary).reciprocalZeta
      (Z.toReciprocalBoundary).one :=
  zeta_pole_at_one_implies_reciprocal_zero_at_one
    Z.toReciprocalBoundary Z.poleAtOne

end Think.Analysis
```
