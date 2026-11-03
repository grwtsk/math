/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicDistanceFibers

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Finite reciprocal-square summation with endpoint retained.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteReciprocalSquareTail

theorem reciprocal_square_step (x : ℝ) (hx : 0<x) :
    1/(x+1)^2 ≤ 1/x-1/(x+1) := by
  have hp : 0<x*(x+1) := by positivity
  have hd : x*(x+1)≤(x+1)^2 := by nlinarith
  have he : 1/(x*(x+1))=1/x-1/(x+1) := by
    have hn : x≠0 := ne_of_gt hx
    have hn1 : x+1≠0 := by positivity
    field_simp
    <;> ring
  rw [← he]
  exact one_div_le_one_div_of_le hp hd

theorem finite_reciprocal_square_tail (x : ℝ) (hx : 0<x) (m : ℕ) :
    (∑ k ∈ Finset.range m, 1/(x+(k : ℝ)+1)^2) ≤ 1/x-1/(x+(m : ℝ)) := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [Finset.sum_range_succ]
    have hs := reciprocal_square_step (x+(m : ℝ)) (by positivity)
    convert add_le_add ih hs using 1 <;> push_cast <;> ring

theorem finite_integer_reciprocal_square_tail (L m : ℕ) (hL : 0<L) :
    (∑ k ∈ Finset.range m, 1/((L+k+1 : ℕ) : ℝ)^2) ≤
      1/(L : ℝ)-1/((L+m : ℕ) : ℝ) := by
  simpa only [Nat.cast_add,Nat.cast_one] using
    finite_reciprocal_square_tail (L : ℝ) (by exact_mod_cast hL) m

/- Taking m=H-L with L≤H preserves 1/L-1/H. The cyclic distance-fiber
sum and single Nyquist correction still need source assembly. Uniform
actual arithmetic variation and physical mass premises remain unsupplied. -/
end GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteReciprocalSquareTail
