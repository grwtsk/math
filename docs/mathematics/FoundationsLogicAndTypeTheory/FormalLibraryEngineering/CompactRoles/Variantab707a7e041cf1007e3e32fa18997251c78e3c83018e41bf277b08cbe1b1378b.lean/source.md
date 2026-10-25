# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactRoles.Variantab707a7e041cf1007e3e32fa18997251c78e3c83018e41bf277b08cbe1b1378b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb787a3c70955b188ea5ad144a2228573dc0735c` · SHA-256 `b7c07ec2d8cf8ff9b965923d22f9e5f5358b640fa7309650b03ec329bae5ed89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RadoProjectedRole.Variant9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RadoProjectedRole.Variant9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566","mathematical_subject":"Foundations.Unclassified","original_sha256":"9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/CompactRoles.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RadoProjectedRole.Variant9bc772db0d48ef0be0a21eef92376290a5ff49ccb900f876e8ff12144d63d566

set_option autoImplicit false

namespace Think.Compact

inductive RadoProjectedRole where
  | graph
  | projection
  | orbit
  | witness
  | heat
  | centroid
  | modularWeight
  | formShadow
  | pairCorrelation
  | residue
  | prune
  | canonical
  | memory
  | boundary
  | compact
deriving DecidableEq, Repr

def RadoProjectedRole.importsRadoTheorem :
    RadoProjectedRole → Bool
  | _ => false

def RadoProjectedRole.pairCorrelationIsAuthority :
    RadoProjectedRole → Bool
  | _ => false

theorem radoProjected_imports_no_rado_theorem
    (r : RadoProjectedRole) :
    r.importsRadoTheorem = false := by
  cases r <;> rfl

theorem radoProjected_pairCorrelation_regularizerOnly
    (r : RadoProjectedRole) :
    r.pairCorrelationIsAuthority = false := by
  cases r <;> rfl

end Think.Compact
```
