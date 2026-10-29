-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.KernelIntegrand.Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.KernelIntegrand.Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228","mathematical_subject":"Analysis.Integration","original_sha256":"02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/RiemannHypothesis/Laplace/Kernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.Algebra
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
# B3.3 analytic support-radius kernel

This module discharges the two exact `J_k` obligations frozen in the first
B3.3 checkpoint.

For `Re w > 0`, the genuine improper integral of `A^k exp(-wA)` on
`(1,∞)` is proved integrable and equal to the source's exact finite formula.
For every `w ≠ 0`, the same finite formula is proved equal to its principal
part `k! / w^(k+1)` minus the entire finite-interval remainder on `[0,1]`.

The punctured cleared limit is therefore exactly `k!`.  No infinite zero-sum
interchange or meromorphic continuation of that sum is used here.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.KernelIntegrand.Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Laplace.Kernel

open MeasureTheory Set Filter
open scoped Topology
open Algebra

noncomputable section

/-- The actual complex polynomial-exponential integrand. -/
def kernelIntegrand (k : ℕ) (w : ℂ) (A : ℝ) : ℂ :=
  (A : ℂ) ^ k * Complex.exp (-w * A)

/-- On the positive half-line its norm is the real exponential-decay majorant. -/
lemma norm_kernelIntegrand
    (k : ℕ) (w : ℂ) (A : ℝ) (hA : 0 ≤ A) :
    ‖kernelIntegrand k w A‖ =
      A ^ k * Real.exp (-w.re * A) := by
  simp [kernelIntegrand, norm_pow, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg hA, Complex.norm_exp]

/-- Genuine half-line integrability, reduced to the real Gamma majorant. -/
lemma kernelIntegrand_integrable
    (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    IntegrableOn (kernelIntegrand k w) (Ioi 1) := by
  have hr := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := (k : ℝ)) (p := (1 : ℝ))
    (by have := Nat.cast_nonneg (α := ℝ) k; linarith)
    zero_lt_one hw
  simp only [Real.rpow_natCast, Real.rpow_one] at hr
  refine (integrable_norm_iff ?_).mp ?_
  · apply Continuous.aestronglyMeasurable
    unfold kernelIntegrand
    fun_prop
  · exact (hr.mono_set (Ioi_subset_Ioi (by norm_num))).congr_fun
      (fun A hA ↦
        (norm_kernelIntegrand k w A (zero_lt_one.trans hA).le).symm)
      measurableSet_Ioi

