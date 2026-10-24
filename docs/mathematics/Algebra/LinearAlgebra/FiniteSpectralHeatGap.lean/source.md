# Complete source: GRWTSK.LinearAlgebra.FiniteSpectralHeatGap

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4629f6ae40b5f5e27266fefc99dd4632419992ee` · SHA-256 `39c576343df8eb98ae2519be62adadb646ee0805674ffebc6c91ee08dc632654`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.FiniteSpectralHeat

namespace GRWTSK.LinearAlgebra.FiniteSpectralHeat

open scoped BigOperators
open GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

universe u v

variable {ι : Type u} [Fintype ι]
variable {E : Type v} [AddCommGroup E] [Module ℝ E]

namespace Model

/-- A vector is supported on spectral coordinates of eigenvalue at least `γ`. -/
def SupportedAbove (M : Model ι E) (γ : ℝ) (x : E) : Prop :=
  ∀ i, M.frame x i ≠ 0 → γ ≤ M.eigenvalue i

/-- Spectral-gap damping on a vector whose nonzero coordinates lie above the declared gap. -/
theorem heat_gap_contracts
    (M : Model ι E) (x : E) {t γ : ℝ}
    (ht : 0 ≤ t) (hx : M.SupportedAbove γ x) :
    M.pairing (M.heat t x) (M.heat t x) ≤
      Real.exp (-2 * t * γ) * M.pairing x x := by
  unfold pairing dot
  rw [M.heat_coordinates]
  calc
    (∑ i,
        spectralHeat M.eigenvalue t (M.frame x) i *
          spectralHeat M.eigenvalue t (M.frame x) i) =
        ∑ i,
          Real.exp (-2 * t * M.eigenvalue i) * (M.frame x i) ^ 2 := by
      apply Finset.sum_congr rfl
      intro i _
      change
        (Real.exp (-t * M.eigenvalue i) * M.frame x i) *
            (Real.exp (-t * M.eigenvalue i) * M.frame x i) =
          Real.exp (-2 * t * M.eigenvalue i) * (M.frame x i) ^ 2
      calc
        (Real.exp (-t * M.eigenvalue i) * M.frame x i) *
              (Real.exp (-t * M.eigenvalue i) * M.frame x i) =
            (Real.exp (-t * M.eigenvalue i) *
              Real.exp (-t * M.eigenvalue i)) * (M.frame x i) ^ 2 := by
          ring
        _ = Real.exp
              ((-t * M.eigenvalue i) + (-t * M.eigenvalue i)) *
                (M.frame x i) ^ 2 := by
          rw [Real.exp_add]
        _ = Real.exp (-2 * t * M.eigenvalue i) * (M.frame x i) ^ 2 := by
          congr 2
          ring
    _ ≤ ∑ i, Real.exp (-2 * t * γ) * (M.frame x i) ^ 2 := by
      apply Finset.sum_le_sum
      intro i _
      by_cases hxi : M.frame x i = 0
      · simp [hxi]
      · apply mul_le_mul_of_nonneg_right
        · apply Real.exp_le_exp.mpr
          have hmul : 2 * t * γ ≤ 2 * t * M.eigenvalue i := by
            exact mul_le_mul_of_nonneg_left (hx i hxi)
              (mul_nonneg (by norm_num) ht)
          linarith
        · exact sq_nonneg (M.frame x i)
    _ = Real.exp (-2 * t * γ) *
        (∑ i, M.frame x i * M.frame x i) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      ring

/-- A vector lies in one selected spectral coordinate. -/
def IsCoordinateEigencomponent
    (M : Model ι E) (j : ι) (x : E) : Prop :=
  ∀ i, i ≠ j → M.frame x i = 0

/-- Exact heat multiplier on a single coordinate eigencomponent. -/
theorem heat_eigencomponent
    [DecidableEq ι]
    (M : Model ι E) {j : ι} {x : E}
    (hx : M.IsCoordinateEigencomponent j x) (t : ℝ) :
    M.heat t x = Real.exp (-t * M.eigenvalue j) • x := by
  apply M.frame.injective
  funext i
  rw [M.heat_coordinates]
  by_cases hij : i = j
  · subst i
    simp [spectralHeat, diagonal]
  · have hzero := hx i hij
    simp [spectralHeat, diagonal, hzero]

end Model

end GRWTSK.LinearAlgebra.FiniteSpectralHeat
```
