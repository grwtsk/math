# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.44e2e01ff995013eee8aSourceActualAdjointAbelPrimitives.Variant8086b21e9168d42379a98e309d3e587d272f5ca4b34ff55db70287e2b4976c56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d31f2c5844cf54b223ce90a262b822d69a748d28` · SHA-256 `fea176a451e3dc9ef59ef7413ca60c940cb105cf9f590c487aaf872f25f83797`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualTimeLower.Variant44e2e01ff995013eee8a2fb04a962acea85f4b06c347abc61876aa967ef27eff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44e2e01ff995013eee8a2fb04a962acea85f4b06c347abc61876aa967ef27eff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualTimeLower.Variant44e2e01ff995013eee8a2fb04a962acea85f4b06c347abc61876aa967ef27eff","mathematical_subject":"Analysis.Integration","original_sha256":"44e2e01ff995013eee8a2fb04a962acea85f4b06c347abc61876aa967ef27eff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/44e2e01ff995013eee8a-SourceActualAdjointAbelPrimitives.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCenteredColumnUnitRefinement
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun

/-!
The actual weighted adjoint primitives retain the literal Mangoldt error and
centered Moebius prefix. The stable time anchor is lower; the stable column
anchor is upper. Their other endpoint traces remain genuine signed integrals.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualTimeLower.Variant44e2e01ff995013eee8a2fb04a962acea85f4b06c347abc61876aa967ef27eff

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAdjointAbelPrimitives
open MeasureTheory Set Filter
open scoped BigOperators Interval
open SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering
open RH16IndependentChallengeNext
noncomputable section

/-- The original logarithmic time interval starts at the actual floor cutoff. -/
def actualTimeLower (A : ℝ) : ℝ := Real.log (vaughanCutoff A : ℝ)

/-- The original finite column window ends at the unchanged natural quotient. -/
def actualColumnUpper (A : ℝ) : ℝ :=
  Real.log ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)

/-- The actual finite centered prefix evaluated in logarithmic column coordinates. -/
def actualLogColumnPrefix (A s : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) ⌊Real.exp s⌋₊,
    centeredBeta (vaughanCutoff A) n

/-- The lower anchored adjoint of D_t-1/2, with the original arithmetic error. -/
def actualAdjointTimePrimitive (A offset t : ℝ) : ℝ :=
  Real.exp (-t / 2) *
    ∫ r in actualTimeLower A..t,
      Real.exp (r / 2) * (mangoldtLogError r - offset)

/-- The upper anchored adjoint of D_s+1/2, with the actual centered prefix. -/
def actualAdjointColumnPrimitive (A s : ℝ) : ℝ :=
  Real.exp (s / 2) *
    ∫ r in actualColumnUpper A..s,
      Real.exp (-r / 2) * actualLogColumnPrefix A r

private theorem error_intervalIntegrable (offset l b : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable (fun t => mangoldtLogError t - offset) volume l b := by
  have he : IntervalIntegrable mangoldtLogError volume l b := by
    simpa using mangoldtLogError_mul_deriv_intervalIntegrable l b hlb
      (fun t : ℝ => t) contDiff_id
  exact he.sub intervalIntegrable_const

private theorem time_weight_intervalIntegrable (offset l b : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable (fun t => Real.exp (t / 2) *
      (mangoldtLogError t - offset)) volume l b := by
  exact (error_intervalIntegrable offset l b hlb).continuousOn_mul
    (by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).continuousOn

private theorem exp_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ t in l..b, Real.exp (t / 2)) =
      2 * (Real.exp (b / 2) - Real.exp (l / 2)) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2))
      (Real.exp (t / 2)) t := by
    convert (((hasDerivAt_id t).div_const 2).exp).const_mul 2 using 1 <;> try rfl
    simp only [id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun t : ℝ => 2 * Real.exp (t / 2))).continuousOn
    (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)
  simpa only [mul_sub] using h

private theorem exp_neg_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ t in l..b, Real.exp (-t / 2)) =
      2 * (Real.exp (-l / 2) - Real.exp (-b / 2)) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => -2 * Real.exp (-t / 2))
      (Real.exp (-t / 2)) t := by
    convert (((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2) using 1 <;> try rfl
    simp only [Pi.neg_apply, id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun t : ℝ => -2 * Real.exp (-t / 2))).continuousOn
    (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).intervalIntegrable _ _)
  linarith

