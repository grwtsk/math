# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixtures.Variant8e471212860fe93b2fc8d725f8a087fee68e2d6a4254d27bbd9a4c65a8bf1c9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a681f8aa2f3485b24276d65ba078e928fad28084` · SHA-256 `1c94b84d67cbeaf6b5ee5c30631b1c116ec657d28d8d926f62b027d57eff630e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroScaleExcluded.Variant2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ZeroScaleExcluded.Variant2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle24/principal-origin/future-readout/private27-centered-prefix-norm-v1/fixtures-v2/ScopeFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCenteredMobiusNorm

/-! Exact inventory, centering and scalar-budget scope fixtures. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ZeroScaleExcluded.Variant2f3cc638e07a730506c2bfdbee58e4109ce3e82b8e169adbbcc70e46e318a2e4

set_option autoImplicit false
noncomputable section
namespace CenteredMobiusNormFixtures

open MeasureTheory Set Filter
open FormalResearch.RiemannHypothesis
open SourcePairing
open SourceHankelReflection SourceVaughanHankel SourceCenteredMobiusNorm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering

theorem zero_scale_excluded : ¬ (1 ≤ (0 : ℝ)) := by norm_num

theorem unit_cutoff_actual : vaughanCutoff (1 : ℝ) = 1 := by
  norm_num [vaughanCutoff]

theorem scale_two_actual_bound : ‖centeredMobiusReflectedL2 2 (by norm_num)‖ ≤ 12 := by
  convert centeredMobiusReflectedL2_norm_le_scale_add_ten 2 (by norm_num) using 1 <;>
    norm_num

theorem scale_seven_actual_bound : ‖centeredMobiusReflectedL2 7 (by norm_num)‖ ≤ 17 := by
  convert centeredMobiusReflectedL2_norm_le_scale_add_ten 7 (by norm_num) using 1 <;>
    norm_num

theorem lower_endpoint_excluded (A : ℝ) : vaughanCutoff A ∉ longInventory A := by
  simp [longInventory]

theorem upper_endpoint_closed (A : ℝ) (h : vaughanCutoff A < sourceKernelCutoff A) :
    sourceKernelCutoff A ∈ longInventory A := by
  exact Finset.mem_Ioc.mpr ⟨h, le_rfl⟩

theorem empty_row_actual (A : ℝ) (hp : 0 < A) (U : ℕ) (c : ℕ → ℝ) :
    reflectedL2 A hp (Finset.Ioc U U) c = 0 := by
  apply Lp.ext
  filter_upwards [(reflectedProfile_memLp hp (Finset.Ioc U U) c).coeFn_toLp,
    Lp.coeFn_zero (E := ℝ) (p := 2) (μ := volume)] with x hq hz
  change ((reflectedProfile_memLp hp (Finset.Ioc U U) c).toLp _) x =
    (0 : Lp ℝ 2 (volume : Measure ℝ)) x
  rw [hq, hz]
  simp [reflectedProfile]

theorem one_upper_atom (A : ℝ) (U : ℕ) (c : ℕ → ℝ) (x : ℝ) :
    reflectedProfile A (Finset.Ioc U (U + 1)) c x =
      c (U + 1) * normalizedTest explicitSecondDerivative A (x + Real.log ((U + 1 : ℕ) : ℝ)) := by
  simp [reflectedProfile, Nat.Ioc_succ_singleton]

theorem lower_prefix_zero (U : ℕ) :
    (∑ n ∈ Finset.Ioc U U, centeredBeta U n) = 0 := by simp

theorem separately_cast_quotient_discrepancy : floorDiscrepancy 2 4 3 = (1 : ℝ) / 3 := by
  norm_num [floorDiscrepancy]

theorem centering_not_dropped (U n : ℕ) :
    EstimateVaughanIdentity.beta U n = centeredBeta U n - alpha U :=
  beta_eq_centered_sub_alpha U n

theorem actual_reflection_orientation (A : ℝ) (hA : 1 ≤ A) (x : ℝ) :
    centeredMobiusReflectedProfile A x = centeredMobiusForwardProfile A (-x) :=
  centeredMobiusReflectedProfile_eq_reflection A hA x

theorem log_ratio_one : Real.log (1 : ℝ) / Real.sqrt 1 = 0 := by simp

theorem terminal_correction_retained (u a rL rN : ℝ) :
    u * rN + u * (1 + 10 / a) * (rL - rN) =
      u * rL * (1 + 10 / a) - 10 * u / a * rN := by ring

end CenteredMobiusNormFixtures
```
