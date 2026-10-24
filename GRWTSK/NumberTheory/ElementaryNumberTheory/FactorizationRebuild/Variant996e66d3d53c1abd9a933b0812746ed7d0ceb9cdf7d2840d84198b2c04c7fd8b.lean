-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.FactorizationReconstructs.Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.FactorizationReconstructs.Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/FactorizationRebuild.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.NumberTheory.Factorization
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Rebuild.NumberTheory.FactorizationRebuild

Local rebuild wrappers around the project's factorization map.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.FactorizationReconstructs.Variant78c9d503728a10bab80ec14197ed87c58b3c8459fcf783080cb160972c9cca13

namespace Folder
namespace Rebuild
namespace NumberTheory

open Folder.NumberTheory

theorem factorization_reconstructs
    (n : PositiveNat) :
    factorProduct (FactorizationMap n) = n.val :=
  factorProduct_factorization n

theorem factorization_support_prime_checked
    (n : PositiveNat)
    {p : Nat}
    (hp : IsPrimeSupport n p) :
    Nat.Prime p :=
  factorization_support_prime n hp

theorem no_prime_support_of_one
    (n : PositiveNat)
    (hn : n.val = 1) :
    ∀ p, ¬ IsPrimeSupport n p := by
  intro p hp
  have hz : FactorizationMap n p = 0 := by
    change n.val.factorization p = 0
    rw [hn]
    simp
  exact hp hz

theorem exists_prime_support_of_gt_one
    (n : PositiveNat)
    (hn : 1 < n.val) :
    ∃ p, IsPrimeSupport n p ∧ Nat.Prime p := by
  by_contra hnone
  have hzero : FactorizationMap n = 0 := by
    ext p
    by_contra hp
    exact hnone ⟨p, hp, factorization_support_prime n hp⟩
  have hone : n.val = 1 := by
    calc
      n.val = factorProduct (FactorizationMap n) := (factorProduct_factorization n).symm
      _ = factorProduct (0 : Nat →₀ Nat) := by rw [hzero]
      _ = 1 := factorProduct_one
  omega

end NumberTheory
end Rebuild
end Folder
