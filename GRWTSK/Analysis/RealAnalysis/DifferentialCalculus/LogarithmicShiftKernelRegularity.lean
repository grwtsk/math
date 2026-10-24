/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.CompactProfileSupportEdge
import GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds
import Mathlib.Tactic

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Proposed sharpness of a full logarithmic-shift kernel

Near the support edge of label2, every higher label is silent
by its literal support inequality. Both actual kernel derivatives and the full
closed integer inventory are retained. The support-edge correlation adapter has
scoped compiler and independent acceptance. Current verification of the kernel adapter is recorded separately.
No arithmetic budget or native Gram equality is supplied by this obstruction.
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.LogarithmicShiftKernelRegularity

open MeasureTheory Set Filter
open scoped Topology ContDiff
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticSupplier SourceRegularity SourceHigherRegularity KernelDerivativePrice
open GRWTSK.Analysis.Convolution.CompactProfileSupportEdge
open GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction

noncomputable section

def edgeReading (A : ℝ) : ℝ := 2 * A - Real.log 2

theorem edge_reading_strict_inside {A : ℝ} (hA : 1 ≤ A) :
    2 * Real.log A < edgeReading A ∧ edgeReading A < 2 * A := by
  have positive : 0 < A := by linarith
  have radiusLog := Real.log_le_sub_one_of_pos positive
  have twoLog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  have twoLogPositive : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  dsimp [edgeReading]
  constructor <;> linarith

theorem two_mem_inventory {A : ℝ} (hA : 1 ≤ A) :
    2 ∈ Finset.Icc 2 (integerCutoff A) := by
  have exponential := Real.add_one_le_exp (2 * A)
  have two : (2 : ℝ) ≤ Real.exp (2 * A) := by linarith
  refine Finset.mem_Icc.mpr ⟨le_rfl, ?_⟩
  exact (Nat.le_floor_iff (Real.exp_pos _).le).mpr two

theorem correlation_third_zero_of_two_mul_lt {A t : ℝ} (hA : 0 < A)
    (beyond : 2 * A < t) : deriv (deriv (deriv (correlation A))) t = 0 := by
  have third := (correlation_eventually_zero hA beyond).deriv.deriv.deriv
  simpa only [deriv_const', deriv_const] using third.self_of_nhds

theorem correlation_fourth_zero_of_two_mul_le {A t : ℝ} (hA : 0 < A)
    (beyond : 2 * A ≤ t) : deriv (deriv (deriv (deriv (correlation A)))) t = 0 := by
  rw [fourth_correlation_eq_autocorrelation hA]
  exact actual_second_autocorrelation_zero_ge_two_scale A t beyond

theorem kernel_second_deriv_eventually_eq_label_two {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (polarityKernel A)) =ᶠ[𝓝 (edgeReading A)]
      (fun t : ℝ ↦ Real.log 2 / Real.sqrt 2 *
        (deriv (deriv (deriv (deriv (correlation A)))) (t + Real.log 2) -
          (1 / 2 : ℝ) * deriv (deriv (deriv (correlation A))) (t + Real.log 2))) := by
  have positive : 0 < A := by linarith
  have gap : Real.log (2 : ℝ) < Real.log (3 : ℝ) :=
    Real.log_lt_log (by norm_num) (by norm_num)
  have neighborhood : ∀ᶠ t in 𝓝 (edgeReading A), 2 * A - Real.log 3 < t :=
    Ioi_mem_nhds (by dsimp [edgeReading]; linarith)
  rw [polarity_kernel_second_deriv_eq positive]
  filter_upwards [neighborhood] with t after
  rw [Finset.sum_eq_single 2]
  · simp only [Nat.cast_ofNat]
  · intro k retained different
    have lower := (Finset.mem_Icc.mp retained).1
    have three : 3 ≤ k := by omega
    have castBound : (3 : ℝ) ≤ k := by exact_mod_cast three
    have logBound : Real.log (3 : ℝ) ≤ Real.log (k : ℝ) :=
      Real.log_le_log (by norm_num) castBound
    have beyond : 2 * A < t + Real.log (k : ℝ) := by linarith
    rw [correlation_fourth_zero_of_two_mul_le positive beyond.le,
      correlation_third_zero_of_two_mul_lt positive beyond]
    ring
  · exact fun absent ↦ False.elim (absent (two_mem_inventory hA))

theorem kernel_second_deriv_not_differentiable_at_edge {A : ℝ} (hA : 1 ≤ A) :
    ¬ DifferentiableAt ℝ (deriv (deriv (polarityKernel A))) (edgeReading A) := by
  intro differentiable
  have positive : 0 < A := by linarith
  let w : ℝ := Real.log 2 / Real.sqrt 2
  have weightPositive : 0 < w := div_pos (Real.log_pos (by norm_num))
    (Real.sqrt_pos.mpr (by norm_num))
  let R := deriv (deriv (deriv (deriv (correlation A))))
  let Q := deriv (deriv (deriv (correlation A)))
  let E := fun t : ℝ ↦ w * (R (t + Real.log 2) - (1 / 2 : ℝ) * Q (t + Real.log 2))
  have localIdentity : E =ᶠ[𝓝 (edgeReading A)] deriv (deriv (polarityKernel A)) :=
    (kernel_second_deriv_eventually_eq_label_two hA).symm
  have localDifferentiable : DifferentiableAt ℝ E (edgeReading A) :=
    differentiable.congr_of_eventuallyEq localIdentity
  have shiftDifferentiable : DifferentiableAt ℝ (fun z : ℝ ↦ z - Real.log 2) (2 * A) :=
    differentiableAt_id.sub_const _
  have pulled : DifferentiableAt ℝ (fun z : ℝ ↦ E (z - Real.log 2) / w) (2 * A) :=
    (localDifferentiable.comp (2 * A) shiftDifferentiable).div_const w
  have rescaling : (fun z : ℝ ↦ E (z - Real.log 2) / w) =
      fun z : ℝ ↦ R z - (1 / 2 : ℝ) * Q z := by
    funext z
    dsimp [E]
    simp only [sub_add_cancel, mul_div_cancel_left₀ _ (ne_of_gt weightPositive)]
  rw [rescaling] at pulled
  have thirdDifferentiable : DifferentiableAt ℝ Q (2 * A) :=
    (correlation_third_contDiff_one positive).differentiable one_ne_zero (2 * A)
  have cancellation :
      (fun z : ℝ ↦ (R z - (1 / 2 : ℝ) * Q z) + (1 / 2 : ℝ) * Q z) = R := by
    funext z
    ring
  have recovered := pulled.add (thirdDifferentiable.const_mul (1 / 2 : ℝ))
  change DifferentiableAt ℝ
    (fun z : ℝ ↦ (R z - (1 / 2 : ℝ) * Q z) + (1 / 2 : ℝ) * Q z) (2 * A) at recovered
  rw [cancellation] at recovered
  exact fourth_correlation_not_differentiable_at_two_scale positive recovered

theorem polarity_kernel_not_contDiff_three {A : ℝ} (hA : 1 ≤ A) :
    ¬ ContDiff ℝ 3 (polarityKernel A) := by
  intro three
  have second : ContDiff ℝ 1 (deriv (deriv (polarityKernel A))) := three.deriv'.deriv'
  exact kernel_second_deriv_not_differentiable_at_edge hA
    (second.differentiable one_ne_zero (edgeReading A))

end

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.LogarithmicShiftKernelRegularity
