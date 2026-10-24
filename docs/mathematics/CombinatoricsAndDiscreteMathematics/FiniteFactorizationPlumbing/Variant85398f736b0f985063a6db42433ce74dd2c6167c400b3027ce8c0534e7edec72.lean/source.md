# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFactorizationPlumbing.Variant85398f736b0f985063a6db42433ce74dd2c6167c400b3027ce8c0534e7edec72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `036decd3afbc6150f08db6daf202d4acaf416b8b` · SHA-256 `add8f26d014d9402e802d323c30fd122f096780f0dbccdae6b877ca490baeacc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FactorizationPrimePowerEval.Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FactorizationPrimePowerEval.Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/FiniteFactorizationPlumbing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers
import Folder.Rebuild.NumberTheory.FactorizationRebuild
import Mathlib.Data.Nat.Factorization.Basic

/-!
# Folder.Rebuild.AnalyticNumberTheory.FiniteFactorizationPlumbing

Finite prime-factorization plumbing for bounded exponent vectors.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FactorizationPrimePowerEval.Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

theorem factorization_prime_power_eval
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    (q : Nat)
    (p : {p : Nat // p ∈ S}) :
    Nat.factorization (p.val ^ (e p).val) q =
      if q = p.val then (e p).val else 0 := by
  rw [Nat.factorization_pow]
  rw [Nat.Prime.factorization (hSprime p.val p.property)]
  rw [Finsupp.smul_apply]
  by_cases hq : q = p.val
  · subst q
    rw [Finsupp.single_eq_same]
    simp
  · rw [Finsupp.single_eq_of_ne hq]
    simp [hq]

theorem factorization_exponentVectorNat
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    (q : Nat) :
    Nat.factorization (exponentVectorNat S K e) q =
      if hq : q ∈ S then
        (e ⟨q, hq⟩).val
      else
        0 := by
  classical
  unfold exponentVectorNat
  rw [Nat.factorization_prod]
  · have hsum_apply :
        (∑ x : {p : Nat // p ∈ S}, Nat.factorization (x.val ^ (e x).val)) q =
          ∑ x : {p : Nat // p ∈ S},
            Nat.factorization (x.val ^ (e x).val) q := by
      simp
    rw [hsum_apply]
    by_cases hq : q ∈ S
    · simp only [hq, dite_true]
      calc
        (∑ x : {p : Nat // p ∈ S},
            Nat.factorization (x.val ^ (e x).val) q)
            = ∑ x : {p : Nat // p ∈ S},
                if q = x.val then (e x).val else 0 := by
                refine Finset.sum_congr rfl ?_
                intro x _hx
                exact factorization_prime_power_eval S K hSprime e q x
        _ = (e ⟨q, hq⟩).val := by
                rw [Finset.sum_eq_single_of_mem
                  (a := (⟨q, hq⟩ : {p : Nat // p ∈ S}))]
                · simp
                · simp
                · intro b _hb hbne
                  have hbval_ne : q ≠ b.val := by
                    intro hval
                    apply hbne
                    ext
                    exact hval.symm
                  simp [hbval_ne]
    · simp only [hq, dite_false]
      calc
        (∑ x : {p : Nat // p ∈ S},
            Nat.factorization (x.val ^ (e x).val) q)
            = ∑ x : {p : Nat // p ∈ S},
                if q = x.val then (e x).val else 0 := by
                refine Finset.sum_congr rfl ?_
                intro x _hx
                exact factorization_prime_power_eval S K hSprime e q x
        _ = 0 := by
                refine Finset.sum_eq_zero ?_
                intro b _hb
                have hbval_ne : q ≠ b.val := by
                  intro hval
                  apply hq
                  rw [hval]
                  exact b.property
                simp [hbval_ne]
  · intro p _hp
    exact pow_ne_zero _ (hSprime p.val p.property).ne_zero

theorem factorization_exponentVectorNat_at_mem
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    {q : Nat}
    (hq : q ∈ S) :
    Nat.factorization (exponentVectorNat S K e) q =
      (e ⟨q, hq⟩).val := by
  rw [factorization_exponentVectorNat S K hSprime e q]
  simp [hq]

theorem factorization_exponentVectorNat_at_not_mem
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    {q : Nat}
    (hq : q ∉ S) :
    Nat.factorization (exponentVectorNat S K e) q = 0 := by
  rw [factorization_exponentVectorNat S K hSprime e q]
  simp [hq]

/--
Prime-factorization injectivity for bounded exponent vectors.

For a finite set of primes `S`, the product `prod p in S, p^(e p)`
uniquely determines the exponent vector `e`. This is a finite, elementary
factorization theorem and does not use analytic number theory.
-/
theorem exponentVectorNat_injective_of_prime_set
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    Function.Injective
      (fun e : ExponentVector S K => exponentVectorNat S K e) := by
  intro e₁ e₂ h
  funext p
  apply Fin.ext
  have hfac :
      Nat.factorization (exponentVectorNat S K e₁) p.val =
        Nat.factorization (exponentVectorNat S K e₂) p.val := by
    rw [show exponentVectorNat S K e₁ = exponentVectorNat S K e₂ from h]
  rw [factorization_exponentVectorNat S K hSprime e₁ p.val] at hfac
  rw [factorization_exponentVectorNat S K hSprime e₂ p.val] at hfac
  simp [p.property] at hfac
  exact hfac

end AnalyticNumberTheory
end Rebuild
end Folder
```
