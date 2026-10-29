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
