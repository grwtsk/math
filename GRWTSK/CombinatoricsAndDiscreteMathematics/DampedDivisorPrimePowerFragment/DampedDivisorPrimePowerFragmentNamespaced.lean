-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DampedDivisorCoefficientPrimePow.Variant7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DampedDivisorCoefficientPrimePow.Variant7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/DampedDivisorPrimePowerFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-! Exact prime-power values and a divisor-count-free quadratic bound off prime powers. -/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DampedDivisorCoefficientPrimePow.Variant7b5d48598dc16f8854279e8d5f888d71dadf2ea6811ce41f5f7193dd6899b6cb

set_option autoImplicit false
namespace DampedDivisorPrimePowerScratch
open Finset
open DampedDivisorCoefficientScratch
noncomputable section

/-- A positive prime power has exactly one damped factor, independently of its exponent. -/
theorem dampedDivisorCoefficient_prime_pow (ε : ℝ) (p k : ℕ) (hp : p.Prime) (hk : 1 ≤ k) :
    dampedDivisorCoefficient ε (p ^ k) = 1 - Real.exp (-ε * Real.log (p : ℝ)) := by
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε (p ^ k)
    (one_le_pow₀ hp.one_le), Nat.primeFactors_prime_pow (by omega : k ≠ 0) hp,
    Finset.prod_singleton]

/-- Two distinct actual prime factors give the uniform quadratic remainder without divisor-count loss. -/
theorem dampedDivisorCoefficient_le_sq_of_not_prime_pow (ε : ℝ) (hε : 0 ≤ ε)
    (n : ℕ) (hn : 2 ≤ n) (hnp : ¬IsPrimePow n) :
    dampedDivisorCoefficient ε n ≤ ε ^ 2 * Real.log (n : ℝ) ^ 2 := by
  obtain ⟨p, hp, q, hq, hpq⟩ := (Nat.not_isPrimePow_iff_nontrivial_of_two_le hn).mp hnp
  let f : ℕ → ℝ := fun r => 1 - Real.exp (-ε * Real.log (r : ℝ))
  have hf0 (r : ℕ) (hr : r ∈ n.primeFactors) : 0 ≤ f r := by
    have hr1 : (1 : ℝ) ≤ r := by exact_mod_cast (Nat.prime_of_mem_primeFactors hr).one_le
    exact sub_nonneg.mpr (Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε) (Real.log_nonneg hr1)))
  have hf1 (r : ℕ) : f r ≤ 1 := sub_le_self _ (Real.exp_nonneg _)
  have hflog (r : ℕ) (hr : r ∈ n.primeFactors) : f r ≤ ε * Real.log (n : ℝ) := by
    have h0 : 0 < (r : ℝ) := by exact_mod_cast (Nat.prime_of_mem_primeFactors hr).pos
    have hle : (r : ℝ) ≤ n := by exact_mod_cast Nat.le_of_mem_primeFactors hr
    have hl := Real.log_le_log h0 hle
    have hlow := Real.add_one_le_exp (-ε * Real.log (r : ℝ))
    calc
      f r ≤ ε * Real.log (r : ℝ) := by dsimp only [f]; linarith
      _ ≤ _ := mul_le_mul_of_nonneg_left hl hε
  have hsub : ({p, q} : Finset ℕ) ⊆ n.primeFactors := by
    intro r hr
    simp only [Finset.mem_insert, Finset.mem_singleton] at hr
    rcases hr with rfl | rfl
    · exact hp
    · exact hq
  have hprod : (∏ r ∈ n.primeFactors, f r) ≤ f p * f q := by
    have hb := Finset.prod_le_prod_of_subset_of_le_one hsub hf0 (fun r _ _ => hf1 r)
    simpa only [Finset.prod_pair hpq] using hb
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε n (by omega)]
  calc
    _ ≤ f p * f q := hprod
    _ ≤ (ε * Real.log (n : ℝ)) * (ε * Real.log (n : ℝ)) :=
      mul_le_mul (hflog p hp) (hflog q hq) (hf0 q hq)
        (mul_nonneg hε (Real.log_nonneg (by exact_mod_cast (show 1 ≤ n by omega))))
    _ = _ := by ring

end
end DampedDivisorPrimePowerScratch