/-- Actual bounded error gives a bounded normalized lower time primitive. -/
theorem actualAdjointTimePrimitive_abs_le {A offset t : ℝ} (hA : 1 ≤ A)
    (ht : actualTimeLower A ≤ t) :
    |actualAdjointTimePrimitive A offset t| ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) := by
  let C : ℝ := Real.log 4 + 4 + Real.log 2 + |offset|
  have hC : 0 ≤ C := by
    dsimp [C]
    positivity
  have hl : 0 ≤ actualTimeLower A := by
    exact Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA)
  have hn : |∫ r in actualTimeLower A..t,
      Real.exp (r / 2) * (mangoldtLogError r - offset)| ≤
        C * (2 * (Real.exp (t / 2) - Real.exp (actualTimeLower A / 2))) := by
    have hi : IntervalIntegrable (fun r : ℝ => C * Real.exp (r / 2)) volume
        (actualTimeLower A) t :=
      (by fun_prop : Continuous (fun r : ℝ => C * Real.exp (r / 2))).intervalIntegrable _ _
    have hb : ∀ᵐ r, r ∈ Ioc (actualTimeLower A) t →
        ‖Real.exp (r / 2) * (mangoldtLogError r - offset)‖ ≤ C * Real.exp (r / 2) := by
      filter_upwards with r hr
      have he : |mangoldtLogError r - offset| ≤ C := by
        dsimp [C]
        nlinarith [abs_sub (mangoldtLogError r) offset,
          mangoldtLogError_abs_le r (hl.trans hr.1.le)]
      simpa only [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _), mul_comm]
        using mul_le_mul_of_nonneg_left he (Real.exp_pos (r / 2)).le
    have h := intervalIntegral.norm_integral_le_of_norm_le ht hb hi
    rw [intervalIntegral.integral_const_mul, exp_half_integral _ _ ht] at h
    simpa only [Real.norm_eq_abs] using h
  have hp : Real.exp (-t / 2) * Real.exp (t / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  unfold actualAdjointTimePrimitive
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ Real.exp (-t / 2) *
        (C * (2 * (Real.exp (t / 2) - Real.exp (actualTimeLower A / 2)))) :=
      mul_le_mul_of_nonneg_left hn (Real.exp_pos _).le
    _ ≤ Real.exp (-t / 2) * (2 * C * Real.exp (t / 2)) := by
      apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
      nlinarith [mul_nonneg hC (Real.exp_pos (actualTimeLower A / 2)).le]
    _ = 2 * C := by nlinarith [hp]

/-- The actual logarithmic column has a literal measurable finite prefix. -/
theorem actualLogColumnPrefix_measurable (A : ℝ) : Measurable (actualLogColumnPrefix A) := by
  exact (measurable_of_countable (fun k : ℕ =>
    ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n)).comp
      (Nat.measurable_floor.comp Real.measurable_exp)

/-- Its genuine cutoff bound applies at every positive log-column point. -/
theorem actualLogColumnPrefix_abs_le {A s : ℝ} (hA : 1 ≤ A)
    (hs : actualTimeLower A ≤ s) :
    |actualLogColumnPrefix A s| ≤ (vaughanCutoff A : ℝ) - 1 := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hf : vaughanCutoff A ≤ ⌊Real.exp s⌋₊ := by
    apply (Nat.le_floor_iff (Real.exp_pos s).le).2
    calc
      _ = Real.exp (actualTimeLower A) := by rw [actualTimeLower, Real.exp_log hU]
      _ ≤ Real.exp s := Real.exp_le_exp.mpr hs
  exact actualVaughanCenteredColumn_prefix_abs_le hA _ hf

private theorem column_intervalIntegrable {A l b : ℝ} (hA : 1 ≤ A)
    (hl : actualTimeLower A ≤ l) (hlb : l ≤ b) :
    IntervalIntegrable (actualLogColumnPrefix A) volume l b := by
  apply intervalIntegrable_iff.mpr
  rw [uIoc_of_le hlb]
  have hb : ∀ᵐ r ∂volume.restrict (Ioc l b),
      ‖actualLogColumnPrefix A r‖ ≤ (vaughanCutoff A : ℝ) - 1 := by
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
    simpa only [Real.norm_eq_abs] using actualLogColumnPrefix_abs_le hA (hl.trans hr.1.le)
  exact Measure.integrableOn_of_bounded (by simp)
    (actualLogColumnPrefix_measurable A).aestronglyMeasurable hb

/-- The upper column anchor controls the normalized primitive, retaining its lower trace. -/
theorem actualAdjointColumnPrimitive_abs_le {A s : ℝ} (hA : 1 ≤ A)
    (hs : actualTimeLower A ≤ s) (hsb : s ≤ actualColumnUpper A) :
    |actualAdjointColumnPrimitive A s| ≤ 2 * ((vaughanCutoff A : ℝ) - 1) := by
  let C : ℝ := (vaughanCutoff A : ℝ) - 1
  have hC : 0 ≤ C := by
    have h := vaughanCutoff_pos A hA
    have hc : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by exact_mod_cast h
    dsimp [C]
    linarith
  have hi : IntervalIntegrable (fun r : ℝ => C * Real.exp (-r / 2)) volume
      s (actualColumnUpper A) :=
    (by fun_prop : Continuous (fun r : ℝ => C * Real.exp (-r / 2))).intervalIntegrable _ _
  have hb : ∀ᵐ r, r ∈ Ioc s (actualColumnUpper A) →
      ‖Real.exp (-r / 2) * actualLogColumnPrefix A r‖ ≤ C * Real.exp (-r / 2) := by
    filter_upwards with r hr
    simpa only [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _), mul_comm]
      using mul_le_mul_of_nonneg_left (actualLogColumnPrefix_abs_le hA (hs.trans hr.1.le))
        (Real.exp_pos (-r / 2)).le
  have hn := intervalIntegral.norm_integral_le_of_norm_le hsb hb hi
  rw [intervalIntegral.integral_const_mul, exp_neg_half_integral _ _ hsb] at hn
  have hp : Real.exp (s / 2) * Real.exp (-s / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  unfold actualAdjointColumnPrimitive
  rw [intervalIntegral.integral_symm, abs_mul, abs_of_pos (Real.exp_pos _), abs_neg]
  rw [Real.norm_eq_abs] at hn
  calc
    _ ≤ Real.exp (s / 2) *
        (C * (2 * (Real.exp (-s / 2) - Real.exp (-actualColumnUpper A / 2)))) :=
      mul_le_mul_of_nonneg_left hn (Real.exp_pos _).le
    _ ≤ Real.exp (s / 2) * (2 * C * Real.exp (-s / 2)) := by
      apply mul_le_mul_of_nonneg_left _ (Real.exp_pos _).le
      nlinarith [mul_nonneg hC (Real.exp_pos (-actualColumnUpper A / 2)).le]
    _ = 2 * C := by nlinarith [hp]

/-- Lower time anchoring is exact; no upper time trace is discarded. -/
theorem actualAdjointTimePrimitive_at_lower (A offset : ℝ) :
    actualAdjointTimePrimitive A offset (actualTimeLower A) = 0 := by
  simp [actualAdjointTimePrimitive]

/-- Upper column anchoring is exact; no lower column trace is discarded. -/
theorem actualAdjointColumnPrimitive_at_upper (A : ℝ) :
    actualAdjointColumnPrimitive A (actualColumnUpper A) = 0 := by
  simp [actualAdjointColumnPrimitive]

/-- On every positive cell, the log prefix is exactly the original integer column. -/
theorem actualLogColumnPrefix_on_cell (A : ℝ) {k : ℕ} {u : ℝ}
    (hk : 1 ≤ k) (hu : u ∈ Ico (k : ℝ) ((k : ℝ) + 1)) :
    actualLogColumnPrefix A (Real.log u) =
      ∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n := by
  have hu0 : 0 < u := by
    have hk1 : (1 : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
    linarith [hu.1]
  have hf : ⌊u⌋₊ = k := (Nat.floor_eq_iff hu0.le).2 hu
  simp only [actualLogColumnPrefix, Real.exp_log hu0, hf]

/-- Genuine L1 primitives are absolutely continuous, including the arithmetic jumps. -/
theorem actualAdjointTimePrimitive_absolutelyContinuous (A offset b : ℝ)
    (hb : actualTimeLower A ≤ b) :
    AbsolutelyContinuousOnInterval (actualAdjointTimePrimitive A offset)
      (actualTimeLower A) b := by
  have hi := time_weight_intervalIntegrable offset (actualTimeLower A) b hb
  have hc : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-t / 2)) := by fun_prop
  exact hc.contDiffOn.absolutelyContinuousOnInterval.fun_mul
    (hi.absolutelyContinuousOnInterval_intervalIntegral (by simp))

