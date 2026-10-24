# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.B1f4f4f82d57cd033223RootActualCovariantWorkKernel.Variant5f5398671e066ef11e7939a75c7e49a13abf7852d4ee81eb082986ba9479e714

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac4256d82b88cafefd09a0fc1796c99500edaffc` · SHA-256 `cd145556a60ddcba1ecc110ea1811142e8588eb53a4e1d620f9243d89ba21a5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TwistedTimeWork.Variantb1f4f4f82d57cd033223481c5c2bfaa8b695c39520e635a7be96a42227b50185","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1f4f4f82d57cd033223481c5c2bfaa8b695c39520e635a7be96a42227b50185","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.TwistedTimeWork.Variantb1f4f4f82d57cd033223481c5c2bfaa8b695c39520e635a7be96a42227b50185","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"b1f4f4f82d57cd033223481c5c2bfaa8b695c39520e635a7be96a42227b50185","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/b1f4f4f82d57cd033223-RootActualCovariantWorkKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCovariantKernel

/-!
Stable adjoint primitives for the original work act on its ordinary mixed
density, not on a substituted pure second jet. The resulting exact kernel
retains minus one quarter of the actual second correlation derivative.
No arithmetic primitive, boundary or compensated signed work is discarded.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TwistedTimeWork.Variantb1f4f4f82d57cd033223481c5c2bfaa8b695c39520e635a7be96a42227b50185

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualCovariantWorkKernel
open SourcePairing SourceActualDoubleMixedKernel SourceActualCovariantKernel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization RH16IndependentChallengeNext RH16FiveCesaro
noncomputable section

private def twistedTimeWork (A t s : ℝ) : ℝ :=
  Real.exp (t / 2) * Real.exp (-s / 2) *
    (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) -
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4)

private theorem jet_hasDerivAt (A : ℝ) (hA : 0 < A) (n : ℕ)
    (hn : n < 4) (z : ℝ) :
    HasDerivAt (iteratedDeriv n (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv (n + 1) (sourceCorrelation explicitSecondDerivative A) z) z := by
  have hc := actual_correlation_contDiff_four A hA
  simpa only [iteratedDeriv_succ] using
    ((hc.differentiable_iteratedDeriv n (by exact_mod_cast hn)) z).hasDerivAt

private theorem time_work_twisted (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    deriv (fun x => actualLogMixedDensity A x s) t - actualLogMixedDensity A t s / 2 =
      twistedTimeWork A t s := by
  have h0 := (jet_hasDerivAt A hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have h2 := (jet_hasDerivAt A hA 2 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hh := he.mul (h2.sub (h0.div_const 4))
  have hd : HasDerivAt (fun x => actualLogMixedDensity A x s)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) +
          iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 2 -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4 -
              sourceCorrelation explicitSecondDerivative A (t + s) / 8)) t := by
    convert hh using 1 <;> try rfl
    simp only [Function.comp_apply, iteratedDeriv_zero,
      id_eq, Pi.sub_apply]
    ring
  rw [hd.deriv]
  simp only [actualLogMixedDensity, twistedTimeWork]
  ring

/-- The adjoint operator on the actual original mixed work leaves its second-jet sector. -/
theorem actual_covariant_ordinary_work_kernel (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative (actualLogMixedDensity A) t s =
      Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + s) -
          iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4) := by
  have h1 := (jet_hasDerivAt A hA 1 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have h3 := (jet_hasDerivAt A hA 3 (by norm_num) (t + s)).comp s
    ((hasDerivAt_id s).const_add t)
  have he := ((((hasDerivAt_id s).neg).div_const 2).exp).const_mul (Real.exp (t / 2))
  have hh := he.mul (h3.sub (h1.div_const 4))
  have hd : HasDerivAt (twistedTimeWork A t)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + s) -
          iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4 -
            iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) / 2 +
              iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 8)) s := by
    convert hh using 1 <;> try rfl
    simp only [Function.comp_apply, id_eq, Pi.sub_apply, Pi.neg_apply]
    ring
  have hf : (fun y => deriv (fun x => actualLogMixedDensity A x y) t -
      actualLogMixedDensity A t y / 2) = twistedTimeWork A t :=
    funext fun y => time_work_twisted A hA t y
  unfold covariantMixedDerivative
  rw [hf, time_work_twisted A hA t s, hd.deriv]
  unfold twistedTimeWork
  ring

/-- Its exact unconditional curvature budget retains the real exponential prefactor. -/
theorem actual_covariant_ordinary_work_abs_le (A t s : ℝ) (hA : 91 ≤ A) :
    |covariantMixedDerivative (actualLogMixedDensity A) t s| ≤
      Real.exp (t / 2) * Real.exp (-s / 2) * (67 / A ^ 4 + 5 / (4 * A ^ 2)) := by
  rw [actual_covariant_ordinary_work_kernel A (by linarith) t s, abs_mul,
    abs_of_pos (by positivity : 0 < Real.exp (t / 2) * Real.exp (-s / 2))]
  have h2 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s)| ≤
      5 / A ^ 2 := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      actualCorrelation_second_abs_le_five hA (t + s)
  have h4 := actual_correlation_iterated_fourth_abs_le_sixty_seven A (t + s) hA
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  have hd := abs_sub
    (iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A) (t + s))
    (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 4)] at hd
  convert hd.trans (add_le_add h4 (div_le_div_of_nonneg_right h2 (by norm_num))) using 1
  ring

/-- The pure fourth covariant jet must be corrected by one quarter of its second jet. -/
theorem actual_covariant_ordinary_work_eq_fourth_sub_second
    (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    covariantMixedDerivative (actualLogMixedDensity A) t s =
      covariantMixedDerivative
        (fun x y => covariantMixedDerivative (actualLogColumnSource A) x y) t s -
          covariantMixedDerivative (actualLogColumnSource A) t s / 4 := by
  rw [actual_covariant_ordinary_work_kernel A hA t s,
    actual_twice_covariant_mixed_fourth A hA t s, actual_covariant_mixed_second A hA t s]
  unfold actualCovariantJet
  ring

end
end FormalResearch.RiemannHypothesis.RootActualCovariantWorkKernel
```
