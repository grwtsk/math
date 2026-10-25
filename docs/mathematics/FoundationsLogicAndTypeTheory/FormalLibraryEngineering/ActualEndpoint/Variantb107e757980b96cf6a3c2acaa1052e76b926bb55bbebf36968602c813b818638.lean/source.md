# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualEndpoint.Variantb107e757980b96cf6a3c2acaa1052e76b926bb55bbebf36968602c813b818638

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56ce41488f68991c0ea2b725a8f27ac7d60fbf42` · SHA-256 `5b0804ecd53b208e5d532aaa0895ad6c19f4470e597e4a3ee3c8dd3c23c9133b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointPolynomial.Varianta85c87156226472ebcfe0c8188adada4344f87ff55ef96021b25a043a4f4a7ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a85c87156226472ebcfe0c8188adada4344f87ff55ef96021b25a043a4f4a7ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EndpointPolynomial.Varianta85c87156226472ebcfe0c8188adada4344f87ff55ef96021b25a043a4f4a7ab","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a85c87156226472ebcfe0c8188adada4344f87ff55ef96021b25a043a4f4a7ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-20261004/endpoint-independent-review/ActualEndpoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
import Mathlib.Tactic

/-!
Exact endpoint profile of the immutable actual source, a calculation rather than
an arithmetic bound witness. Originating mathematical direction, theorem selection,
corrections and evaluation: grwtsk contributors. Proof assistance: OpenAI Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointPolynomial.Varianta85c87156226472ebcfe0c8188adada4344f87ff55ef96021b25a043a4f4a7ab

set_option autoImplicit false
noncomputable section
namespace CommonMeanEndpoint
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- The exact numerator after substituting x=A-u and extracting A^-4. -/
def endpointPolynomial (u k : ℝ) : ℝ :=
  8*(2*u-u^2*k)^2*(6-14*u*k+7*u^2*k^2) - (2*u-u^2*k)^4/4

theorem endpointPolynomial_expansion (u k : ℝ) :
    endpointPolynomial u k =
    (192*u^2-4*u^4) + (-640*u^3+8*u^5)*k +
    (720*u^4-6*u^6)*k^2 + (-336*u^5+2*u^7)*k^3 +
    (56*u^6-u^8/4)*k^4 := by
  unfold endpointPolynomial
  ring

theorem normalizedInterior_endpoint (A u : ℝ) (hA : 1 ≤ A) :
    normalizedInterior A (A-u) =
      endpointPolynomial u (1/A) /
        (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have ha : A ≠ 0 := by linarith
  have hs : Real.sqrt A ≠ 0 := (Real.sqrt_pos.2 (by linarith)).ne'
  have hz : Real.sqrt (sourceNormalization A) ≠ 0 :=
    (Real.sqrt_pos.2 (source_normalization_pos A hA)).ne'
  unfold normalizedInterior secondInterior bumpInterior endpointPolynomial
  field_simp
  ring

/-- Includes both touching source endpoints. No equality premise is assumed. -/
theorem actual_source_endpoint (A u : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (hupper : u ≤ 2*A) :
    normalizedTest explicitSecondDerivative A (A-u) =
      endpointPolynomial u (1/A) /
        (A^4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  rw [normalizedTest_eq_indicator A (by linarith)]
  have hx : A-u ∈ Set.Icc (-A) A := ⟨by linarith, by linarith⟩
  rw [Set.indicator_of_mem hx]
  exact normalizedInterior_endpoint A u hA

end CommonMeanEndpoint
```
