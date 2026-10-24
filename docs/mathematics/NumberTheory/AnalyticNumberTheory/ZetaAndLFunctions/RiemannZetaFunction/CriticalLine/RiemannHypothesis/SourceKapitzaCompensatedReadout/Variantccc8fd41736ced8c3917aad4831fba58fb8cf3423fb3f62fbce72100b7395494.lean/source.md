# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaCompensatedReadout.Variantccc8fd41736ced8c3917aad4831fba58fb8cf3423fb3f62fbce72100b7395494

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f036a3251ade74af7aaf065ba9ab87fc70580966` · SHA-256 `33a21cc97cb46fe8ecb30943a3d695321d42b4635ada5b93de8c04ec11b3abca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UnitPrefix.Variantbac803bc403bd631d74d18b35c857334861a23f1e63f31da39a0aab003b09a40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bac803bc403bd631d74d18b35c857334861a23f1e63f31da39a0aab003b09a40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.UnitPrefix.Variantbac803bc403bd631d74d18b35c857334861a23f1e63f31da39a0aab003b09a40","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bac803bc403bd631d74d18b35c857334861a23f1e63f31da39a0aab003b09a40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/post-Map285-PR450-actual-source-capture-v2-20261007T194312Z/selected-remote-blobs/FormalResearch/RiemannHypothesis/SourceKapitzaCompensatedReadout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceKapitzaReconstruction
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy

/-!
# Paid mean-one quadrature for the unchanged arithmetic source

The finite compensated sum retains every natural coefficient `Lambda(n)-1`.
Only its mean-one quadrature error is bounded here; its signed arithmetic cap
remains open. grwtsk contributors supplied the originating Kapitza direction.
OpenAI Codex supplied this independent calculation, 7 October 2026.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.UnitPrefix.Variantbac803bc403bd631d74d18b35c857334861a23f1e63f31da39a0aab003b09a40

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout

open MeasureTheory Set SourcePairing SourceKapitzaReconstruction SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent Realization CorrelationRegularity EstimateCorrelation
open EstimatePrimeSmoothDefect EstimateMertensResidual SourceFirstPrimeAbel
open scoped Interval

def unitPrefix (s : ℝ) : ℝ := ∑ _n ∈ primePowerInventory s, (1 : ℝ)

def cutoffPhase (s : ℝ) : ℝ := Real.exp s - (⌊Real.exp s⌋₊ : ℝ)

def plainSourceSum (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n)

def compensatedSourceSum (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    (ArithmeticFunction.vonMangoldt n - 1) *
      exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n)

def quadratureError (A : ℝ) : ℝ :=
  -(∫ s in 0..2 * A,
    cutoffPhase s * (Real.exp (-s / 2) * kapitzaKernel A s))

theorem cutoffPhase_bounds (s : ℝ) : 0 ≤ cutoffPhase s ∧ cutoffPhase s < 1 := by
  have hl := Nat.floor_le (Real.exp_pos s).le
  have hu := Nat.lt_floor_add_one (Real.exp s)
  unfold cutoffPhase
  constructor <;> linarith

theorem unitPrefix_eq_phase (s : ℝ) (hs : 0 ≤ s) :
    unitPrefix s = Real.exp s - 1 - cutoffPhase s := by
  have hN : 1 ≤ ⌊Real.exp s⌋₊ :=
    (Nat.one_le_floor_iff _).mpr (Real.one_le_exp hs)
  have hc : (Finset.Icc 2 ⌊Real.exp s⌋₊).card = ⌊Real.exp s⌋₊ - 1 := by
    rw [Nat.card_Icc]
    omega
  unfold unitPrefix primePowerInventory
  simp only [Finset.sum_const, nsmul_eq_mul, mul_one, hc]
  rw [Nat.cast_sub hN, Nat.cast_one]
  unfold cutoffPhase
  ring

theorem unitPrefix_mul_eq_steps (b s y : ℝ) (hs : s ≤ b) :
    unitPrefix s * y = ∑ n ∈ primePowerInventory b,
      if Real.log n ≤ s then y else 0 := by
  rw [← Finset.sum_filter, primePowerInventory_filter_log b s hs]
  unfold unitPrefix
  simp

