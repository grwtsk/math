# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiveModeCoshEnvelope.Variant91a9a6eb3856c1aa9777db36359c9322be57b3abf8aa54664267bd917e4b67d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06201a94305dca59d74090b72789436e2e91ce47` · SHA-256 `5974b79523eaa57d13608fc82989c72fe5d90cbf84526ea4c5ca93515b2ba4b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualCoshEnvelopeLeEndpoint.Variantde4631b9b3ba83fbfcd6bca78ba62cf646dec1fc4901c651bf40a8686b6ad9c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de4631b9b3ba83fbfcd6bca78ba62cf646dec1fc4901c651bf40a8686b6ad9c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ActualCoshEnvelopeLeEndpoint.Variantde4631b9b3ba83fbfcd6bca78ba62cf646dec1fc4901c651bf40a8686b6ad9c9","mathematical_subject":"Foundations.Unclassified","original_sha256":"de4631b9b3ba83fbfcd6bca78ba62cf646dec1fc4901c651bf40a8686b6ad9c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeCoshEnvelope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeEndpointEnvelope

/-!
Pointwise comparison of the original 4*cosh(A/2)^2/A^9 tail envelope with
the proved continuum rational envelope. This is independent of the still
unproved actual zero-transform/counting/Stieltjes tail certificate.
Originating direction: grwtsk contributors. Lean assistance: OpenAI Codex.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ActualCoshEnvelopeLeEndpoint.Variantde4631b9b3ba83fbfcd6bca78ba62cf646dec1fc4901c651bf40a8686b6ad9c9

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch

theorem actual_cosh_envelope_le_endpoint (A : ℝ) (hA : 1 ≤ A) :
    4 * Real.cosh (A/2)^2 / A^9 ≤ endpointEnvelope A := by
  have hpos : 0 < A^9 := by positivity
  unfold endpointEnvelope
  apply (div_le_div_iff₀ hpos hpos).2
  have he : 4 * Real.cosh (A/2)^2 = Real.exp A + 2 + Real.exp (-A) := by
    rw [Real.cosh_eq]
    have hp : Real.exp (A/2)^2 = Real.exp A := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    have hn : Real.exp (-(A/2))^2 = Real.exp (-A) := by
      rw [pow_two, ← Real.exp_add]
      congr 1
      ring
    have hm : Real.exp (A/2) * Real.exp (-(A/2)) = 1 := by
      rw [← Real.exp_add]
      simp
    nlinarith
  have hn : Real.exp (-A) ≤ 1 := (Real.exp_le_one_iff).2 (by linarith)
  rw [he]
  nlinarith

/-- The original finite envelope is bounded for every real scale, including
both endpoints. It has no all-scale boundedness conclusion. -/
theorem actual_cosh_envelope_le_rational_max (A : ℝ) (hA : 1 ≤ A) (hA160 : A ≤ 160) :
    4 * Real.cosh (A/2)^2 / A^9 ≤
      max (6 : ℝ) (((2719/1000 : ℝ)^160+3)/160^9) :=
  (actual_cosh_envelope_le_endpoint A hA).trans
    (endpointEnvelope_le_rational_max A hA hA160)

end CommonMeanScratch
```
