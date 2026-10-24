# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualPeriodicTransportKernel.Variant4fbf9675584df2bd7b0c8552f645478f9e51b57d126ddeb3f167e3f243e4f368

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `647dd88bb21b857cccbb57afebb9d5c3e3bebc3c` · SHA-256 `a11c6834bf372a3fa612e25548746d0225d5bae2a76c815a523500b885553d70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPeriodicTransportJet.Variantad6002eed5b180e6161a35ed7bbc3a4ea64c9b2e20cf615c918ebb619768e74a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad6002eed5b180e6161a35ed7bbc3a4ea64c9b2e20cf615c918ebb619768e74a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualPeriodicTransportJet.Variantad6002eed5b180e6161a35ed7bbc3a4ea64c9b2e20cf615c918ebb619768e74a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ad6002eed5b180e6161a35ed7bbc3a4ea64c9b2e20cf615c918ebb619768e74a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261006T224703Z-1791326823020683000/RootActualPeriodicTransportKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import RootActualCriticalUpperColumnEstimate
import SourceFiveFullKappaShortReduction

/-!
One more genuine physical-column primitive transports the original kernel
to C4-(3/2)C3-C2/4+(3/8)C1. The lower odd jets cannot be dropped. This
leaf estimates that actual analytic kernel, without an arithmetic premise.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPeriodicTransportJet.Variantad6002eed5b180e6161a35ed7bbc3a4ea64c9b2e20cf615c918ebb619768e74a

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualPeriodicTransportKernel
open SourcePairing RootActualDoubleAdjointTransfer RootActualCovariantWorkKernel
open RootActualUpperColumnWindow ActualSupportEdgeMangoldtRow
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization RH16IndependentChallengeNext RH16FiveCesaro
noncomputable section

/-- The genuine further transport retains all four original derivative sectors. -/
def actualPeriodicTransportJet (A z : ℝ) : ℝ :=
  iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z -
    (3 / 2 : ℝ) * iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z -
      iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z / 4 +
        (3 / 8 : ℝ) * iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z

/-- The original covariant kernel and twisted trace give the exact transported jet. -/
theorem actualPeriodicTransportKernel_eq {A : ℝ} (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative (actualLogMixedDensity A) t s -
        (3 / 2 : ℝ) * actualTwistedTimeDensity A t s =
      Real.exp (t / 2) * Real.exp (-s / 2) * actualPeriodicTransportJet A (t + s) := by
  rw [actual_covariant_ordinary_work_kernel A hA t s]
  unfold actualTwistedTimeDensity actualPeriodicTransportJet
  ring

/-- The first and third jets give a genuine O(1/A) bound on the nonnegative source half. -/
theorem actualPeriodicTransportJet_abs_le {A z : ℝ} (hA : 91 ≤ A) (hz : 0 ≤ z) :
    |actualPeriodicTransportJet A z| ≤ 4 / A := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  by_cases hs : 2 * A ≤ z
  · have h0 := actualCorrelation_jet_zero_right A hA1
    unfold actualPeriodicTransportJet
    rw [h0 4 z hs, h0 3 z hs, h0 2 z hs, h0 1 z hs]
    simp only [mul_zero, sub_zero, zero_div, add_zero, abs_zero]
    positivity
  have hzs : z ≤ 2 * A := (lt_of_not_ge hs).le
  have h4 := actual_correlation_iterated_fourth_abs_le_sixty_seven A z hA
  have h3 := actual_correlation_third_edge_abs_le (z := z) hA hzs
  have h2 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z| ≤
      5 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actualCorrelation_second_abs_le_five hA z
  have h1 : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤
      5 / A ^ 2 * z := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero, abs_of_nonneg hz] using
      SourceFiveFullKappaShortReduction.actualCorrelation_first_abs_le_five hA z
  have h3' : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z| ≤
      134 / A ^ 3 := by
    calc
      _ ≤ 67 / A ^ 4 * (2 * A - z) := h3
      _ ≤ 67 / A ^ 4 * (2 * A) :=
        mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ = _ := by field_simp; ring
  have h1' : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤
      10 / A := by
    calc
      _ ≤ 5 / A ^ 2 * z := h1
      _ ≤ 5 / A ^ 2 * (2 * A) := mul_le_mul_of_nonneg_left hzs (by positivity)
      _ = _ := by field_simp; ring
  have hb : |actualPeriodicTransportJet A z| ≤
      67 / A ^ 4 + (3 / 2 : ℝ) * (134 / A ^ 3) + (5 / A ^ 2) / 4 +
        (3 / 8 : ℝ) * (10 / A) := by
    unfold actualPeriodicTransportJet
    apply (abs_add_le _ _).trans
    have hh := abs_sub
      (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z -
        (3 / 2 : ℝ) * iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z)
      (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) z / 4)
    have hg := abs_sub (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) z)
      ((3 / 2 : ℝ) * iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z)
    simp only [abs_mul, abs_div, abs_of_pos (by norm_num : 0 < (3 / 2 : ℝ)),
      abs_of_pos (by norm_num : 0 < (3 / 8 : ℝ)),
      abs_of_pos (by norm_num : 0 < (4 : ℝ))] at *
    nlinarith
  apply hb.trans
  have ha2 := mul_le_mul_of_nonneg_right hA hAp.le
  have ha3 := mul_le_mul_of_nonneg_right hA (sq_nonneg A)
  apply (le_div_iff₀ hAp).2
  field_simp
  nlinarith

/-- Its physical-column integration weight keeps the complete exponential prefactor. -/
theorem actualPeriodicWeightedTransport_abs_le {A t s : ℝ} (hA : 91 ≤ A)
    (hz : 0 ≤ t + s) :
    |Real.exp (-s) * (covariantMixedDerivative (actualLogMixedDensity A) t s -
      (3 / 2 : ℝ) * actualTwistedTimeDensity A t s)| ≤
        Real.exp (t / 2) * Real.exp (-3 * s / 2) * (4 / A) := by
  rw [actualPeriodicTransportKernel_eq (by linarith : 0 < A) t s]
  rw [abs_mul, abs_mul, abs_of_pos (Real.exp_pos _),
    abs_of_pos (by positivity : 0 < Real.exp (t / 2) * Real.exp (-s / 2))]
  calc
    _ ≤ Real.exp (-s) * (Real.exp (t / 2) * Real.exp (-s / 2) * (4 / A)) :=
      mul_le_mul_of_nonneg_left
        (mul_le_mul_of_nonneg_left (actualPeriodicTransportJet_abs_le hA hz) (by positivity))
        (Real.exp_pos _).le
    _ = _ := by
      rw [show Real.exp (-3 * s / 2) = Real.exp (-s) * Real.exp (-s / 2) by
        rw [← Real.exp_add]; congr 1; ring]
      ring

end
end FormalResearch.RiemannHypothesis.RootActualPeriodicTransportKernel
```