/-- This AE ODE retains every closed Mangoldt atom inside the actual integral. -/
theorem actualAdjointTimePrimitive_ae_hasDerivAt (A offset b : ℝ)
    (hb : actualTimeLower A ≤ b) :
    ∀ᵐ t, t ∈ uIcc (actualTimeLower A) b →
      HasDerivAt (actualAdjointTimePrimitive A offset)
        (mangoldtLogError t - offset - actualAdjointTimePrimitive A offset t / 2) t := by
  have hi := time_weight_intervalIntegrable offset (actualTimeLower A) b hb
  filter_upwards [hi.ae_hasDerivAt_integral] with t ht hm
  have hh := ((((hasDerivAt_id t).neg).div_const 2).exp).mul
    (ht hm (actualTimeLower A) (by simp))
  convert hh using 1 <;> try rfl
  simp only [actualAdjointTimePrimitive, id_eq, Pi.neg_apply]
  have hp : Real.exp (-t / 2) * Real.exp (t / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  nlinarith [congrArg (fun x : ℝ => x * (mangoldtLogError t - offset)) hp]

/-- Actual finite prefixes give a genuine absolutely continuous upper column primitive. -/
theorem actualAdjointColumnPrimitive_absolutelyContinuous {A l : ℝ} (hA : 1 ≤ A)
    (hl : actualTimeLower A ≤ l) (hlb : l ≤ actualColumnUpper A) :
    AbsolutelyContinuousOnInterval (actualAdjointColumnPrimitive A)
      l (actualColumnUpper A) := by
  have hi : IntervalIntegrable (fun r : ℝ => Real.exp (-r / 2) *
      actualLogColumnPrefix A r) volume l (actualColumnUpper A) :=
    (column_intervalIntegrable hA hl hlb).continuousOn_mul
      (by fun_prop : Continuous (fun r : ℝ => Real.exp (-r / 2))).continuousOn
  have hc : ContDiff ℝ 1 (fun s : ℝ => Real.exp (s / 2)) := by fun_prop
  exact hc.contDiffOn.absolutelyContinuousOnInterval.fun_mul
    (hi.absolutelyContinuousOnInterval_intervalIntegral (by simp))

/-- The upper anchored column solves the opposite-sign adjoint ODE AE. -/
theorem actualAdjointColumnPrimitive_ae_hasDerivAt {A l : ℝ} (hA : 1 ≤ A)
    (hl : actualTimeLower A ≤ l) (hlb : l ≤ actualColumnUpper A) :
    ∀ᵐ s, s ∈ uIcc l (actualColumnUpper A) →
      HasDerivAt (actualAdjointColumnPrimitive A)
        (actualLogColumnPrefix A s + actualAdjointColumnPrimitive A s / 2) s := by
  have hi : IntervalIntegrable (fun r : ℝ => Real.exp (-r / 2) *
      actualLogColumnPrefix A r) volume l (actualColumnUpper A) :=
    (column_intervalIntegrable hA hl hlb).continuousOn_mul
      (by fun_prop : Continuous (fun r : ℝ => Real.exp (-r / 2))).continuousOn
  filter_upwards [hi.ae_hasDerivAt_integral] with s hs hm
  have hh := (((hasDerivAt_id s).div_const 2).exp).mul
    (hs hm (actualColumnUpper A) (by simp))
  convert hh using 1 <;> try rfl
  simp only [actualAdjointColumnPrimitive, id_eq]
  have hp : Real.exp (s / 2) * Real.exp (-s / 2) = 1 := by
    rw [← Real.exp_add]
    ring_nf
    exact Real.exp_zero
  nlinarith [congrArg (fun x : ℝ => x * actualLogColumnPrefix A s) hp]

/-- The lower time anchor leaves its actual upper trace in covariant integration by parts. -/
theorem actual_time_covariant_abel (A offset b : ℝ) (hb : actualTimeLower A ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ t in actualTimeLower A..b, (mangoldtLogError t - offset) * F t) =
      actualAdjointTimePrimitive A offset b * F b -
        ∫ t in actualTimeLower A..b,
          actualAdjointTimePrimitive A offset t * (deriv F t - F t / 2) := by
  have hP := actualAdjointTimePrimitive_absolutelyContinuous A offset b hb
  have hFc : AbsolutelyContinuousOnInterval F (actualTimeLower A) b :=
    hF.contDiffOn.absolutelyContinuousOnInterval
  have hi1 : IntervalIntegrable (fun t => (mangoldtLogError t - offset) * F t)
      volume (actualTimeLower A) b :=
    (error_intervalIntegrable offset _ _ hb).mul_continuousOn hF.continuous.continuousOn
  have hi2 : IntervalIntegrable (fun t => actualAdjointTimePrimitive A offset t *
      (deriv F t - F t / 2)) volume (actualTimeLower A) b := by
    have hc : ContinuousOn (fun t => actualAdjointTimePrimitive A offset t *
        (deriv F t - F t / 2)) (Icc (actualTimeLower A) b) := by
      simpa only [uIcc_of_le hb] using hP.continuousOn.fun_mul
        (hF.continuous_deriv_one.fun_sub (hF.continuous.div_const 2)).continuousOn
    exact hc.intervalIntegrable_of_Icc hb
  have heq : (∫ t in actualTimeLower A..b,
      deriv (actualAdjointTimePrimitive A offset) t * F t +
        actualAdjointTimePrimitive A offset t * deriv F t) =
      (∫ t in actualTimeLower A..b, (mangoldtLogError t - offset) * F t) +
        ∫ t in actualTimeLower A..b,
          actualAdjointTimePrimitive A offset t * (deriv F t - F t / 2) := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualAdjointTimePrimitive_ae_hasDerivAt A offset b hb] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv]
    ring
  have h := hP.integral_deriv_mul_eq_sub hFc
  rw [heq, actualAdjointTimePrimitive_at_lower] at h
  linarith

