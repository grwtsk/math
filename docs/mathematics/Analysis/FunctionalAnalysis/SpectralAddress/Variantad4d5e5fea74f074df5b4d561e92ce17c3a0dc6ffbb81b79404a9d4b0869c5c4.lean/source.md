# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralAddress.Variantad4d5e5fea74f074df5b4d561e92ce17c3a0dc6ffbb81b79404a9d4b0869c5c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f09ce91edc0464747da96e66d2e8efe390f194c2` · SHA-256 `3fcc7c3e7ca16671cb6a230a468ae097555e08cc38503279e78a26bf11961079`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.SpectralAddressNotCheckedTheorem.Variant5c473766f7678bc3d79387b99389216acb18691eb3d013e35dd8311ad52b4481","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c473766f7678bc3d79387b99389216acb18691eb3d013e35dd8311ad52b4481","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SpectralAddressNotCheckedTheorem.Variant5c473766f7678bc3d79387b99389216acb18691eb3d013e35dd8311ad52b4481","mathematical_subject":"Foundations.Unclassified","original_sha256":"5c473766f7678bc3d79387b99389216acb18691eb3d013e35dd8311ad52b4481","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/ModularWave/SpectralAddress.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.FunctionalAnalysis.SpectralAddressNotCheckedTheorem.Variant5c473766f7678bc3d79387b99389216acb18691eb3d013e35dd8311ad52b4481

set_option autoImplicit false
theorem spectral_address_not_checked_theorem (status : String)
  (h : status = "candidate_generalization" ∨ status = "finite_witness_only" ∨ status = "refused") : status ≠ "checked_theorem" := by
  intro hc
  cases h with
  | inl hcg => rw [hcg] at hc; contradiction
  | inr rest =>
      cases rest with
      | inl hfw => rw [hfw] at hc; contradiction
      | inr href => rw [href] at hc; contradiction
```
