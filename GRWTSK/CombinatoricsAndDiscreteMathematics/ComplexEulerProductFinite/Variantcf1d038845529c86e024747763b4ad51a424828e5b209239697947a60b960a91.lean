-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteZetaEulerFactorComplex.Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteZetaEulerFactorComplex.Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"dbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ComplexEulerProductFinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane
import Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion
import Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing

/-!
# Folder.Rebuild.AnalyticNumberTheory.ComplexEulerProductFinite

Finite complex Euler products in the absolutely convergent half-plane.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteZetaEulerFactorComplex.Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def finiteZetaEulerFactorComplex
    (p : Nat)
    (s : Complex)
    (K : Nat) : Complex :=
  ∑ k ∈ Finset.range (K + 1), complexWeight s (p ^ k)

noncomputable def finiteZetaEulerProductComplex
    (S : Finset Nat)
    (s : Complex)
    (K : Nat) : Complex :=
  ∏ p ∈ S, finiteZetaEulerFactorComplex p s K

theorem finiteZetaEulerProductComplex_expands_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (s : Complex)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    finiteZetaEulerProductComplex S s K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n := by
  change
    finiteEulerProductOf (fun n => complexWeight s n) S K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n
  exact
    finiteEulerProductOf_expands_boundedSmoothNumbers
      (fun n => complexWeight s n)
      (complexWeight_completely_multiplicative s)
      S K hSprime

noncomputable def zetaEulerApproxComplex
    (s : Complex)
    (N : Nat) : Complex :=
  finiteZetaEulerProductComplex (primesUpTo N) s N

theorem zetaEulerApproxComplex_expands_boundedSmoothNumbers
    (s : Complex)
    (N : Nat) :
    zetaEulerApproxComplex s N =
      ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N,
        complexWeight s n := by
  unfold zetaEulerApproxComplex
  exact
    finiteZetaEulerProductComplex_expands_boundedSmoothNumbers
      (primesUpTo N) N s
      (by intro p hp; exact primesUpTo_prime hp)

end AnalyticNumberTheory
end Rebuild
end Folder
