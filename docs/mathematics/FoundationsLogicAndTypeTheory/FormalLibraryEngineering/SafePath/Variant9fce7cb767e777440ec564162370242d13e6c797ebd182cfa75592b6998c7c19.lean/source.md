# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafePath.Variant9fce7cb767e777440ec564162370242d13e6c797ebd182cfa75592b6998c7c19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eaec74ffa0862735f566a0fd51e69ead0fbce98c` · SHA-256 `e17d0f4788b18dd96e0fef03b28132629c5befd7fac8aa355322f20ad822b9ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeRelPath.Variantfb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SafeRelPath.Variantfb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038","mathematical_subject":"Foundations.Unclassified","original_sha256":"fb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/SafePath.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Archive.SafePath

Radiation role: archive-manifest
BinaryMatrix spine: This module constrains archive paths before payloads are materialized as BinaryMatrix layers.
Ontology: archive.safe_path
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeRelPath.Variantfb3ac7eab87ed9412b7ee2d12ae09910f041a2284c4d32ab27a3fa4b6ca20038

namespace Folder
namespace Archive

structure SafeRelPath where
  value : String
  not_empty : value ≠ ""
  no_dotdot : ¬ ".." ∈ value.splitOn "/"
  not_absolute : ¬ value.startsWith "/"
  no_empty_components : ∀ c ∈ value.splitOn "/", c ≠ ""

theorem safeRelPath_no_dotdot
    (p : SafeRelPath) :
    ¬ ".." ∈ p.value.splitOn "/" :=
  p.no_dotdot

theorem safeRelPath_not_empty
    (p : SafeRelPath) :
    p.value ≠ "" :=
  p.not_empty

end Archive
end Folder
```
