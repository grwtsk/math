# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Ceb98b3d10eb4e947ac3ActualLowerTraceArithmeticExpansion.Variant8739dd9be8bbd0032d363fce33074a015f73a30a8b33f4248a013037bda02a97

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d4b903ac1363645998f72d4247f072494ca4759` · SHA-256 `f184a21677bc0c3d58341cabb780eb4d9bc97b9442bd8d44bc92d00996f4b419`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLowerColumnPrimeTest.Variantceb98b3d10eb4e947ac3f3b881ef708e2f5487baa0dd4ffb2638889b8e50a136","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ceb98b3d10eb4e947ac3f3b881ef708e2f5487baa0dd4ffb2638889b8e50a136","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualLowerColumnPrimeTest.Variantceb98b3d10eb4e947ac3f3b881ef708e2f5487baa0dd4ffb2638889b8e50a136","mathematical_subject":"Analysis.Calculus","original_sha256":"ceb98b3d10eb4e947ac3f3b881ef708e2f5487baa0dd4ffb2638889b8e50a136","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/ceb98b3d10eb4e947ac3-ActualLowerTraceArithmeticExpansion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualDoubleAdjointTransfer
import SourceActualAdjointColumnTrace

/-!
Expose the actual lower-column trace through its closed long Mangoldt half row.
Every prime power, natural upper cutoff, terminal column prefix, continuous
test integral and lower error head remains. No trace or main estimate is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLowerColumnPrimeTest.Variantceb98b3d10eb4e947ac3f3b881ef708e2f5487baa0dd4ffb2638889b8e50a136

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion
open MeasureTheory Set
open scoped BigOperators Interval
open SourcePairing SourceActualAdjointAbelPrimitives SourceActualAdjointColumnTrace
open RootActualDoubleAdjointTransfer RootActualUpperTimeJets SourceActualDoubleMixedKernel
open SourceMangoldtAbel RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel
noncomputable section

/-- The actual lower-column test is an antiderivative of the original mixed section. -/
def actualLowerColumnPrimeTest (A t : ℝ) : ℝ :=
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  Real.exp (t / 2) * Real.exp (-a / 2) *
    (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + a) -
      sourceCorrelation explicitSecondDerivative A (t + a) / 2)

/-- The literal long closed Mangoldt half row at the true first strict column. -/
def actualLowerColumnHalfMangoldtRow (A : ℝ) : ℝ :=
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  ∑ n ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
    ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (Real.log n + a) -
        sourceCorrelation explicitSecondDerivative A (Real.log n + a) / 2)

/-- Continuous compensation and the genuine lower error head stay in the bracket. -/
def actualLowerColumnMangoldtBracket (A : ℝ) : ℝ :=
  actualLowerColumnHalfMangoldtRow A -
    Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualLowerColumnPrimeTest A t) +
    Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) *
      actualLowerColumnPrimeTest A (actualTimeLower A) *
        mangoldtLogError (actualTimeLower A)

private theorem actual_orders {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ actualTimeLower A ∧
      actualTimeLower A ≤ Real.log (sourceKernelCutoff A : ℝ) := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA
  exact ⟨Real.log_nonneg (by exact_mod_cast vaughanCutoff_pos A hA),
    Real.log_le_log hU hUN⟩

private theorem jet_hasDerivAt {A : ℝ} (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  simpa only [iteratedDeriv_succ] using
    (((actual_correlation_contDiff_four A hA).differentiable_iteratedDeriv n
      (by exact_mod_cast hn)) z).hasDerivAt

private theorem jet_contDiff_one {A : ℝ} (hA : 0 < A) (n : ℕ) (hn : n ≤ 3) :
    ContDiff ℝ 1 (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A)) := by
  rw [iteratedDeriv_eq_iterate]
  exact ContDiff.iterate_deriv' 1 n ((actual_correlation_contDiff_four A hA).of_le
    (by exact_mod_cast (by omega : 1 + n ≤ 4)))

/-- Genuine differentiation of the actual source, retaining its exponential factor. -/
theorem actualLowerColumnPrimeTest_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (actualLowerColumnPrimeTest A)
      (actualLogMixedDensity A t (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) t := by
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  have h0 := (jet_hasDerivAt hA 0 (by norm_num) (t + a)).comp t
    ((hasDerivAt_id t).add_const a)
  have h1 := (jet_hasDerivAt hA 1 (by norm_num) (t + a)).comp t
    ((hasDerivAt_id t).add_const a)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-a / 2))
  convert he.mul (h1.sub (h0.div_const 2)) using 1 <;> try rfl
  simp only [actualLogMixedDensity, Function.comp_apply, iteratedDeriv_zero, id_eq,
    Pi.sub_apply, mul_one]
  dsimp only [a]
  ring

private theorem actualLowerColumnPrimeTest_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (actualLowerColumnPrimeTest A) := by
  have h0 := jet_contDiff_one hA 0 (by norm_num)
  have h1 := jet_contDiff_one hA 1 (by norm_num)
  simp only [iteratedDeriv_zero] at h0
  unfold actualLowerColumnPrimeTest
  fun_prop

/-- The true upper time boundary kills both source jets in this test. -/
theorem actualLowerColumnPrimeTest_at_upper {A : ℝ} (hA : 1 ≤ A) :
    actualLowerColumnPrimeTest A (Real.log (sourceKernelCutoff A : ℝ)) = 0 := by
  have h0 := actualUpperTimeJet_zero A hA ⟨0, by norm_num⟩
    (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) le_rfl
  have h1 := actualUpperTimeJet_zero A hA ⟨1, by norm_num⟩
    (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) le_rfl
  simp only [iteratedDeriv_zero] at h0
  simp only [actualLowerColumnPrimeTest, h0, h1, zero_div, sub_zero, mul_zero]

/-- The genuine closed window has the full long half row with its actual column factor. -/
theorem actualLowerColumnPrimeWindow_eq_halfRow {A : ℝ} (hA : 1 ≤ A) :
    mangoldtLogWindow (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ))
      (actualLowerColumnPrimeTest A) =
      (1 / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ)) *
        actualLowerColumnHalfMangoldtRow A := by
  obtain ⟨hl, hb⟩ := actual_orders hA
  have hU : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hN : 0 < (sourceKernelCutoff A : ℝ) :=
    hU.trans_le (by exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A hA)
  have hUa : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  have he : Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) =
      1 / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    rw [show -Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2 =
        -(Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) by ring,
      Real.exp_neg, Real.exp_half, Real.exp_log hUa, one_div]
  rw [mangoldtLogWindow_eq_interval_sum _ _ hl hb]
  simp only [actualTimeLower, Real.exp_log hU, Real.exp_log hN, Nat.floor_natCast]
  unfold actualLowerColumnHalfMangoldtRow
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by
    have := (Finset.mem_Ioc.mp hn).1
    exact_mod_cast (show 0 < n by omega)
  have hs : Real.sqrt (n : ℝ) ≠ 0 := Real.sqrt_ne_zero'.mpr hn0
  simp only [actualLowerColumnPrimeTest, Real.exp_half, Real.exp_log hn0, he]
  field_simp
  rw [Real.sq_sqrt hn0.le]

/-- Actual closed Abel and the actual anchored primitive give the entire time factor. -/
theorem actualLowerColumnTimeFactor_eq_closed_window {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
      actualAdjointTimePrimitive A 0 t * actualTwistedTimeDensity A t
        (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) =
      mangoldtLogWindow (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ))
        (actualLowerColumnPrimeTest A) -
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualLowerColumnPrimeTest A t) +
      actualLowerColumnPrimeTest A (actualTimeLower A) *
        mangoldtLogError (actualTimeLower A) := by
  obtain ⟨hl, hb⟩ := actual_orders hA
  have hp : 0 < A := by linarith
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  have h0 := jet_contDiff_one hp 0 (by norm_num)
  have h2 := jet_contDiff_one hp 2 (by norm_num)
  simp only [iteratedDeriv_zero] at h0
  have hH : ContDiff ℝ 1 (fun t => actualLogMixedDensity A t a) := by
    unfold actualLogMixedDensity
    fun_prop
  have ht := actual_time_covariant_abel A 0 (Real.log (sourceKernelCutoff A : ℝ))
    hb (fun t => actualLogMixedDensity A t a) hH
  simp only [sub_zero, actualMixedDensity_upperTime_zero A hA a le_rfl, mul_zero,
    zero_sub, actualTwistedTimeDensity_eq_time_deriv hp] at ht
  have hd : deriv (actualLowerColumnPrimeTest A) =
      fun t => actualLogMixedDensity A t a := by
    funext t
    exact (actualLowerColumnPrimeTest_hasDerivAt hp t).deriv
  have ha := mangoldtLogWindow_sub_integral (actualTimeLower A)
    (Real.log (sourceKernelCutoff A : ℝ)) hl hb (actualLowerColumnPrimeTest A)
    (actualLowerColumnPrimeTest_contDiff hp)
  rw [actualLowerColumnPrimeTest_at_upper hA, zero_mul, zero_sub, hd, ht] at ha
  dsimp only [a] at ha
  linarith

/-- The lower trace is the exact product of both actual critical-half inventories. -/
theorem actualAdjointLowerColumnTrace_eq_half_inventory_product {A : ℝ} (hA : 1 ≤ A) :
    actualAdjointLowerColumnTrace A =
      -2 * (actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A) *
        actualLowerColumnMangoldtBracket A := by
  have hUa : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  have hs : Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) ≠ 0 :=
    Real.sqrt_ne_zero'.mpr hUa
  unfold actualAdjointLowerColumnTrace
  rw [actualAdjointColumnPrimitive_at_lower_closed_inventory hA,
    actualLowerColumnTimeFactor_eq_closed_window hA,
    actualLowerColumnPrimeWindow_eq_halfRow hA]
  unfold actualLowerColumnMangoldtBracket
  field_simp

end
end FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion
```
