# Complete source: GRWTSK.Analysis.MeasureTheory.SourceActualXiMellinAtOne.Variant864e097f2a013019a794165b2afe6fbfc7264d28f5b129d9ea4f67ed9d327a3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7471dede26af37c37c67acc23955e9820542024d` · SHA-256 `48f537a25b0c505ccbba861d536a4d7fa1fd81d4dffa1c9458dfb2103508d837`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.ActualXiComplexMellinTailSevenAtOneEqPhysical.Variant1dbd7fc9075b64ec93f7c781c17d405dfa6b232c55f5a60e435a9968ba004f29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1dbd7fc9075b64ec93f7c781c17d405dfa6b232c55f5a60e435a9968ba004f29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ActualXiComplexMellinTailSevenAtOneEqPhysical.Variant1dbd7fc9075b64ec93f7c781c17d405dfa6b232c55f5a60e435a9968ba004f29","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"1dbd7fc9075b64ec93f7c781c17d405dfa6b232c55f5a60e435a9968ba004f29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/dependencies/owner-source-captures/SourceActualXiMellinAtOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiPntAtOne
import SourceActualXiSevenPoleCancellation
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
Genuine actual Xi inverse-square L1 upgrades the initial-domain pole-one
formula to the ordinary signed integral at one. Every actual closed-seven
and gamma contribution remains; no critical-axis assertion is made.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.MeasureTheory.ActualXiComplexMellinTailSevenAtOneEqPhysical.Variant1dbd7fc9075b64ec93f7c781c17d405dfa6b232c55f5a60e435a9968ba004f29

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualXiMellinAtOne

open MeasureTheory Set Filter Complex
open scoped Topology
open RH16ActualPsiNegativeBlock SourceActualXiMellinSeven SourceActualXiPntAtOne
open SourceActualXiSevenPoleCancellation

noncomputable section

/-- The actual Mellin integral at one is the genuine signed physical integral. -/
theorem actualXiComplexMellinTailSeven_at_one_eq_physical :
    actualXiComplexMellinTailSeven 1 =
      ((∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2 : ℝ) : ℂ) := by
  unfold actualXiComplexMellinTailSeven
  rw [← integral_complex_ofReal]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro y _
  simp only [show -((1 : ℂ) + 1) = -(2 : ℂ) by norm_num, cpow_neg, cpow_two,
    div_eq_mul_inv, ofReal_mul, ofReal_inv, ofReal_pow]

/-- Actual full L1 justifies dominated convergence from the genuine initial domain. -/
theorem actualXiComplexMellinTailSeven_tendsto_one :
    Tendsto (fun s : ℝ => actualXiComplexMellinTailSeven (s : ℂ)) (𝓝[>] 1)
      (𝓝 ((∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2 : ℝ) : ℂ)) := by
  have hmeas : ∀ᶠ s : ℝ in 𝓝[>] 1, AEStronglyMeasurable
      (fun y : ℝ => (shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-((s : ℂ) + 1)))
        (volume.restrict (Ioi 7)) := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    exact (actualXiComplexMellinTailSeven_integrableOn
      (by simpa only [ofReal_re] using (show 1 < s from hs))).aestronglyMeasurable
  have hbound : ∀ᶠ s : ℝ in 𝓝[>] 1, ∀ᵐ y ∂volume.restrict (Ioi (7 : ℝ)),
      ‖(shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-((s : ℂ) + 1))‖ ≤
        |shiftedActualChebyshev y / y ^ 2| := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
    have hy0 : 0 < y := by linarith [show (7 : ℝ) < y from hy]
    have hy1 : 1 ≤ y := by linarith [show (7 : ℝ) < y from hy]
    rw [norm_mul, norm_real, Real.norm_eq_abs, norm_cpow_eq_rpow_re_of_pos hy0]
    simp only [neg_re, add_re, ofReal_re, one_re]
    calc
      _ ≤ |shiftedActualChebyshev y| * y ^ (-(2 : ℝ)) :=
        mul_le_mul_of_nonneg_left
          (Real.rpow_le_rpow_of_exponent_le hy1
            (by linarith [show 1 < s from hs])) (abs_nonneg _)
      _ = |shiftedActualChebyshev y / y ^ 2| := by
        rw [Real.rpow_neg hy0.le, Real.rpow_two, abs_div,
          abs_of_nonneg (sq_nonneg y), div_eq_mul_inv]
  have hlim : ∀ᵐ y ∂volume.restrict (Ioi (7 : ℝ)),
      Tendsto (fun s : ℝ => (shiftedActualChebyshev y : ℂ) *
        (y : ℂ) ^ (-((s : ℂ) + 1))) (𝓝[>] 1)
        (𝓝 ((shiftedActualChebyshev y : ℂ) * (y : ℂ) ^ (-((1 : ℂ) + 1)))) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
    have hy0 : 0 < y := by linarith [show (7 : ℝ) < y from hy]
    simp_rw [cpow_def_of_ne_zero (ofReal_ne_zero.mpr hy0.ne')]
    exact (by fun_prop : Continuous (fun s : ℝ => (shiftedActualChebyshev y : ℂ) *
      Complex.exp (Complex.log (y : ℂ) * (-((s : ℂ) + 1))))).continuousAt.tendsto.mono_left
        nhdsWithin_le_nhds
  have h := tendsto_integral_filter_of_dominated_convergence
    (fun y : ℝ => |shiftedActualChebyshev y / y ^ 2|) hmeas hbound
      actualXiInverseSquarePhysical_integrableOn.norm hlim
  change Tendsto (fun s : ℝ => actualXiComplexMellinTailSeven (s : ℂ)) (𝓝[>] 1)
    (𝓝 (actualXiComplexMellinTailSeven 1)) at h
  rwa [actualXiComplexMellinTailSeven_at_one_eq_physical] at h

/-- The genuine ordinary integral equals the complete authentic pole-one value. -/
theorem actualXiInverseSquarePhysical_integral_eq_poleValue :
    ((∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2 : ℝ) : ℂ) =
      actualXiSevenPoleValue := by
  have hcast : Tendsto (fun s : ℝ => (s : ℂ)) (𝓝[>] 1) (𝓝 (1 : ℂ)) := by
    simpa only [ofReal_one] using
      (continuous_ofReal.continuousAt.tendsto.mono_left
        (nhdsWithin_le_nhds : 𝓝[>] (1 : ℝ) ≤ 𝓝 1))
  have hpunct : Tendsto (fun s : ℝ => (s : ℂ)) (𝓝[>] 1) (𝓝[≠] (1 : ℂ)) := by
    apply tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ hcast
    filter_upwards [self_mem_nhdsWithin] with s hs
    change (s : ℂ) ≠ 1
    exact_mod_cast (ne_of_gt (show 1 < s from hs))
  have hm := hcast.mul actualXiComplexMellinTailSeven_tendsto_one
  simp only [one_mul] at hm
  have hp := actualXiSevenReturn_tendsto_pole_one.comp hpunct
  have he : (fun s : ℝ => (s : ℂ) * actualXiComplexMellinTailSeven (s : ℂ))
      =ᶠ[𝓝[>] 1] fun s => actualXiSevenReturn (s : ℂ) := by
    filter_upwards [self_mem_nhdsWithin] with s hs
    exact actualXiComplexMellinTailSeven_mul_eq
      (by simpa only [ofReal_re] using (show 1 < s from hs))
  exact tendsto_nhds_unique hm (hp.congr' he.symm)

end
end FormalResearch.RiemannHypothesis.SourceActualXiMellinAtOne
```
