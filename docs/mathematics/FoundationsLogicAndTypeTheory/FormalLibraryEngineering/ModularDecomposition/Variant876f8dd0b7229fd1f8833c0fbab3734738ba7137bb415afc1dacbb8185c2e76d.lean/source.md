# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModularDecomposition.Variant876f8dd0b7229fd1f8833c0fbab3734738ba7137bb415afc1dacbb8185c2e76d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `142ca7da75a099189a1482afad20f0ac1bf23508` · SHA-256 `8d13c6969f75911e1112bf3676893cece82ad259efaa0d2536ac779fb14d60e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModularDecompositionCertificate.Varianta4d26c5bcf172a8242bc8ea62acc525325a5f538d73044999e5b4c42d1dbbf01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4d26c5bcf172a8242bc8ea62acc525325a5f538d73044999e5b4c42d1dbbf01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ModularDecompositionCertificate.Varianta4d26c5bcf172a8242bc8ea62acc525325a5f538d73044999e5b4c42d1dbbf01","mathematical_subject":"Foundations.Unclassified","original_sha256":"a4d26c5bcf172a8242bc8ea62acc525325a5f538d73044999e5b4c42d1dbbf01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Flow/Heat/ModularDecomposition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Flow.Heat.FrameCommutation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModularDecompositionCertificate.Varianta4d26c5bcf172a8242bc8ea62acc525325a5f538d73044999e5b4c42d1dbbf01

namespace Surface

structure ModularDecompositionCertificate where
  structuredPart : Prop
  errorPart : Prop
  recomposes : Prop

theorem heatFlow_decomposition_sound
    (cert : ModularDecompositionCertificate) :
    cert.structuredPart ->
      cert.errorPart ->
        cert.recomposes ->
          cert.structuredPart ∧ cert.errorPart ∧ cert.recomposes := by
  intro hstruct herror hrecompose
  exact ⟨hstruct, herror, hrecompose⟩

end Surface
```