/-- The polynomial-exponential boundary term vanishes at infinity. -/
lemma kernelIntegrand_tendsto
    (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    Tendsto (kernelIntegrand k w) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  have hr :=
    tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero
      (k : ℝ) w.re hw
  simp only [Real.rpow_natCast] at hr
  apply hr.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with A hA
  exact (norm_kernelIntegrand k w A hA).symm

/-- Derivative recurrence with the complex parameter fixed. -/
lemma kernelIntegrand_deriv
    (k : ℕ) (w : ℂ) (A : ℝ) :
    HasDerivAt (kernelIntegrand (k + 1) w)
      (((k + 1 : ℕ) : ℂ) * kernelIntegrand k w A -
        w * kernelIntegrand (k + 1) w A) A := by
  have hd :=
    ((Complex.ofRealCLM.hasDerivAt (x := A)).pow (k + 1)).mul
      (((Complex.ofRealCLM.hasDerivAt (x := A)).const_mul (-w)).cexp)
  apply hd.congr_deriv
  simp only [kernelIntegrand, Nat.add_sub_cancel,
    Complex.ofRealCLM_apply, Complex.ofReal_one, mul_one, Pi.pow_apply]
  ring

/-- Integration by parts on the unbounded interval. -/
lemma integral_recurrence
    (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi (1 : ℝ), kernelIntegrand (k + 1) w A) =
      (Complex.exp (-w) +
        ((k + 1 : ℕ) : ℂ) *
          ∫ A in Ioi (1 : ℝ), kernelIntegrand k w A) / w := by
  have h := integral_Ioi_of_hasDerivAt_of_tendsto'
    (a := (1 : ℝ))
    (fun A _ ↦ kernelIntegrand_deriv k w A)
    (((kernelIntegrand_integrable k w hw).const_mul _).sub
      ((kernelIntegrand_integrable (k + 1) w hw).const_mul _))
    (kernelIntegrand_tendsto (k + 1) w hw)
  rw [integral_sub
      ((kernelIntegrand_integrable k w hw).const_mul _)
      ((kernelIntegrand_integrable (k + 1) w hw).const_mul _),
    integral_const_mul, integral_const_mul] at h
  have hw0 : w ≠ 0 := by
    intro he
    simp [he] at hw
  simp only [kernelIntegrand, Complex.ofReal_one, one_pow, mul_one,
    one_mul, zero_sub] at h
  apply (eq_div_iff hw0).mpr
  dsimp only [kernelIntegrand]
  linear_combination -h

/-- Recursive polynomial numerator of the exact tail kernel. -/
def kernelNumerator : ℕ → ℂ → ℂ
  | 0, _ => 1
  | k + 1, w => w ^ (k + 1) + (k + 1 : ℕ) * kernelNumerator k w

/-- Recursive rational-exponential continuation. -/
def laplaceKernel (k : ℕ) (w : ℂ) : ℂ :=
  Complex.exp (-w) * kernelNumerator k w / w ^ (k + 1)

lemma laplaceKernel_zero (w : ℂ) :
    laplaceKernel 0 w = Complex.exp (-w) / w := by
  simp [laplaceKernel, kernelNumerator]

lemma laplaceKernel_succ
    (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    laplaceKernel (k + 1) w =
      (Complex.exp (-w) + (k + 1 : ℕ) * laplaceKernel k w) / w := by
  simp only [laplaceKernel, kernelNumerator]
  rw [pow_succ w (k + 1)]
  field_simp

/-- The recursive continuation is the genuine tail integral on `Re w > 0`. -/
lemma integral_eq_laplaceKernel
    (k : ℕ) (w : ℂ) (hw : 0 < w.re) :
    (∫ A in Ioi (1 : ℝ), kernelIntegrand k w A) =
      laplaceKernel k w := by
  have hw0 : w ≠ 0 := by
    intro he
    simp [he] at hw
  induction k with
  | zero =>
      simp only [laplaceKernel_zero, kernelIntegrand, pow_zero, one_mul]
      simpa only [mul_one, Complex.ofReal_one, neg_div_neg_eq,
        neg_neg] using
        integral_exp_mul_complex_Ioi
          (a := -w) (by simpa using hw) 1
  | succ k ih =>
      rw [integral_recurrence k w hw, ih,
        laplaceKernel_succ k w hw0]

/-- The recursive numerator is the exact factorial polynomial. -/
lemma kernelNumerator_eq_sum
    (k : ℕ) (w : ℂ) :
    kernelNumerator k w =
      ∑ j ∈ Finset.range (k + 1),
        (k.factorial : ℂ) / j.factorial * w ^ j := by
  induction k with
  | zero =>
      simp [kernelNumerator]
  | succ k ih =>
      rw [Finset.sum_range_succ,
        div_self
          (show (((k + 1).factorial : ℕ) : ℂ) ≠ 0 by
            exact_mod_cast Nat.factorial_ne_zero (k + 1)),
        one_mul, kernelNumerator, ih, Finset.mul_sum, add_comm]
      congr 1
      apply Finset.sum_congr rfl
      intro j _
      rw [Nat.factorial_succ, Nat.cast_mul]
      ring

/-- Closed finite formula before reversing the finite range. -/
lemma laplaceKernel_eq_sum
    (k : ℕ) (w : ℂ) :
    laplaceKernel k w =
      Complex.exp (-w) *
        (∑ j ∈ Finset.range (k + 1),
          (k.factorial : ℂ) / j.factorial * w ^ j) /
        w ^ (k + 1) := by
  rw [laplaceKernel, kernelNumerator_eq_sum]

/-- Reversing the finite factorial polynomial produces the source's
descending-factorial numerator. -/
lemma kernelNumerator_eq_source_sum
    (k : ℕ) (w : ℂ) :
    kernelNumerator k w =
      ∑ j ∈ Finset.range (k + 1),
        (k.factorial : ℂ) / (k - j).factorial * w ^ (k - j) := by
  rw [kernelNumerator_eq_sum]
  simpa using
    (Finset.sum_range_reflect
      (fun j ↦ (k.factorial : ℂ) / j.factorial * w ^ j)
      (k + 1)).symm

/-- The recursive kernel is exactly the source syntax frozen in `Algebra.J`. -/
theorem laplaceKernel_eq_J
    (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    laplaceKernel k w = J k w := by
  rw [laplaceKernel, kernelNumerator_eq_source_sum, J,
    mul_div_assoc, Finset.sum_div]
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  have hjle : j ≤ k := by
    have hjlt : j < k + 1 := Finset.mem_range.mp hj
    omega
  have hfac : ((Nat.factorial (k - j) : ℕ) : ℂ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero (k - j)
  field_simp [hw, hfac]
  rw [← pow_add]
  have hexp : k - j + (j + 1) = k + 1 := by omega
  rw [hexp]
  ring

/-- First analytic B3.3 checkpoint: the exact source `J_k` is the genuine
half-line integral throughout its convergence half-plane. -/
theorem j_integral_obligation : JIntegralObligation := by
  intro k w hw
  have hw0 : w ≠ 0 := by
    intro he
    simp [he] at hw
  refine ⟨?_, ?_⟩
  · simpa only [kernelIntegrand] using
      kernelIntegrand_integrable k w hw
  · calc
      JIntegral k w =
          (∫ A in Ioi (1 : ℝ), kernelIntegrand k w A) := by
            rfl
      _ = laplaceKernel k w :=
        integral_eq_laplaceKernel k w hw
      _ = J k w :=
        laplaceKernel_eq_J k w hw0

/-- The finite head integral on `[0,1]`. -/
def headIntegral (k : ℕ) (w : ℂ) : ℂ :=
  ∫ A in (0 : ℝ)..1, kernelIntegrand k w A

lemma headIntegral_zero
    (w : ℂ) (hw : w ≠ 0) :
    headIntegral 0 w =
      (1 - Complex.exp (-w)) / w := by
  unfold headIntegral kernelIntegrand
  simp only [pow_zero, one_mul]
  rw [integral_exp_mul_complex (c := -w) (neg_ne_zero.mpr hw)]
  simp only [Complex.ofReal_one, Complex.ofReal_zero, mul_one, mul_zero,
    Complex.exp_zero]
  field_simp [hw]
  ring

/-- Finite-interval integration by parts gives the same recurrence, now without
any half-plane hypothesis. -/
lemma headIntegral_succ
    (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    headIntegral (k + 1) w =
      (((k + 1 : ℕ) : ℂ) * headIntegral k w -
        Complex.exp (-w)) / w := by
  have hk : IntervalIntegrable (kernelIntegrand k w) volume 0 1 := by
    apply Continuous.intervalIntegrable
    unfold kernelIntegrand
    fun_prop
  have hks : IntervalIntegrable (kernelIntegrand (k + 1) w) volume 0 1 := by
    apply Continuous.intervalIntegrable
    unfold kernelIntegrand
    fun_prop
  have hder :
      IntervalIntegrable
        (fun A : ℝ ↦
          ((k + 1 : ℕ) : ℂ) * kernelIntegrand k w A -
            w * kernelIntegrand (k + 1) w A)
        volume 0 1 :=
    (hk.const_mul _).sub (hks.const_mul _)
  have hc : Continuous (kernelIntegrand (k + 1) w) := by
    unfold kernelIntegrand
    fun_prop
  have h :=
    intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le
      (f := kernelIntegrand (k + 1) w)
      (by norm_num : (0 : ℝ) ≤ 1)
      hc.continuousOn
      (fun A _ ↦ kernelIntegrand_deriv k w A)
      hder
  rw [intervalIntegral.integral_sub
      (hk.const_mul _) (hks.const_mul _),
    intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul] at h
  have h' :
      ((k + 1 : ℕ) : ℂ) * headIntegral k w -
          w * headIntegral (k + 1) w =
        Complex.exp (-w) := by
    simpa [headIntegral, kernelIntegrand] using h
  apply (eq_div_iff hw).mpr
  linear_combination -h'

/-- Principal part minus the finite head integral. -/
def regularKernel (k : ℕ) (w : ℂ) : ℂ :=
  (Nat.factorial k : ℂ) / w ^ (k + 1) - headIntegral k w

lemma regularKernel_zero
    (w : ℂ) (hw : w ≠ 0) :
    regularKernel 0 w = laplaceKernel 0 w := by
  rw [regularKernel, headIntegral_zero w hw, laplaceKernel_zero]
  norm_num [pow_one]
  field_simp [hw]
  ring

lemma regularKernel_succ
    (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    regularKernel (k + 1) w =
      (Complex.exp (-w) +
        (k + 1 : ℕ) * regularKernel k w) / w := by
  rw [regularKernel, regularKernel, headIntegral_succ k w hw,
    Nat.factorial_succ, pow_succ]
  push_cast
  field_simp [hw]
  ring

/-- The finite-interval regular-part expression equals the same continued
kernel for every nonzero complex argument. -/
lemma regularKernel_eq_laplaceKernel
    (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    regularKernel k w = laplaceKernel k w := by
  induction k with
  | zero =>
      exact regularKernel_zero w hw
  | succ k ih =>
      rw [regularKernel_succ k w hw, ih,
        laplaceKernel_succ k w hw]

/-- Set-integral syntax used in RH-0010 equation (19) agrees with the finite
interval integral above. -/
lemma setIntegral_Icc_eq_headIntegral
    (k : ℕ) (w : ℂ) :
    (∫ A : ℝ in Icc 0 1,
      (A : ℂ) ^ k * Complex.exp (-w * (A : ℂ))) =
      headIntegral k w := by
  rw [MeasureTheory.integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le
      (by norm_num : (0 : ℝ) ≤ 1)]
  rfl

/-- Second analytic B3.3 checkpoint: exact equation-(19) regular-part identity
for every `w ≠ 0`. -/
theorem j_regular_part_obligation : JRegularPartObligation := by
  intro k w hw
  rw [← laplaceKernel_eq_J k w hw,
    ← regularKernel_eq_laplaceKernel k w hw]
  unfold regularKernel
  rw [setIntegral_Icc_eq_headIntegral]

/-- The numerator is entire. -/
lemma kernelNumerator_analytic
    (k : ℕ) (w : ℂ) :
    AnalyticAt ℂ (kernelNumerator k) w := by
  induction k with
  | zero =>
      exact analyticAt_const
  | succ k ih =>
      exact (analyticAt_id.pow _).add
        (analyticAt_const.mul ih)

/-- A single continued kernel is analytic away from zero. -/
lemma laplaceKernel_analytic
    (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    AnalyticAt ℂ (laplaceKernel k) w := by
  exact ((analyticAt_id.neg.cexp).mul
    (kernelNumerator_analytic k w)).div
      (analyticAt_id.pow _) (pow_ne_zero _ hw)

lemma kernelNumerator_at_zero
    (k : ℕ) :
    kernelNumerator k 0 = k.factorial := by
  induction k with
  | zero =>
      simp [kernelNumerator]
  | succ k ih =>
      simp [kernelNumerator, ih, Nat.factorial_succ]

lemma laplaceKernel_cleared
    (k : ℕ) (w : ℂ) (hw : w ≠ 0) :
    w ^ (k + 1) * laplaceKernel k w =
      Complex.exp (-w) * kernelNumerator k w := by
  dsimp only [laplaceKernel]
  field_simp

/-- Exact highest-pole coefficient of the single source kernel. -/
lemma laplaceKernel_cleared_tendsto
    (k : ℕ) :
    Tendsto
      (fun w : ℂ ↦ w ^ (k + 1) * laplaceKernel k w)
      (𝓝[≠] 0) (𝓝 k.factorial) := by
  have hc :
      ContinuousAt
        (fun w : ℂ ↦ Complex.exp (-w) * kernelNumerator k w) 0 :=
    (Complex.continuous_exp.continuousAt.comp
      continuousAt_id.neg).mul
      (kernelNumerator_analytic k 0).continuousAt
  have h :=
    hc.tendsto.mono_left
      (nhdsWithin_le_nhds (s := {0}ᶜ))
  simp only [neg_zero, Complex.exp_zero, one_mul,
    kernelNumerator_at_zero] at h
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with w hw
  exact (laplaceKernel_cleared k w hw).symm

/-- Source-syntax principal-part statement: after clearing order `k+1`,
`J_k` tends to the nonzero coefficient `k!`. -/
theorem J_cleared_tendsto
    (k : ℕ) :
    Tendsto
      (fun w : ℂ ↦ w ^ (k + 1) * J k w)
      (𝓝[≠] 0) (𝓝 k.factorial) := by
  apply (laplaceKernel_cleared_tendsto k).congr'
  filter_upwards [self_mem_nhdsWithin] with w hw
  rw [laplaceKernel_eq_J k w hw]

/-- The two exact obligations introduced in PR #93 are now discharged. -/
theorem kernel_checkpoint : KernelCheckpoint :=
  ⟨j_integral_obligation, j_regular_part_obligation⟩

end
end FormalResearch.RiemannHypothesis.Laplace.Kernel
