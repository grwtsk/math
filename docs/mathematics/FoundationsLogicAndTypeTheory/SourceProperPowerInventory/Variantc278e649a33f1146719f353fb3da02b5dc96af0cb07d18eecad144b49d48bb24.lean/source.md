# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SourceProperPowerInventory.Variantc278e649a33f1146719f353fb3da02b5dc96af0cb07d18eecad144b49d48bb24

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b302932d4e43560d675f865ea10ddf9ef9476f68` · SHA-256 `d0a171b2f2cd8830ee1e69e763d09f96158640fbda8d62c9f59c4e7a27374336`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.TailProperMass.Variantc910bb6a146403a96dd6b76b1a9a2deea394012b601dcfe426eec19a6ff51658","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c910bb6a146403a96dd6b76b1a9a2deea394012b601dcfe426eec19a6ff51658","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.TailProperMass.Variantc910bb6a146403a96dd6b76b1a9a2deea394012b601dcfe426eec19a6ff51658","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c910bb6a146403a96dd6b76b1a9a2deea394012b601dcfe426eec19a6ff51658","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-proper-power-diagonal/author-evidence/author-inventory-attempt01/SourceProperPowerInventory.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceProperPowerCell
import Mathlib.Data.Nat.Prime.Int
import Mathlib.Data.Nat.Prime.Pow
import Mathlib.Analysis.SpecificLimits.Basic

/-! Exact finite proper-prime-power inventory, with all exponents at least two.
Research direction: grwtsk contributors. Formalization: OpenAI Codex.
The source cutoffs are fixed and no signed arithmetic witness is supplied. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TailProperMass.Variantc910bb6a146403a96dd6b76b1a9a2deea394012b601dcfe426eec19a6ff51658

set_option autoImplicit false
noncomputable section
namespace RH16ProperPowerInventory

open Finset Real ArithmeticFunction
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens RH16ProperPowerCell

/-- The literal proper-power mass with prime base strictly above U. -/
def tailProperMass (U N : ℕ) : ℝ :=
  ∑ n ∈ Ioc 0 N, if U < n.minFac then properPowerCoefficient n / (n : ℝ) else 0

/-- Coordinates include every exponent >=2 and the unchanged closed upper cutoff. -/
def properExponentInventory (U N : ℕ) : Finset (ℕ × ℕ) :=
  (((Ioc U N).filter Nat.Prime).product (Icc 2 N)).filter (fun pk => pk.1 ^ pk.2 ≤ N)

theorem tailProperMass_nonneg (U N : ℕ) : 0 ≤ tailProperMass U N := by
  apply Finset.sum_nonneg
  intro n hn
  split_ifs <;> positivity

theorem tailProperMass_eq_exponent_sum (U N : ℕ) :
    tailProperMass U N = ∑ pk ∈ properExponentInventory U N,
      Real.log (pk.1 : ℝ) / ((pk.1 : ℝ) ^ pk.2) := by
  let S := (Ioc 0 N).filter (fun n => ¬n.Prime ∧ IsPrimePow n ∧ U < n.minFac)
  have hzero : tailProperMass U N = ∑ n ∈ S, properPowerCoefficient n / (n : ℝ) := by
    unfold tailProperMass
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hp : n.Prime
    · simp [hp, properPowerCoefficient, primeCoefficient, vonMangoldt_apply_prime hp]
    · by_cases hpow : IsPrimePow n
      · simp [S, hp, hpow]
      · simp [S, hp, hpow, properPowerCoefficient, primeCoefficient,
          vonMangoldt_eq_zero_iff.mpr hpow]
  rw [hzero]
  symm
  apply Finset.sum_bij (fun pk _ => pk.1 ^ pk.2)
  · intro pk hpk
    obtain ⟨hprod, hupper⟩ := Finset.mem_filter.mp hpk
    obtain ⟨hpI, hkI⟩ := Finset.mem_product.mp hprod
    obtain ⟨hpUN, hp⟩ := Finset.mem_filter.mp hpI
    have hk2 := (Finset.mem_Icc.mp hkI).1
    have hk : pk.2 ≠ 0 := by omega
    have hpow := hp.isPrimePow.pow hk
    apply Finset.mem_filter.mpr
    exact ⟨Finset.mem_Ioc.mpr ⟨by omega, hupper⟩,
      Nat.Prime.not_prime_pow hk2, hpow, by simpa [hp.pow_minFac hk] using (Finset.mem_Ioc.mp hpUN).1⟩
  · intro x hx y hy heq
    obtain ⟨hxprod, _⟩ := Finset.mem_filter.mp hx
    obtain ⟨hyprod, _⟩ := Finset.mem_filter.mp hy
    obtain ⟨hxp, hxk⟩ := Finset.mem_product.mp hxprod
    obtain ⟨hyp, hyk⟩ := Finset.mem_product.mp hyprod
    have hp := (Finset.mem_filter.mp hxp).2
    have hq := (Finset.mem_filter.mp hyp).2
    have hk := (Finset.mem_Icc.mp hxk).1
    have hl := (Finset.mem_Icc.mp hyk).1
    obtain ⟨h1, h2⟩ := hp.pow_inj' hq (by omega) (by omega) heq
    exact Prod.ext h1 h2
  · intro n hn
    obtain ⟨hnI, hnotprime, hpow, hU⟩ := Finset.mem_filter.mp hn
    obtain ⟨p, hpn, k, hkn, hp, hk, heq⟩ := (isPrimePow_nat_iff_bounded n).mp hpow
    have hk2 : 2 ≤ k := by
      by_contra h
      have hk1 : k = 1 := by omega
      subst k
      simp only [pow_one] at heq
      exact hnotprime (heq ▸ hp)
    have hnN := (Finset.mem_Ioc.mp hnI).2
    refine ⟨(p, k), ?_, heq⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_product.mpr ⟨?_, ?_⟩, by simpa [heq] using hnN⟩
    · have hmin : n.minFac = p := by rw [← heq, hp.pow_minFac (by omega)]
      exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨by simpa [hmin] using hU, hpn.trans hnN⟩, hp⟩
    · exact Finset.mem_Icc.mpr ⟨hk2, hkn.trans hnN⟩
  · intro pk hpk
    obtain ⟨hprod, _⟩ := Finset.mem_filter.mp hpk
    obtain ⟨hpI, hkI⟩ := Finset.mem_product.mp hprod
    have hp := (Finset.mem_filter.mp hpI).2
    have hk2 := (Finset.mem_Icc.mp hkI).1
    simp [properPowerCoefficient, primeCoefficient, Nat.Prime.not_prime_pow hk2,
      vonMangoldt_apply_pow (show pk.2 ≠ 0 by omega), vonMangoldt_apply_prime hp]

theorem finite_geometric_proper_le (p K : ℕ) (hp : p.Prime) :
    (∑ k ∈ Icc 2 K, Real.log (p : ℝ) / ((p : ℝ) ^ k)) ≤
      Real.log (p : ℝ) / ((p : ℝ) * ((p : ℝ) - 1)) := by
  have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hr0 : 0 ≤ (p : ℝ)⁻¹ := inv_nonneg.mpr hp0.le
  have hr : (p : ℝ)⁻¹ < 1 := by simpa using (inv_lt_one₀ hp0).2 hp1
  have hs : (∑ k ∈ Icc 2 K, ((p : ℝ)⁻¹) ^ k) =
      ((p : ℝ)⁻¹) ^ 2 * ∑ j ∈ range (K - 1), ((p : ℝ)⁻¹) ^ j := by
    rw [Finset.mul_sum]
    apply Finset.sum_bij (fun k _ => k - 2)
    · intro k hk
      simp only [Finset.mem_Icc] at hk
      simp only [Finset.mem_range]
      omega
    · intro x hx y hy he
      simp only [Finset.mem_Icc] at hx hy
      omega
    · intro j hj
      refine ⟨j + 2, ?_, by omega⟩
      simp only [Finset.mem_range] at hj
      simp only [Finset.mem_Icc]
      omega
    · intro k hk
      have hk2 := (Finset.mem_Icc.mp hk).1
      rw [← pow_add]
      congr 1
      omega
  have ht := (summable_geometric_of_lt_one hr0 hr).sum_le_tsum (range (K - 1))
    (fun j _ => pow_nonneg hr0 j)
  rw [tsum_geometric_of_lt_one hr0 hr] at ht
  have hlog : 0 ≤ Real.log (p : ℝ) := Real.log_nonneg hp1.le
  calc
    _ = Real.log (p : ℝ) * ∑ k ∈ Icc 2 K, ((p : ℝ)⁻¹) ^ k := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k hk
      rw [div_eq_mul_inv, inv_pow]
    _ = Real.log (p : ℝ) * ((p : ℝ)⁻¹) ^ 2 *
        ∑ j ∈ range (K - 1), ((p : ℝ)⁻¹) ^ j := by rw [hs]; ring
    _ ≤ Real.log (p : ℝ) * ((p : ℝ)⁻¹) ^ 2 * (1 - (p : ℝ)⁻¹)⁻¹ :=
      mul_le_mul_of_nonneg_left ht (by positivity)
    _ = _ := by field_simp; ring

theorem tailProperMass_le_budget (U N : ℕ) (hU : 1 ≤ U) :
    tailProperMass U N ≤ powerTailBudget U := by
  let P := (Ioc U N).filter Nat.Prime
  let K := Icc 2 N
  let f : ℕ × ℕ → ℝ := fun pk => Real.log (pk.1 : ℝ) / ((pk.1 : ℝ) ^ pk.2)
  have hf : ∀ pk ∈ P.product K, 0 ≤ f pk := by
    intro pk hpk
    have hp := (Finset.mem_filter.mp (Finset.mem_product.mp hpk).1).2
    exact div_nonneg (Real.log_nonneg (by exact_mod_cast hp.one_le)) (by positivity)
  calc
    tailProperMass U N = ∑ pk ∈ properExponentInventory U N, f pk :=
      tailProperMass_eq_exponent_sum U N
    _ ≤ ∑ pk ∈ P.product K, f pk :=
      Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _) (fun pk hpk _ => hf pk hpk)
    _ = ∑ p ∈ P, ∑ k ∈ K, Real.log (p : ℝ) / ((p : ℝ) ^ k) := by
      rw [Finset.product_eq_sprod, Finset.sum_product]
    _ ≤ ∑ p ∈ P, Real.log (p : ℝ) / ((p : ℝ) * ((p : ℝ) - 1)) := by
      apply Finset.sum_le_sum
      intro p hp
      exact finite_geometric_proper_le p N (Finset.mem_filter.mp hp).2
    _ ≤ ∑ p ∈ Ioc U N, Real.log (p : ℝ) / ((p : ℝ) * ((p : ℝ) - 1)) := by
      apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
      intro p hp hnot
      have hpU := (Finset.mem_Ioc.mp hp).1
      have hp1 : (1 : ℝ) < p := by exact_mod_cast (lt_of_le_of_lt hU hpU)
      exact div_nonneg (Real.log_nonneg hp1.le) (by positivity)
    _ ≤ powerTailBudget U := finite_integer_tail_budget U N hU

end RH16ProperPowerInventory
```
