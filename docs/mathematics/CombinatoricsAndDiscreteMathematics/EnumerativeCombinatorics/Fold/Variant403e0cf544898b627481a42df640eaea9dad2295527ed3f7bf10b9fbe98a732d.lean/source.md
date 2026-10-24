# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.Fold.Variant403e0cf544898b627481a42df640eaea9dad2295527ed3f7bf10b9fbe98a732d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58959a1ad422562332c782868269a56dc1428488` · SHA-256 `773f2f407b143dbd5954fdf4a2373d5f935833684ac959294abfed0c7db3ecc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CtreeFoldLeaf.Variant3850daf32670a23160883b7b4b267ac00e6b034580911c6d9e1bd4b3bb72a8fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3850daf32670a23160883b7b4b267ac00e6b034580911c6d9e1bd4b3bb72a8fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.CtreeFoldLeaf.Variant3850daf32670a23160883b7b4b267ac00e6b034580911c6d9e1bd4b3bb72a8fb","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"3850daf32670a23160883b7b4b267ac00e6b034580911c6d9e1bd4b3bb72a8fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Catalan/Fold.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Catalan.FixedPointSyntax

/-!
# Folder.Theorem.Catalan.Fold

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.catalan.fold
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CtreeFoldLeaf.Variant3850daf32670a23160883b7b4b267ac00e6b034580911c6d9e1bd4b3bb72a8fb

namespace Folder
namespace Catalan

theorem ctree_fold_leaf (leaf : α) (node : α → α → α) :
    CTree.fold leaf node CTree.leaf = leaf :=
  CTree.fold_leaf leaf node

theorem ctree_fold_node
    (leaf : α)
    (node : α → α → α)
    (l r : CTree) :
    CTree.fold leaf node (CTree.node l r) =
      node (CTree.fold leaf node l) (CTree.fold leaf node r) :=
  CTree.fold_node leaf node l r

theorem ctree_fold_unique
    (leaf : α)
    (node : α → α → α)
    (f : CTree → α)
    (h_leaf : f CTree.leaf = leaf)
    (h_node : ∀ l r,
      f (CTree.node l r) = node (f l) (f r)) :
    f = CTree.fold leaf node :=
  CTree.fold_unique leaf node f h_leaf h_node

end Catalan
end Folder
```
