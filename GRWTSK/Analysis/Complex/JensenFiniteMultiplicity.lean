/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.JensenFormula
import Lean.Elab.Tactic.NormCast
import Mathlib.Tactic.Positivity

set_option autoImplicit false

/-!
# Finite subfamilies of the actual analytic divisor

Jensen's upstream inequality counts the integer meromorphic divisor, not an
arbitrary weighted record list. This adapter derives finite-subfamily bounds
without dropping divisor multiplicities or assuming an infinite sum converges.
The finite support of the divisor on the compact disk is used explicitly.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.JensenFiniteMultiplicity

open Set Metric MeromorphicOn
open scoped BigOperators

noncomputable section

/-- A nonnegative, finitely supported integer function dominates each finite subsum.
The support hypothesis matters: an unsupported finsum is a totalized value. -/
theorem finite_sum_le_finsum_nonneg {α : Type*} (d : α → ℤ)
    (hd : (Function.support d).Finite) (hn : ∀ a, 0 ≤ d a) (S : Finset α) :
    (∑ a ∈ S, d a) ≤ ∑ᶠ a, d a := by
  classical
  let U := S ∪ hd.toFinset
  have hs : S ⊆ U := Finset.subset_union_left
  have hu : Function.support d ⊆ (U : Set α) := by
    intro a ha
    exact Finset.mem_union_right S (hd.mem_toFinset.mpr ha)
  rw [finsum_eq_sum_of_support_subset d hu]
  exact Finset.sum_le_sum_of_subset_of_nonneg hs (fun a _ _ => hn a)

/-- Jensen controls each finite subset, not only the sum over the complete divisor.
The boundary modulus and nonzero center are quantitative source obligations. -/
theorem finite_divisor_sum_le_jensen (f : ℂ → ℂ) (c : ℂ) (r R M : ℝ)
    (hr : 0 < r) (hrR : r < R) (hM : 1 ≤ M)
    (hf : AnalyticOnNhd ℂ f (closedBall c R)) (hc : f c ≠ 0)
    (hbound : ∀ z ∈ sphere c R, ‖f z‖ ≤ M) (S : Finset ℂ) :
    ((∑ p ∈ S, divisor f (closedBall c r) p : ℤ) : ℝ) ≤
      Real.log (M / ‖f c‖) / Real.log (R / r) := by
  have hR : 0 < R := hr.trans hrR
  have hsmall : AnalyticOnNhd ℂ f (closedBall c r) :=
    hf.mono (closedBall_subset_closedBall hrR.le)
  have hfinite := (divisor f (closedBall c r)).finiteSupport (isCompact_closedBall c r)
  have hsub := finite_sum_le_finsum_nonneg (divisor f (closedBall c r))
    hfinite (fun z => hsmall.divisor_nonneg z) S
  have hj := AnalyticOnNhd.sum_divisor_le (c := c) (r := r) (R := R) (M := M)
    (f := f) (by simpa [abs_of_pos hr] using hr)
    (by simpa [abs_of_pos hr, abs_of_pos hR] using hrR) hM
    (by simpa [abs_of_pos hR] using hf) hc
    (by simpa [abs_of_pos hR] using hbound)
  have hcast : ((∑ p ∈ S, divisor f (closedBall c r) p : ℤ) : ℝ) ≤
      ((∑ᶠ p, divisor f (closedBall c r) p : ℤ) : ℝ) := by exact_mod_cast hsub
  rw [abs_of_pos hr] at hj
  exact hcast.trans hj

/-- The particular nested disks used for the local three-unit height band. -/
theorem log_six_fifths_pos : 0 < Real.log (6 / 5 : ℝ) :=
  Real.log_pos (by norm_num)

end
end GRWTSK.Analysis.Complex.JensenFiniteMultiplicity
