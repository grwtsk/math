-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LogVaughanCutoffLeEarlyWindow.Variant8a5f4e1c0d108635fb462190fa1d8df37fac60a31bd7f7714e9bd1008ab14dba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8a5f4e1c0d108635fb462190fa1d8df37fac60a31bd7f7714e9bd1008ab14dba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LogVaughanCutoffLeEarlyWindow.Variant8a5f4e1c0d108635fb462190fa1d8df37fac60a31bd7f7714e9bd1008ab14dba","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"8a5f4e1c0d108635fb462190fa1d8df37fac60a31bd7f7714e9bd1008ab14dba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/8a5f4e1c0d108635fb46-SourceStrictComplementaryEarlyBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceStrictComplementaryLocalization
import SourceCriticalWeightMassObstruction

/-!
The exact early floor contribution admits a negative quantitative budget once
the actual kernel's proved early positive window covers log(floor(A^2)).
The complete signed complementary tail remains. This is not an upper witness
for that tail, Omega or RH16.
Research direction: grwtsk contributors. Formal adapter: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LogVaughanCutoffLeEarlyWindow.Variant8a5f4e1c0d108635fb462190fa1d8df37fac60a31bd7f7714e9bd1008ab14dba

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceStrictComplementaryEarlyBudget

open MeasureTheory Set
open SourcePairing SourcePositiveSampling
open SourceStrictComplementaryAbel SourceStrictComplementaryLocalization
open SourceFullDivisorLogInventory
open SourceCriticalWeightMassObstruction
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource

noncomputable section

/-- The whole moving short window eventually lies in the actual positive critical-weight prefix. -/
theorem log_vaughanCutoff_le_early_window {A : ℝ} (hA : 25600 ≤ A) :
    Real.log (vaughanCutoff A : ℝ) ≤ A / 40 := by
  have hp : 0 < A := by linarith
  have hU : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := (actual_cutoff_order A (by linarith)).1
  have hfloor : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hl := Real.log_le_log (by linarith : (0 : ℝ) < (vaughanCutoff A : ℝ)) hfloor
  rw [Real.log_pow] at hl
  have hlog := Real.log_le_rpow_div hp.le (by norm_num : (0 : ℝ) < 1 / 2)
  rw [← Real.sqrt_eq_rpow] at hlog
  norm_num at hl hlog
  have hs := Real.sqrt_le_sqrt hA
  norm_num at hs
  have hsq := Real.sq_sqrt hp.le
  have hh : 4 * Real.sqrt A ≤ A / 40 := by
    nlinarith [mul_nonneg (Real.sqrt_nonneg A) (by linarith : 0 ≤ Real.sqrt A - 160)]
  linarith

/-- Actual positive lower source factor at the far end of the early integer window. -/
def earlySourceFactor (A : ℝ) : ℝ :=
  Real.exp (-Real.log (vaughanCutoff A : ℝ) / 2) / (vaughanCutoff A : ℝ)

theorem earlySourceFactor_pos {A : ℝ} (hA : 1 ≤ A) : 0 < earlySourceFactor A := by
  exact div_pos (Real.exp_pos _) (by
    have := (actual_cutoff_order A hA).1
    linarith)