/-- The stable upper column anchor leaves its full actual lower trace. -/
theorem actual_column_covariant_abel {A l : ℝ} (hA : 1 ≤ A)
    (hl : actualTimeLower A ≤ l) (hlb : l ≤ actualColumnUpper A)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ s in l..actualColumnUpper A, actualLogColumnPrefix A s * F s) =
      -actualAdjointColumnPrimitive A l * F l -
        ∫ s in l..actualColumnUpper A,
          actualAdjointColumnPrimitive A s * (deriv F s + F s / 2) := by
  have hQ := actualAdjointColumnPrimitive_absolutelyContinuous hA hl hlb
  have hFc : AbsolutelyContinuousOnInterval F l (actualColumnUpper A) :=
    hF.contDiffOn.absolutelyContinuousOnInterval
  have hi1 : IntervalIntegrable (fun s => actualLogColumnPrefix A s * F s)
      volume l (actualColumnUpper A) :=
    (column_intervalIntegrable hA hl hlb).mul_continuousOn hF.continuous.continuousOn
  have hi2 : IntervalIntegrable (fun s => actualAdjointColumnPrimitive A s *
      (deriv F s + F s / 2)) volume l (actualColumnUpper A) := by
    have hc : ContinuousOn (fun s => actualAdjointColumnPrimitive A s *
        (deriv F s + F s / 2)) (Icc l (actualColumnUpper A)) := by
      simpa only [uIcc_of_le hlb] using hQ.continuousOn.fun_mul
        (hF.continuous_deriv_one.fun_add (hF.continuous.div_const 2)).continuousOn
    exact hc.intervalIntegrable_of_Icc hlb
  have heq : (∫ s in l..actualColumnUpper A,
      deriv (actualAdjointColumnPrimitive A) s * F s +
        actualAdjointColumnPrimitive A s * deriv F s) =
      (∫ s in l..actualColumnUpper A, actualLogColumnPrefix A s * F s) +
        ∫ s in l..actualColumnUpper A,
          actualAdjointColumnPrimitive A s * (deriv F s + F s / 2) := by
    rw [← intervalIntegral.integral_add hi1 hi2]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualAdjointColumnPrimitive_ae_hasDerivAt hA hl hlb] with s hs hm
    rw [(hs (uIoc_subset_uIcc hm)).deriv]
    ring
  have h := hQ.integral_deriv_mul_eq_sub hFc
  rw [heq, actualAdjointColumnPrimitive_at_upper] at h
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualAdjointAbelPrimitives
```
