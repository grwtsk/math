/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Basic.Complex.Basic
import Mathlib.Tactic

/-! Finite Frobenius bounds for the imaginary part in a Schur basis. -/
namespace GRWTSK.XiNewmanPencilMetric

theorem diagonal_cost (z : ℂ) :
    Complex.normSq (z-(star z)) / 4 = z.im^2 := by
  simp [Complex.normSq_apply, pow_two]
  ring

/-- Every diagonal contribution survives in the full squared Hilbert-Schmidt norm. -/
theorem frobenius_lower {ι : Type*} [Fintype ι] [DecidableEq ι] (b : ι → ι → ℂ) :
    (∑ i, (b i i).im^2) ≤ ∑ i, ∑ j, Complex.normSq (b i j-star (b j i))/4 := by
  apply Finset.sum_le_sum
  intro i _
  rw [← diagonal_cost (b i i)]
  exact Finset.single_le_sum (f := fun j => Complex.normSq (b i j-star (b j i))/4)
    (fun j _ => div_nonneg (Complex.normSq_nonneg _) (by norm_num))
    (Finset.mem_univ i)

theorem triangular_pair_cost (z : ℂ) :
    Complex.normSq (z-star (0:ℂ))/4 + Complex.normSq (0-star z)/4 =
    Complex.normSq z/2 := by
  simp [Complex.normSq_apply]
  ring

theorem quartet_trace_gap (a b : ℝ) :
    2*a^2 - ((a^2-b^2)+(a^2-(-b)^2)) = 2*b^2 := by ring

end GRWTSK.XiNewmanPencilMetric