/-- Genuine actual derivative bound, retaining the source C/2-C' orientation. -/
theorem early_floor_derivative_le {A x : ℝ} (hA : 25600 ≤ A)
    (hx : x ∈ Icc (1 : ℝ) (vaughanCutoff A : ℝ)) :
    (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x ≤
      -(5 / 16 : ℝ) * earlySourceFactor A * (x - 1) := by
  have hp : 0 < A := by linarith
  have hx0 : 0 < x := by linarith [hx.1]
  have hl0 : 0 ≤ Real.log x := Real.log_nonneg hx.1
  have hlU : Real.log x ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_le_log hx0 hx.2
  have hl : Real.log x ≤ A / 40 := hlU.trans (log_vaughanCutoff_le_early_window hA)
  have hw := criticalWeight_early_lower (by linarith : 40 ≤ A) hl0 hl
  have hD : 0 ≤ earlySourceFactor A := (earlySourceFactor_pos (by linarith : 1 ≤ A)).le
  have he : Real.exp (-Real.log (vaughanCutoff A : ℝ) / 2) ≤ Real.exp (-Real.log x / 2) :=
    Real.exp_le_exp.mpr (by linarith)
  have hfac : earlySourceFactor A ≤ Real.exp (-Real.log x / 2) / x := by
    unfold earlySourceFactor
    exact (div_le_div_of_nonneg_left (Real.exp_pos _).le hx0 hx.2).trans
      (div_le_div_of_nonneg_right he hx0.le)
  have hf : x - 1 ≤ (⌊x⌋₊ : ℝ) := (Nat.sub_one_lt_floor x).le
  have hm1 : (x - 1) * earlySourceFactor A ≤
      (⌊x⌋₊ : ℝ) * (Real.exp (-Real.log x / 2) / x) :=
    mul_le_mul hf hfac hD (by positivity)
  have hm2 : (x - 1) * earlySourceFactor A * (5 / 16 : ℝ) ≤
      ((⌊x⌋₊ : ℝ) * (Real.exp (-Real.log x / 2) / x)) * criticalWeight A (Real.log x) :=
    mul_le_mul hm1 hw (by norm_num) (by positivity)
  rw [(plainProfile_hasDerivAt hp 1 hx0).deriv]
  simp only [Real.log_one, zero_add]
  unfold criticalWeight at hm2
  nlinarith

/-- Genuine early derivative integrability; it follows from the full actual cumulative adapter. -/
theorem early_floor_derivative_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntegrableOn (fun x => (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x)
      (Icc (1 : ℝ) (vaughanCutoff A : ℝ)) := by
  have hUX := (actual_cutoff_order A hA).2
  have hi := ((complementary_derivative_integrable_Icc hA).mono_set
    (Icc_subset_Icc le_rfl hUX)).neg
  apply hi.congr_fun
  · intro x hx
    change -(deriv (plainProfile A 1) x * complementaryCumulative (vaughanCutoff A) x) = _
    rw [complementaryCumulative_eq_neg_floor_of_le hx.2]
    ring
  · exact measurableSet_Icc

/-- Quantitative negative early budget, before any estimate of the complementary signed tail. -/
theorem complementaryEarlyBaseline_le_negative_budget {A : ℝ} (hA : 25600 ≤ A) :
    complementaryEarlyBaseline A ≤
      -(5 / 32 : ℝ) * earlySourceFactor A * ((vaughanCutoff A : ℝ) - 1) ^ 2 := by
  have hA1 : 1 ≤ A := by linarith
  have hU := (actual_cutoff_order A hA1).1
  have hi : IntervalIntegrable
      (fun x => (⌊x⌋₊ : ℝ) * deriv (plainProfile A 1) x) volume 1 (vaughanCutoff A : ℝ) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hU).mpr
      ((early_floor_derivative_integrable hA1).mono_set Ioc_subset_Icc_self)
  have hc : Continuous (fun x : ℝ => -(5 / 16 : ℝ) * earlySourceFactor A * (x - 1)) := by
    fun_prop
  have hm := intervalIntegral.integral_mono_on hU hi (hc.intervalIntegrable _ _)
    (fun x hx => early_floor_derivative_le hA hx)
  have hd (x : ℝ) : HasDerivAt
      (fun u : ℝ => -(5 / 32 : ℝ) * earlySourceFactor A * (u - 1) ^ 2)
      (-(5 / 16 : ℝ) * earlySourceFactor A * (x - 1)) x :=
    ((((hasDerivAt_id x).sub_const 1).pow 2).const_mul
      (-(5 / 32 : ℝ) * earlySourceFactor A)).congr_deriv (by simp only [id_eq]; ring)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => hd x) (hc.intervalIntegrable 1 (vaughanCutoff A : ℝ))
  simp only [sub_self, zero_pow (by decide : 2 ≠ 0), mul_zero, sub_zero] at he
  rw [he] at hm
  unfold complementaryEarlyBaseline
  rw [← intervalIntegral.integral_of_le hU]
  exact hm

