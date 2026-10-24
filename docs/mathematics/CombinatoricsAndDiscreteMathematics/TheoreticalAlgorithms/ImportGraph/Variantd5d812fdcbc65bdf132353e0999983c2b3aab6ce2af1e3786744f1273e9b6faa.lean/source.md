# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImportGraph.Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ea1560fcabb435fc89a935eabbddb43cbe434d1` · SHA-256 `31a022cbf04fce8cf9aac3be0f3c0affe748a379282e10f79de677de7811ee32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImportEdge.Variant86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ImportEdge.Variant86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48","mathematical_subject":"Computation.DataStructures","original_sha256":"86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/ImportGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImportEdge.Variant86dd729ea581c0f7f5b98ccf02ae24ac5a5923b8906ea8dfce4ea88f85454e48

namespace Surface
namespace Incremental

open Surface.AST

structure ImportEdge where
  importer : ModuleKey
  imported : ModuleKey
  importString : String
  source : LeanSource
  claimBoundary : List String
deriving Repr

structure ImportGraph where
  modules : List ModuleKey
  edges : List ImportEdge
  graphHash : ContentHash
  claimBoundary : List String
deriving Repr

def imports
    (G : ImportGraph)
    (M I : ModuleKey) : Prop :=
  ∃ e ∈ G.edges, e.importer = M ∧ e.imported = I

theorem importEdge_boundary_visible
    (e : ImportEdge) :
    e.claimBoundary = e.claimBoundary :=
  rfl

end Incremental
end Surface
```
