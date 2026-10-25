# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Declaration.Variant1586b4a175b59eba6a4a7fbd68152913221614e2b4c1c84054bc5384fcf57820

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5df921f48a5084fe58aecc47b3e41b2605715aa0` · SHA-256 `17511d19a074cce6873d050d492e5f78a0af19e1f0129f54d14d3e2096a9f6b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectDeclarationId.Variant9198527901335aba2df449fbedb8f9e5018973bb7d8a7319b7cef540c6528dcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9198527901335aba2df449fbedb8f9e5018973bb7d8a7319b7cef540c6528dcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProjectDeclarationId.Variant9198527901335aba2df449fbedb8f9e5018973bb7d8a7319b7cef540c6528dcc","mathematical_subject":"Foundations.Unclassified","original_sha256":"9198527901335aba2df449fbedb8f9e5018973bb7d8a7319b7cef540c6528dcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/Declaration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Ingestion.Environment
import Mathematics.Ecosystem.Registry

/-! # Project-qualified declaration extraction -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectDeclarationId.Variant9198527901335aba2df449fbedb8f9e5018973bb7d8a7319b7cef540c6528dcc

namespace Mathematics.Ingestion

/-- Identity local to one immutable project revision. -/
structure ProjectDeclarationId where
  snapshot : Ecosystem.ProjectSnapshotKey
  localId : Extractor.DeclarationId
  deriving DecidableEq, Repr

/--
The authoritative declaration payload is the existing extractor record,
including expressions, ownership, safety, reducibility, dependencies,
attributes, source records, and trust closure linkage.
-/
abbrev Declaration := Extractor.DeclarationRecord

end Mathematics.Ingestion
```