/-- The actual full source lies below its signed tail minus the explicit known early budget. -/
theorem literal_L_sub_plain_le_tail_minus_early_budget {A : ℝ} (hA : 25600 ≤ A) :
    literalOmegaComplementarySector A - ContinuousResearch.ActualIntegerInventory.plainInventory A ≤
      complementarySignedTail A -
        (5 / 32 : ℝ) * earlySourceFactor A * ((vaughanCutoff A : ℝ) - 1) ^ 2 := by
  rw [literal_L_sub_plain_eq_early_add_tail A (by linarith : 1 ≤ A)]
  have he := complementaryEarlyBaseline_le_negative_budget hA
  linarith

/-- The actual floor endpoint gives a concrete reciprocal A³ lower factor. -/
theorem earlySourceFactor_lower {A : ℝ} (hA : 1 ≤ A) :
    1 / A ^ 3 ≤ earlySourceFactor A := by
  have hp : 0 < A := by linarith
  have hU : (0 : ℝ) < (vaughanCutoff A : ℝ) := by
    have := (actual_cutoff_order A hA).1
    linarith
  have hfloor : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hl := Real.log_le_log hU hfloor
  rw [Real.log_pow] at hl
  norm_num at hl
  have he : 1 / A ≤ Real.exp (-Real.log (vaughanCutoff A : ℝ) / 2) := by
    have hx := Real.exp_le_exp.mpr (show -Real.log A ≤
      -Real.log (vaughanCutoff A : ℝ) / 2 by linarith)
    simpa only [Real.exp_neg, Real.exp_log hp, one_div] using hx
  unfold earlySourceFactor
  calc
    1 / A ^ 3 = (1 / A) / A ^ 2 := by field_simp
    _ ≤ (1 / A) / (vaughanCutoff A : ℝ) :=
      div_le_div_of_nonneg_left (by positivity) hU hfloor
    _ ≤ _ := div_le_div_of_nonneg_right he hU.le

/-- The genuine known early contribution decreases at least linearly in the actual scale. -/
theorem complementaryEarlyBaseline_le_neg_linear {A : ℝ} (hA : 25600 ≤ A) :
    complementaryEarlyBaseline A ≤ -(5 / 128 : ℝ) * A := by
  have hp : 0 < A := by linarith
  have he := complementaryEarlyBaseline_le_negative_budget hA
  have hD := earlySourceFactor_lower (by linarith : 1 ≤ A)
  have hfloor : A ^ 2 - 1 ≤ (vaughanCutoff A : ℝ) :=
    (Nat.sub_one_lt_floor (A ^ 2)).le
  have hhalf : A ^ 2 / 2 ≤ (vaughanCutoff A : ℝ) - 1 := by nlinarith
  have hs : A ^ 4 / 4 ≤ ((vaughanCutoff A : ℝ) - 1) ^ 2 := by
    have hm := mul_self_le_mul_self (by positivity : 0 ≤ A ^ 2 / 2) hhalf
    nlinarith
  have hm : (5 / 32 : ℝ) * (1 / A ^ 3) * (A ^ 4 / 4) ≤
      (5 / 32 : ℝ) * earlySourceFactor A * ((vaughanCutoff A : ℝ) - 1) ^ 2 :=
    mul_le_mul (mul_le_mul_of_nonneg_left hD (by norm_num)) hs
      (by positivity)
      (mul_nonneg (by norm_num) (earlySourceFactor_pos (by linarith : 1 ≤ A)).le)
  have hid : (5 / 32 : ℝ) * (1 / A ^ 3) * (A ^ 4 / 4) = (5 / 128 : ℝ) * A := by
    field_simp
    ring
  rw [hid] at hm
  linarith

/-- The complete actual L-B is at most its genuine signed tail minus 5A/128. -/
theorem literal_L_sub_plain_le_tail_sub_linear {A : ℝ} (hA : 25600 ≤ A) :
    literalOmegaComplementarySector A - ContinuousResearch.ActualIntegerInventory.plainInventory A ≤
      complementarySignedTail A - (5 / 128 : ℝ) * A := by
  rw [literal_L_sub_plain_eq_early_add_tail A (by linarith : 1 ≤ A)]
  have he := complementaryEarlyBaseline_le_neg_linear hA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceStrictComplementaryEarlyBudget
