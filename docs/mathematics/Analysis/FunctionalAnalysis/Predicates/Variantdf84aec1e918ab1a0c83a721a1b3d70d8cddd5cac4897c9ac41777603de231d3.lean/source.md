# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Predicates.Variantdf84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7668c2f5aa5b8bcca6eb7825bba846fdcf7e251e` · SHA-256 `df84aec1e918ab1a0c83a721a1b3d70d8cddd5cac4897c9ac41777603de231d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Analysis.Normed.Operator.Basic
import Mathematics.SemiLocalDefect.WP1.All

/-!
# Fixed-Hilbert operator predicate primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

open scoped InnerProductSpace

abbrev HilbertEnd
    (H : Type*)
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] :=
  H →L[ℂ] H

def OperatorSelfAdjoint
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A : HilbertEnd H) :
    Prop :=
  ∀ x y,
    ⟪A x, y⟫_ℂ =
    ⟪x, A y⟫_ℂ

def OperatorIdempotent
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A : HilbertEnd H) :
    Prop :=
  A.comp A = A

def OperatorNonnegative
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A : HilbertEnd H) :
    Prop :=
  ∀ x,
    0 ≤ Complex.re ⟪x, A x⟫_ℂ

def OperatorLE
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (A B : HilbertEnd H) :
    Prop :=
  OperatorNonnegative (B - A)

end Mathematics.SemiLocalDefect.SoninCore
```
