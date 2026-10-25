# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GramField.Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b7d2d9d1962d976ced21ee487b72e1077e80bb0` · SHA-256 `4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.CohomologyLattice
import Mathlib.Tactic

/-!
# Positive Gram forms

The cohomology Gram form controls Voronoi rounding.  A fiber Gram field
controls geometric lengths in a local system.  They share this positive-form
interface but remain distinct values with distinct certificates.
-/

namespace Mathematics.Homology

universe u

noncomputable section

/-- A symmetric positive-definite real bilinear form. -/
structure PositiveGram (V : Type u)
    [AddCommGroup V] [Module ℝ V] where
  form : V →ₗ[ℝ] V →ₗ[ℝ] ℝ
  symmetric : ∀ left right, form left right = form right left
  positive : ∀ vector, vector ≠ 0 → 0 < form vector vector
  certificate : ObjectAddress

namespace PositiveGram

variable
    {V : Type u} [AddCommGroup V] [Module ℝ V]
    (gram : PositiveGram V)

def squaredNorm (vector : V) : ℝ :=
  gram.form vector vector

def squaredDistance (left right : V) : ℝ :=
  gram.squaredNorm (left - right)

theorem squaredNorm_nonnegative (vector : V) :
    0 ≤ gram.squaredNorm vector := by
  by_cases zero : vector = 0
  · simp [squaredNorm, zero]
  · exact le_of_lt (gram.positive vector zero)

theorem squaredNorm_eq_zero_iff (vector : V) :
    gram.squaredNorm vector = 0 ↔ vector = 0 := by
  constructor
  · intro zeroNorm
    by_contra nonzero
    have positive : 0 < gram.squaredNorm vector := by
      simpa [squaredNorm] using gram.positive vector nonzero
    exact (ne_of_gt positive) zeroNorm
  · rintro rfl
    simp [squaredNorm]

theorem squaredDistance_self (vector : V) :
    gram.squaredDistance vector vector = 0 := by
  simp [squaredDistance, squaredNorm]

end PositiveGram

/-- A base-indexed metric field; no topology or torsion is inferred from it. -/
abbrev GramField
    (Base : Type*) (Fiber : Type u)
    [AddCommGroup Fiber] [Module ℝ Fiber] :=
  Base → PositiveGram Fiber

end

end Mathematics.Homology
```
