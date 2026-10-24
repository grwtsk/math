-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexedAll.Variant3283b85190f0a0edc5b2160bb43281fee0ce7580b644ad7e5b619a6c2f0dcbfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3283b85190f0a0edc5b2160bb43281fee0ce7580b644ad7e5b619a6c2f0dcbfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.IndexedAll.Variant3283b85190f0a0edc5b2160bb43281fee0ce7580b644ad7e5b619a6c2f0dcbfe","mathematical_subject":"Computation.DataStructures","original_sha256":"3283b85190f0a0edc5b2160bb43281fee0ce7580b644ad7e5b619a6c2f0dcbfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Atomize/Formal/IndexedAll.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Heterogeneous lists indexed by judgments

`IndexedAll P js` contains one value of `P j` for every judgment `j` in
`js`.  It is the premise container shared by raw derivations and tree plans.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IndexedAll.Variant3283b85190f0a0edc5b2160bb43281fee0ce7580b644ad7e5b619a6c2f0dcbfe

namespace Atomize.Formal

universe u v

/-- One indexed value for every element of a list. -/
inductive IndexedAll {α : Type u} (P : α → Type v) : List α → Type (max u v)
  | nil : IndexedAll P []
  | cons {j : α} {js : List α} : P j → IndexedAll P js → IndexedAll P (j :: js)

namespace IndexedAll

/-- Pointwise transport across an indexed family. -/
def map
    {α : Type u}
    {P Q : α → Type v}
    (f : ∀ j, P j → Q j) :
    ∀ {js}, IndexedAll P js → IndexedAll Q js
  | _, .nil => .nil
  | _, .cons head tail => .cons (f _ head) (map f tail)

end IndexedAll

end Atomize.Formal
