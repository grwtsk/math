# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.FixedPointSyntax.Variant107fb98d13f52ed18dfcdf82a98f72cf6315f1d8e5830e5e069c00ac68d92948

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5d785778c20586d4d34333a25163a0643a31d6f` · SHA-256 `4dc66bcdf3116c678be8a33a65b74dbf45dd85f3f55b4ff6e60df8d7ce742966`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Fold.Variant7a24cce7f8bd173a95dba3729e8c2b11968cd3ff274349fe67013a4d30a5f50f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a24cce7f8bd173a95dba3729e8c2b11968cd3ff274349fe67013a4d30a5f50f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.Fold.Variant7a24cce7f8bd173a95dba3729e8c2b11968cd3ff274349fe67013a4d30a5f50f","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"7a24cce7f8bd173a95dba3729e8c2b11968cd3ff274349fe67013a4d30a5f50f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Catalan/FixedPointSyntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Catalan.Tree

/-!
# Folder.Catalan.FixedPointSyntax

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.fixed_point_syntax
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Fold.Variant7a24cce7f8bd173a95dba3729e8c2b11968cd3ff274349fe67013a4d30a5f50f

namespace Folder
namespace Catalan

namespace CTree

def fold (leaf : α) (node : α → α → α) : CTree → α
  | CTree.leaf => leaf
  | CTree.node l r => node (fold leaf node l) (fold leaf node r)

@[simp]
theorem fold_leaf (leaf : α) (node : α → α → α) :
    CTree.fold leaf node CTree.leaf = leaf :=
  rfl

@[simp]
theorem fold_node
    (leaf : α)
    (node : α → α → α)
    (l r : CTree) :
    CTree.fold leaf node (CTree.node l r) =
      node (CTree.fold leaf node l) (CTree.fold leaf node r) :=
  rfl

theorem fold_unique
    (leaf : α)
    (node : α → α → α)
    (f : CTree → α)
    (h_leaf : f CTree.leaf = leaf)
    (h_node : ∀ l r,
      f (CTree.node l r) = node (f l) (f r)) :
    f = CTree.fold leaf node := by
  funext T
  induction T with
  | leaf =>
      exact h_leaf
  | node l r ihl ihr =>
      rw [h_node, fold_node, ihl, ihr]

end CTree
end Catalan
end Folder
```
