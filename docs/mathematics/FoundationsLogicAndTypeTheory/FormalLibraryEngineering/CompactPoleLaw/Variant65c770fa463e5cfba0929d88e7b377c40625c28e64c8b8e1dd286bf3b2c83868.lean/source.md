# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactPoleLaw.Variant65c770fa463e5cfba0929d88e7b377c40625c28e64c8b8e1dd286bf3b2c83868

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2048fcca46e6b736729ebeea15d9dad9b9f9cbd3` · SHA-256 `ed3d33e00f2e3bd654b221becd9aff6182063499d6a7f9858cd1cf8351d13066`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactPole.Variant3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompactPole.Variant3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82","mathematical_subject":"Foundations.Unclassified","original_sha256":"3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/CompactPoleLaw.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactPole.Variant3f22837a50e66ce05ca6557dc8d2f3bf0150654e946007eba8055b346c62fe82

set_option autoImplicit false

namespace Think.Compact

inductive CompactPole where
  | request
  | carrier
  | lowering
  | trace
  | compact
  | classifier
  | scheduler
  | cluster
  | boundary
deriving DecidableEq, Repr

def CompactPole.centerControlled :
    CompactPole → Bool
  | _ => true

theorem everyCompactPole_centerControlled
    (p : CompactPole) :
    p.centerControlled = true := by
  cases p <;> rfl

end Think.Compact
```
