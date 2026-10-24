-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeConjList.Varianta97e95a51beac2a3c2667bb02121f86701f89592af0260c4c9254a40f081b445","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a97e95a51beac2a3c2667bb02121f86701f89592af0260c4c9254a40f081b445","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TreeConjList.Varianta97e95a51beac2a3c2667bb02121f86701f89592af0260c4c9254a40f081b445","mathematical_subject":"Computation.DataStructures","original_sha256":"a97e95a51beac2a3c2667bb02121f86701f89592af0260c4c9254a40f081b445","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeConjList.Varianta97e95a51beac2a3c2667bb02121f86701f89592af0260c4c9254a40f081b445

namespace Boolean

universe u

/-- Build an n-ary conjunction as a right-nested binary tree. -/
def Tree.conjList : List (Tree α) → Tree α
  | [] => .truth
  | p :: ps => .conj p (Tree.conjList ps)

/-- Build an n-ary disjunction as a right-nested binary tree. -/
def Tree.disjList : List (Tree α) → Tree α
  | [] => .falsum
  | p :: ps => .disj p (Tree.disjList ps)

end Boolean
