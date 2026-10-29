-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeCounting.Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.PrimeCounting.Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ChebyshevFunctions.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Folder.Rebuild.AnalyticNumberTheory.ChebyshevFunctions

Finite Chebyshev theta and prime-counting scaffolding.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeCounting.Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def primeCounting
    (N : Nat) : Nat :=
  (primesUpTo N).card

noncomputable def chebyshevTheta
    (N : Nat) : Real :=
  ∑ p ∈ primesUpTo N, Real.log p

theorem primeCounting_eq_card_primesUpTo
    (N : Nat) :
    primeCounting N = (primesUpTo N).card := by
  rfl

theorem chebyshevTheta_nonneg
    (N : Nat) :
    0 ≤ chebyshevTheta N := by
  unfold chebyshevTheta
  exact
    Finset.sum_nonneg
      (fun p hp =>
        Real.log_nonneg
          (by exact_mod_cast (primesUpTo_prime hp).one_le))

theorem chebyshevTheta_mono :
    Monotone chebyshevTheta := by
  intro M N hMN
  unfold chebyshevTheta
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (primesUpTo_subset_of_le hMN)
      (fun p hp _hnot =>
        Real.log_nonneg
          (by exact_mod_cast (primesUpTo_prime hp).one_le))

theorem chebyshevTheta_le_primeCounting_mul_log
    (N : Nat) :
    chebyshevTheta N ≤ (primeCounting N : Real) * Real.log N := by
  unfold chebyshevTheta primeCounting
  calc
    (∑ p ∈ primesUpTo N, Real.log p)
        ≤ ∑ _p ∈ primesUpTo N, Real.log N := by
          refine Finset.sum_le_sum ?_
          intro p hp
          exact
            Real.log_le_log
              (by exact_mod_cast (primesUpTo_prime hp).pos)
              (by exact_mod_cast (mem_primesUpTo_iff.mp hp).2)
    _ = ((primesUpTo N).card : Real) * Real.log N := by
          simp [Finset.sum_const, nsmul_eq_mul]

theorem primeCounting_mul_log_two_le_chebyshevTheta
    (N : Nat) :
    (primeCounting N : Real) * Real.log 2 ≤ chebyshevTheta N := by
  unfold chebyshevTheta primeCounting
  calc
    ((primesUpTo N).card : Real) * Real.log 2
        = ∑ _p ∈ primesUpTo N, Real.log 2 := by
          simp [Finset.sum_const, nsmul_eq_mul]
    _ ≤ ∑ p ∈ primesUpTo N, Real.log p := by
          refine Finset.sum_le_sum ?_
          intro p hp
          exact
            Real.log_le_log
              (by norm_num)
              (by exact_mod_cast (primesUpTo_prime hp).two_le)

/-- Theorem target: a finite-linear upper bound for theta. -/
def ChebyshevThetaUpperBoundTarget : Prop :=
  ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevTheta N ≤ C * N

/-- Theorem target: classical two-sided prime-counting bounds. -/
def ChebyshevPrimeCountingBoundsTarget : Prop :=
  ∃ c C : Real, 0 < c ∧ c < C ∧
    Filter.Eventually (fun N : Nat =>
      c * (N : Real) / Real.log (N : Real) ≤ primeCounting N ∧
      (primeCounting N : Real) ≤ C * (N : Real) / Real.log (N : Real))
      Filter.atTop

end AnalyticNumberTheory
end Rebuild
end Folder
