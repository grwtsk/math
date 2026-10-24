# Complete source: GRWTSK.LinearAlgebra.WeightedDiagonalHodge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e71d6ba814e05a4100cce158617095801174c27a` · SHA-256 `b35d294fa5fa416667ca776a3d45138e76d9f6d8d3188f19f44b909d7ba65a67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

noncomputable section

namespace GRWTSK.LinearAlgebra.WeightedDiagonalHodge

open scoped BigOperators
open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

universe u

variable {ι : Type u} [Fintype ι]

/-- Positive weighted coordinate pairing. -/
def weightedDot (w x y : ι → ℝ) : ℝ :=
  ∑ i, w i * x i * y i

/-- A strictly positive coordinate weight gives a positive-definite pairing. -/
theorem weightedDot_self_eq_zero_iff
    (w x : ι → ℝ) (hw : ∀ i, 0 < w i) :
    weightedDot w x x = 0 ↔ x = 0 := by
  constructor
  · intro h
    unfold weightedDot at h
    have hterm : ∀ i ∈ (Finset.univ : Finset ι),
        w i * x i * x i = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg (fun i _ => by
        simpa [pow_two, mul_assoc] using
          mul_nonneg (hw i).le (sq_nonneg (x i)))).mp h
    funext i
    have hi := hterm i (Finset.mem_univ i)
    have hwi : w i ≠ 0 := (hw i).ne'
    rcases mul_eq_zero.mp hi with hleft | hxi
    · rcases mul_eq_zero.mp hleft with hwi0 | hxi
      · exact False.elim (hwi hwi0)
      · exact hxi
    · exact hxi
  · intro h
    subst x
    simp [weightedDot]

/-- Weighted two-term diagonal Hodge datum.

The codifferential coefficient is selected so that it is the adjoint for weights `w₀,w₁` when
`w₀` is nonzero. -/
def weightedDiagonalHodge (w₀ w₁ a : ι → ℝ) :
    TwoTermHodgeData ℝ (ι → ℝ) (ι → ℝ) where
  delta := diagonal a
  deltaStar := diagonal fun i => a i * w₁ i / w₀ i

/-- The selected weighted codifferential is the actual adjoint. -/
theorem weighted_adjoint
    (w₀ w₁ a x y : ι → ℝ) (h₀ : ∀ i, w₀ i ≠ 0) :
    weightedDot w₁ ((weightedDiagonalHodge w₀ w₁ a).delta x) y =
      weightedDot w₀ x ((weightedDiagonalHodge w₀ w₁ a).deltaStar y) := by
  unfold weightedDot
  apply Finset.sum_congr rfl
  intro i _
  simp [weightedDiagonalHodge, diagonal]
  field_simp [h₀ i]

omit [Fintype ι] in
/-- Exact weighted degree-zero Laplacian coefficient. -/
@[simp]
theorem weighted_laplacian0_apply
    (w₀ w₁ a x : ι → ℝ) (i : ι) :
    (weightedDiagonalHodge w₀ w₁ a).laplacian0 x i =
      (a i ^ 2 * w₁ i / w₀ i) * x i := by
  change (a i * w₁ i / w₀ i) * (a i * x i) =
    (a i ^ 2 * w₁ i / w₀ i) * x i
  ring

/-- Weighted positive edge energy. -/
def energy (w₁ a x : ι → ℝ) : ℝ :=
  weightedDot w₁ (diagonal a x) (diagonal a x)

/-- Nonnegative weights give nonnegative weighted energy. -/
theorem energy_nonneg
    (w₁ a x : ι → ℝ) (hw₁ : ∀ i, 0 ≤ w₁ i) :
    0 ≤ energy w₁ a x := by
  unfold energy weightedDot
  apply Finset.sum_nonneg
  intro i _
  simpa [diagonal, pow_two, mul_assoc] using
    mul_nonneg (hw₁ i) (sq_nonneg (a i * x i))

/-- Strictly positive weights and nonzero differential coefficients give a trivial energy kernel. -/
theorem energy_eq_zero_iff
    (w₁ a x : ι → ℝ)
    (hw₁ : ∀ i, 0 < w₁ i) (ha : ∀ i, a i ≠ 0) :
    energy w₁ a x = 0 ↔ x = 0 := by
  unfold energy
  rw [weightedDot_self_eq_zero_iff w₁ (diagonal a x) hw₁]
  constructor
  · intro h
    funext i
    have hi := congrFun h i
    simp only [diagonal_apply, Pi.zero_apply] at hi
    exact (mul_eq_zero.mp hi).resolve_left (ha i)
  · intro h
    subst x
    exact (diagonal a).map_zero

end GRWTSK.LinearAlgebra.WeightedDiagonalHodge
```