theorem unitPrefix_mul_deriv_intervalIntegrable (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    IntervalIntegrable (fun s => unitPrefix s * deriv F s) volume 0 b := by
  have hi : IntervalIntegrable (∑ n ∈ primePowerInventory b,
      fun s : ℝ => if Real.log n ≤ s then deriv F s else 0) volume 0 b :=
    IntervalIntegrable.sum _ (fun n _ =>
      intervalIntegrable_closed_step 0 b (Real.log n) (deriv F)
        (hF.continuous_deriv_one.intervalIntegrable 0 b))
  have he : (∑ n ∈ primePowerInventory b,
      fun s : ℝ => if Real.log n ≤ s then deriv F s else 0) =
      (fun s => ∑ n ∈ primePowerInventory b,
      if Real.log n ≤ s then deriv F s else 0) := by
    ext s
    simp
  rw [he] at hi
  apply hi.congr
  intro s hs
  exact (unitPrefix_mul_eq_steps b s (deriv F s) ((uIoc_of_le hb ▸ hs).2)).symm

theorem unitPrefix_abel (b : ℝ) (hb : 0 ≤ b)
    (F : ℝ → ℝ) (hF : ContDiff ℝ 1 F) :
    (∫ s in 0..b, unitPrefix s * deriv F s) =
      ∑ n ∈ primePowerInventory b, (F b - F (Real.log n)) := by
  have ht := integral_finite_steps_deriv 0 b (primePowerInventory b)
    (fun n => Real.log n) (fun _ => (1 : ℝ))
    (fun n hn => mangoldtInventory_log_bounds b n hn) F hF
  have he : (∫ s in 0..b, unitPrefix s * deriv F s) =
      ∫ s in 0..b, ∑ n ∈ primePowerInventory b,
        (1 : ℝ) * (if Real.log n ≤ s then deriv F s else 0) := by
    apply intervalIntegral.integral_congr
    intro s hs
    simpa using unitPrefix_mul_eq_steps b s (deriv F s) ((uIcc_of_le hb ▸ hs).2)
  simpa only [one_mul] using he.trans ht

theorem plainSourceSum_eq_moment_add_error (A : ℝ) (hA : 1 ≤ A) :
    plainSourceSum A = criticalContinuousMoment A + quadratureError A := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hc : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hp
  have hf : ContDiff ℝ 1 F := exponentialTest_contDiff C hc
  have hu : F (2 * A) = 0 := by
    dsimp [F, exponentialTest, C]
    rw [sourceCorrelation_upper_endpoint A hp, mul_zero]
  have hz : F 0 = 1 := by
    simp [F, exponentialTest, C, actual_correlation_at_zero A hA]
  have hfd : deriv F = fun s => -Real.exp (-s / 2) * kapitzaKernel A s := by
    ext s
    rw [exponentialTest_deriv C hc]
    dsimp [kapitzaKernel, C]
    ring
  have hweight : (fun s => (Real.exp s - 1) * deriv F s) =
      fun s => -kapitzaWeight A s - deriv F s := by
    ext s
    rw [hfd]
    have he : Real.exp s * Real.exp (-s / 2) = Real.exp (s / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    calc
      _ = -(Real.exp s * Real.exp (-s / 2)) * kapitzaKernel A s +
          Real.exp (-s / 2) * kapitzaKernel A s := by ring
      _ = _ := by rw [he]; unfold kapitzaWeight; ring
  have hi := unitPrefix_mul_deriv_intervalIntegrable (2 * A) (by linarith) F hf
  have hd := hf.continuous_deriv_one.intervalIntegrable (μ := volume) 0 (2 * A)
  have hw := (kapitzaWeight_continuous A hp).intervalIntegrable (μ := volume) 0 (2 * A)
  have hx : IntervalIntegrable (fun s => (Real.exp s - 1) * deriv F s)
      volume 0 (2 * A) := by
    rw [hweight]
    exact hw.neg.sub hd
  have hphase : IntervalIntegrable (fun s => cutoffPhase s * deriv F s)
      volume 0 (2 * A) := by
    apply (hx.sub hi).congr
    intro s hs
    have hs0 : 0 ≤ s := (uIoc_of_le (by linarith : 0 ≤ 2 * A) ▸ hs).1.le
    dsimp only
    rw [unitPrefix_eq_phase s hs0]
    ring
  have hint : (∫ s in 0..2 * A, unitPrefix s * deriv F s) =
      (∫ s in 0..2 * A, (Real.exp s - 1) * deriv F s) -
        ∫ s in 0..2 * A, cutoffPhase s * deriv F s := by
    rw [← intervalIntegral.integral_sub hx hphase]
    apply intervalIntegral.integral_congr
    intro s hs
    dsimp only
    rw [unitPrefix_eq_phase s ((uIcc_of_le (by linarith : 0 ≤ 2 * A) ▸ hs).1)]
    ring
  have hparts := intervalIntegral.integral_deriv_eq_sub
    (fun s _ => hf.differentiable (by norm_num) s) hd
  rw [hu, hz] at hparts
  have hab := unitPrefix_abel (2 * A) (by linarith) F hf
  rw [hu] at hab
  simp only [zero_sub] at hab
  rw [Finset.sum_neg_distrib] at hab
  have hsum : (∑ n ∈ primePowerInventory (2 * A), F (Real.log n)) = plainSourceSum A := rfl
  have hsub := intervalIntegral.integral_sub hw.neg hd
  simp only [Pi.neg_apply] at hsub
  rw [hsum, hint, hweight, hsub,
    intervalIntegral.integral_neg, hparts] at hab
  have he : (∫ s in 0..2 * A, cutoffPhase s * deriv F s) = quadratureError A := by
    rw [hfd]
    unfold quadratureError
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro s _
    ring
  rw [he] at hab
  change -kernelMomentZero A - (0 - 1) - quadratureError A = -plainSourceSum A at hab
  rw [kernelMomentZero_eq A hA] at hab
  linarith

theorem mertensResidual_eq_compensated_add_moment_error (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = compensatedSourceSum A + criticalContinuousMoment A +
      quadratureError A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  have hs : closedPrimeMoment A = compensatedSourceSum A + plainSourceSum A := by
    unfold closedPrimeMoment compensatedSourceSum plainSourceSum
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [hs, plainSourceSum_eq_moment_add_error A hA]
  ring

theorem nonaffineWork_eq_compensated_sub_trend_add_error (A : ℝ) (hA : 1 ≤ A) :
    nonaffineWork A = compensatedSourceSum A - 1 - trendValue A + quadratureError A := by
  have hr := mertensResidual_eq_affine_nonaffine A hA
  rw [mertensResidual_eq_compensated_add_moment_error A hA] at hr
  linarith

theorem quadratureError_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |quadratureError A| ≤ 1 + 10 / A := by
  have hp : 0 < A := by linarith
  have hcoef : 0 ≤ (1 / 2 : ℝ) + 5 / A := by positivity
  have hk (s : ℝ) : |kapitzaKernel A s| ≤ (1 / 2 : ℝ) + 5 / A := by
    have hc := actual_correlation_abs_le_one A s hA
    have hd := SourceCorrelationEnergy.sourceCorrelation_deriv_abs_le_five_div hA s
    have ht := abs_sub
      (sourceCorrelation explicitSecondDerivative A s / 2)
      (deriv (sourceCorrelation explicitSecondDerivative A) s)
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at ht
    unfold kapitzaKernel
    linarith
  have hg : IntervalIntegrable
      (fun s : ℝ => ((1 / 2 : ℝ) + 5 / A) * Real.exp (-s / 2)) volume 0 (2 * A) :=
    (by fun_prop : Continuous (fun s : ℝ =>
      ((1 / 2 : ℝ) + 5 / A) * Real.exp (-s / 2))).intervalIntegrable 0 (2 * A)
  have hn := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun s => cutoffPhase s * (Real.exp (-s / 2) * kapitzaKernel A s))
    (by linarith : (0 : ℝ) ≤ 2 * A)
    (Filter.Eventually.of_forall (fun s _ => ?_)) hg
  · have hi : (∫ s in 0..2 * A, Real.exp (-s / 2)) ≤ 2 := by
      have hd (s : ℝ) : HasDerivAt (fun t : ℝ => -2 * Real.exp (-t / 2))
          (Real.exp (-s / 2)) s := by
        exact ((((hasDerivAt_id s).neg.div_const 2).exp).const_mul (-2)).congr_deriv
          (by dsimp; ring_nf)
      rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun s _ => hd s)
        ((by fun_prop : Continuous (fun s : ℝ => Real.exp (-s / 2))).intervalIntegrable
          0 (2 * A))]
      simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
      nlinarith [Real.exp_pos (-(2 * A) / 2)]
    rw [intervalIntegral.integral_const_mul] at hn
    simp only [Real.norm_eq_abs] at hn
    unfold quadratureError
    rw [abs_neg]
    calc
      _ ≤ ((1 / 2 : ℝ) + 5 / A) * (∫ s in 0..2 * A, Real.exp (-s / 2)) := hn
      _ ≤ ((1 / 2 : ℝ) + 5 / A) * 2 := mul_le_mul_of_nonneg_left hi hcoef
      _ = 1 + 10 / A := by ring
  · simp only [Real.norm_eq_abs, abs_mul, abs_of_nonneg (cutoffPhase_bounds s).1,
      abs_of_pos (Real.exp_pos _)]
    have hb : cutoffPhase s ≤ 1 := (cutoffPhase_bounds s).2.le
    calc
      _ ≤ 1 * (Real.exp (-s / 2) * ((1 / 2 : ℝ) + 5 / A)) :=
        mul_le_mul hb (mul_le_mul_of_nonneg_left (hk s) (Real.exp_pos _).le)
          (mul_nonneg (Real.exp_pos _).le (abs_nonneg _)) (by norm_num)
      _ = _ := by ring

theorem mertensResidual_le_of_compensated_cap (R A B : ℝ)
    (hR : 1 ≤ R) (hRA : R ≤ A) (hS : compensatedSourceSum A ≤ B) :
    mertensResidual A ≤ B - 1 + continuousDefect R + 10 / R := by
  have hA : 1 ≤ A := hR.trans hRA
  have hR0 : 0 < R := by linarith
  have hq := (abs_le.mp (quadratureError_abs_le A hA)).2
  have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
  have hi := one_add_continuous_eq_defect A hA
  have hr : 10 / A ≤ 10 / R :=
    div_le_div_of_nonneg_left (by norm_num) hR0 hRA
  rw [mertensResidual_eq_compensated_add_moment_error A hA]
  linarith

end FormalResearch.RiemannHypothesis.SourceKapitzaCompensatedReadout
```
