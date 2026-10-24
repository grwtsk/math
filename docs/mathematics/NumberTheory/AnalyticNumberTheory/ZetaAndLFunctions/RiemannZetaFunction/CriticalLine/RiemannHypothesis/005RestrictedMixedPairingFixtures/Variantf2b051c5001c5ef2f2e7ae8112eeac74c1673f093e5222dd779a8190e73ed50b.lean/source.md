# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.005RestrictedMixedPairingFixtures.Variantf2b051c5001c5ef2f2e7ae8112eeac74c1673f093e5222dd779a8190e73ed50b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65aa7d5e70bf55c65c6f0a4df6a1146ef7f86991` · SHA-256 `674148d92e73028bcc3bf12589ad4c6f17c8879d96aa3c298a53f40941f6dbbb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EmptyRegionZero.Variante37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EmptyRegionZero.Variante37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner79-source-reconciliation-20261007T004709Z/raw/005-RestrictedMixedPairingFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRestrictedMixedPairing
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Hostile fixtures for restricted spatial source pairings

These proposed Lean fixtures keep time and spatial coordinates distinct,
exhibit a signed integral with zero total and nonzero spatial restriction,
and prohibit identification of an arbitrary restricted source pairing with
the full correlation kernel. They supply no signed arithmetic tail estimate.

AI attribution: prepared with OpenAI Codex; kernel verification is pending.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EmptyRegionZero.Variante37646d89c65d13266631598041818a9ea240d41d2b27f329159caad9cbf899b

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.RestrictedMixedPairingFixtures

open MeasureTheory Set
open SourcePairing SourceRestrictedMixedPairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

noncomputable section

theorem empty_region_zero (A x y : ℝ) : restrictedMixedSourceForm ∅ A x y = 0 :=
  restrictedMixedSourceForm_empty A x y

theorem whole_region_literal_kernel {A : ℝ} (hA : 0 < A) (x y : ℝ) :
    restrictedMixedSourceForm univ A x y =
      -(deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (x - y) -
        sourceCorrelation explicitSecondDerivative A (x - y) / 4) :=
  restrictedMixedSourceForm_univ hA x y

theorem whole_same_source_positive {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    0 < restrictedMixedSourceForm univ A x x := by
  rw [restrictedMixedSourceForm_univ_same_shift hA]
  have he : 0 ≤ ∫ v : ℝ, (deriv (normalizedTest explicitSecondDerivative A) v) ^ 2 :=
    integral_nonneg (fun v ↦ sq_nonneg _)
  linarith

theorem opposite_coefficient_negative {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    (-1 : ℝ) * restrictedMixedSourceForm univ A x x < 0 := by
  have hp := whole_same_source_positive hA x
  linarith

theorem arbitrary_region_is_not_whole {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    restrictedMixedSourceForm ∅ A x x ≠ restrictedMixedSourceForm univ A x x := by
  rw [restrictedMixedSourceForm_empty]
  exact ne_of_lt (whole_same_source_positive hA x)

theorem empty_region_is_not_full_source_kernel {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    restrictedMixedSourceForm ∅ A x x ≠
      -(deriv (deriv (sourceCorrelation explicitSecondDerivative A)) 0 -
        sourceCorrelation explicitSecondDerivative A 0 / 4) := by
  have hp := arbitrary_region_is_not_whole hA x
  have hs := restrictedMixedSourceForm_univ (by linarith : 0 < A) x x
  simpa only [sub_self, hs] using hp

/-- Time [0,1] and the corresponding spatial strip [-2,-1) are distinct sets. -/
theorem time_and_spatial_strip_differ :
    Icc (0 : ℝ) 1 ≠ Ico ((0 : ℝ) - 2) (1 - 2) := by
  intro h
  have ht : (0 : ℝ) ∈ Icc (0 : ℝ) 1 := by norm_num
  rw [h] at ht
  norm_num at ht

theorem time_point_not_in_spatial_strip :
    (0 : ℝ) ∈ Icc (0 : ℝ) 1 ∧ (0 : ℝ) ∉ Ico ((0 : ℝ) - 2) (1 - 2) := by
  norm_num

theorem spatial_point_not_in_time_strip :
    (-3 / 2 : ℝ) ∈ Ico ((0 : ℝ) - 2) (1 - 2) ∧
      (-3 / 2 : ℝ) ∉ Icc (0 : ℝ) 1 := by
  norm_num

/-- Signed integration over a larger spatial interval can vanish by cancellation. -/
theorem signed_total_zero : (∫ x in (-1 : ℝ)..1, x) = 0 := by
  rw [integral_id]
  norm_num

/-- Its disclosed spatial subintegral is still positive. -/
theorem signed_subintegral_nonzero : (∫ x in (0 : ℝ)..1, x) = 1 / 2 := by
  rw [integral_id]
  norm_num

/-- A zero total does not even bound the absolute value of that spatial subintegral. -/
theorem signed_total_does_not_bound_subintegral :
    ¬ |∫ x in (0 : ℝ)..1, x| ≤ |∫ x in (-1 : ℝ)..1, x| := by
  rw [signed_total_zero, signed_subintegral_nonzero]
  norm_num

theorem arbitrary_spatial_region_bound {A : ℝ} (hA : 1 ≤ A)
    (S : Set ℝ) (x y : ℝ) :
    |restrictedMixedSourceForm S A x y| ≤ 162826 / (7623 * A ^ 2) + 1 / 4 :=
  restrictedMixedSourceForm_abs_le_coefficient hA S x y

theorem arithmetic_scalar_cannot_be_dropped {A : ℝ} (hA : 1 ≤ A)
    (S : Set ℝ) (x y c : ℝ) :
    |c * restrictedMixedSourceForm S A x y| ≤
      |c| * (162826 / (7623 * A ^ 2) + 1 / 4) :=
  restrictedMixedSourceForm_abs_mul_le_coefficient hA S x y c

/-- The actual unit source already refutes removal of a changing scalar budget. -/
theorem coefficient_free_bound_false :
    ¬ |(100 : ℝ) * restrictedMixedSourceForm univ 1 0 0| ≤
      162826 / (7623 * (1 : ℝ) ^ 2) + 1 / 4 := by
  rw [restrictedMixedSourceForm_univ_same_shift (by norm_num : (1 : ℝ) ≤ 1)]
  have he : 0 ≤ ∫ v : ℝ, (deriv (normalizedTest explicitSecondDerivative 1) v) ^ 2 :=
    integral_nonneg (fun v ↦ sq_nonneg _)
  rw [abs_of_nonneg (by positivity)]
  norm_num
  linarith

theorem source_support_forces_short_time {A : ℝ} (hA : 0 < A)
    {L a t v : ℝ} (hv : v ∈ Ico (L - A) (a - A)) (ht : L ≤ t)
    (hn : normalizedTest explicitSecondDerivative A (v - t) ≠ 0 ∨
      deriv (normalizedTest explicitSecondDerivative A) (v - t) ≠ 0) : t ∈ Ico L a :=
  ⟨ht, nonzero_left_spatial_atom_implies_time_lt hA hv.2 hn⟩

end
end FormalResearch.RiemannHypothesis.RestrictedMixedPairingFixtures
```
