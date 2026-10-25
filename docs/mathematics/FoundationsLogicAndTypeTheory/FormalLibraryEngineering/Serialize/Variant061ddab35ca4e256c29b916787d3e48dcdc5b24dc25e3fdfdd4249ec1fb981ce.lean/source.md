# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Serialize.Variant061ddab35ca4e256c29b916787d3e48dcdc5b24dc25e3fdfdd4249ec1fb981ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed723483823d729585ccc9f6dd8340cb356d49f8` · SHA-256 `5c9d89825f2a1c718774f4666ac63e459ffb90512a738a6cf407f3db7db5b2bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WriteTrace.Varianta1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.WriteTrace.Varianta1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"a1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/tools/LeanSource/Serialize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import tools.LeanSource.Frontend


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WriteTrace.Varianta1e19d589f0057a16e0a507892ceca0dcddb50f72229cc4fe57071c2ec63a284

public section

/-! # Canonical raw trace serialization -/

open Lean

namespace MathDiscoveryLeanSource

def writeTrace (path : System.FilePath) (trace : RawTrace) : IO Unit := do
  if let some parent := path.parent then
    IO.FS.createDirAll parent
  IO.FS.writeFile path ((toJson trace).compress ++ "\n")

end MathDiscoveryLeanSource
```
