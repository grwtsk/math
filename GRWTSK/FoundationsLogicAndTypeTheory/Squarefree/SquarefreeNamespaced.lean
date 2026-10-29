-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SquarefreeByFactorization.Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SquarefreeByFactorization.Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/Squarefree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.FactorizationRebuild
import Mathlib.Data.Nat.Squarefree

/-!
# Folder.Rebuild.NumberTheory.Squarefree

Squarefree naturals repackaged through the project factorization map.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SquarefreeByFactorization.Variant6c5b28f59a6aa259914832b959d002199b7e86f94660218e659e46e366773fe5

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory

def SquarefreeByFactorization (n : PositiveNat) : Prop :=
  ∀ p, FactorizationMap n p ≤ 1

/--
A positive natural is squarefree exactly when all project factorization
exponents are at most one.
-/
theorem squarefree_iff_factorization_le_one
    (n : PositiveNat) :
    Squarefree n.val ↔ SquarefreeByFactorization n := by
  simpa [SquarefreeByFactorization, FactorizationMap, PositiveNat.val] using
    Nat.squarefree_iff_factorization_le_one (Nat.ne_of_gt n.2)

end NumberTheory
end Rebuild
end Folder
