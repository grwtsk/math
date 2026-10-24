# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ClosedProperPowerPrefixAttempt02.Variantefd3f39085acd9ed082870e42f1d008473aa5689402dfba052e212eb3c5b2dde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a6c2e1ee39ac8aa60883dbef8c947352d01650a` · SHA-256 `18775fcc37b191c0f0382e91826e6f5f164e5db2f53ade25407728c005a45bc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ProperExponentInventory.Variant1b147f512704f6789a3cffb7dd51510bb9d7c56cb1b178709ec6578ab3e9d490","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b147f512704f6789a3cffb7dd51510bb9d7c56cb1b178709ec6578ab3e9d490","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.ProperExponentInventory.Variant1b147f512704f6789a3cffb7dd51510bb9d7c56cb1b178709ec6578ab3e9d490","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"1b147f512704f6789a3cffb7dd51510bb9d7c56cb1b178709ec6578ab3e9d490","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass19/closed_prefix_dictionary/ClosedProperPowerPrefix-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.WeightedPrimeAbel
import Mathlib.Algebra.IsPrimePow
import Mathlib.Data.Nat.Prime.Int

/-! Literal weighted-Mangoldt minus closed-prime prefix dictionary.
Research direction grwtsk contributors; scratch construction OpenAI Codex.
No arithmetic intercept, Laurent, Ramaré or uniform signed witness premise. -/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ProperExponentInventory.Variant1b147f512704f6789a3cffb7dd51510bb9d7c56cb1b178709ec6578ab3e9d490

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ClosedProperPowerPrefix
open Finset ArithmeticFunction
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel

def properExponentInventory (N : ℕ) : Finset (ℕ × ℕ) :=
  (((Ioc 0 N).filter Nat.Prime).product (Icc 2 N)).filter
    (fun pk => pk.1 ^ pk.2 ≤ N)

theorem mem_inventory_iff (N p k : ℕ) :
    (p,k) ∈ properExponentInventory N ↔ p.Prime ∧ 2 ≤ k ∧ p^k ≤ N := by
  constructor
  · intro h
    obtain ⟨hprod,hupper⟩ := mem_filter.mp h
    obtain ⟨hpI,hkI⟩ := mem_product.mp hprod
    exact ⟨(mem_filter.mp hpI).2,(mem_Icc.mp hkI).1,hupper⟩
  · rintro ⟨hp,hk,hupper⟩
    have hpN : p ≤ N := by
      have hpk : p ≤ p^k := by
        conv_lhs => rw [← pow_one p]
        exact Nat.pow_le_pow_right hp.one_lt.le (by omega)
      exact hpk.trans hupper
    have hkN : k ≤ N := (Nat.lt_pow_self hp.one_lt).le.trans hupper
    exact mem_filter.mpr ⟨mem_product.mpr
      ⟨mem_filter.mpr ⟨mem_Ioc.mpr ⟨hp.pos,hpN⟩,hp⟩,mem_Icc.mpr ⟨hk,hkN⟩⟩,hupper⟩

theorem inventory_pow_injective (N : ℕ) :
    Set.InjOn (fun pk : ℕ × ℕ => pk.1 ^ pk.2) (properExponentInventory N) := by
  intro x hx y hy heq
  obtain ⟨hxProd, _⟩ := mem_filter.mp hx
  obtain ⟨hyProd, _⟩ := mem_filter.mp hy
  obtain ⟨hxP, hxK⟩ := mem_product.mp hxProd
  obtain ⟨hyP, hyK⟩ := mem_product.mp hyProd
  have hp := (mem_filter.mp hxP).2
  have hq := (mem_filter.mp hyP).2
  have hk := (mem_Icc.mp hxK).1
  have hl := (mem_Icc.mp hyK).1
  obtain ⟨h1,h2⟩ := hp.pow_inj' hq (by omega) (by omega) heq
  exact Prod.ext h1 h2

theorem weighted_difference_eq_proper_exponents (N : ℕ) :
    weightedMangoldt N - weightedPrime N =
      ∑ pk ∈ properExponentInventory N,
        Real.log (pk.1 : ℝ) / (pk.1 : ℝ)^pk.2 := by
  let S := (Ioc 0 N).filter (fun n => IsPrimePow n ∧ ¬n.Prime)
  have hzero : (∑ n ∈ Ioc 0 N, properPowerCoefficient n/(n : ℝ)) =
      ∑ n ∈ S, properPowerCoefficient n/(n : ℝ) := by
    symm
    apply sum_subset (filter_subset _ _)
    intro n hn hnot
    by_cases hprime : n.Prime
    · simp [properPowerCoefficient,primeCoefficient,hprime,vonMangoldt_apply_prime hprime]
    · have hpow : ¬IsPrimePow n := by
        intro hp
        exact hnot (mem_filter.mpr ⟨hn,hp,hprime⟩)
      simp [properPowerCoefficient,primeCoefficient,hprime,vonMangoldt_eq_zero_iff.mpr hpow]
  rw [weighted_difference,hzero]
  symm
  apply sum_bij (fun pk _ => pk.1 ^ pk.2)
  · intro pk hpk
    obtain ⟨hprod,hupper⟩ := mem_filter.mp hpk
    obtain ⟨hpI,hkI⟩ := mem_product.mp hprod
    have hp := (mem_filter.mp hpI).2
    have hk2 := (mem_Icc.mp hkI).1
    have hk : pk.2 ≠ 0 := by omega
    have hpow : IsPrimePow (pk.1 ^ pk.2) := hp.isPrimePow.pow hk
    exact mem_filter.mpr ⟨mem_Ioc.mpr ⟨by have := hpow.two_le; omega,hupper⟩,
      hpow,Nat.Prime.not_prime_pow hk2⟩
  · intro x hx y hy heq
    exact inventory_pow_injective N hx hy heq
  · intro n hn
    obtain ⟨hnI,hnPow,hnPrime⟩ := mem_filter.mp hn
    obtain ⟨p,hpn,k,hkn,hp,hk,heq⟩ := (isPrimePow_nat_iff_bounded n).mp hnPow
    have hk2 : 2 ≤ k := by
      have hk1 : k ≠ 1 := by
        intro h
        subst k
        simp only [pow_one] at heq
        exact hnPrime (heq ▸ hp)
      omega
    have hnN := (mem_Ioc.mp hnI).2
    refine ⟨(p,k),mem_filter.mpr ⟨mem_product.mpr ⟨?_,?_⟩,
      by simpa [heq] using hnN⟩,heq⟩
    · exact mem_filter.mpr ⟨mem_Ioc.mpr ⟨hp.pos,hpn.trans hnN⟩,hp⟩
    · exact mem_Icc.mpr ⟨hk2,hkn.trans hnN⟩
  · intro pk hpk
    obtain ⟨hprod,_⟩ := mem_filter.mp hpk
    obtain ⟨hpI,hkI⟩ := mem_product.mp hprod
    have hp := (mem_filter.mp hpI).2
    have hk2 := (mem_Icc.mp hkI).1
    have hk : pk.2 ≠ 0 := by omega
    simp [properPowerCoefficient,primeCoefficient,Nat.Prime.not_prime_pow hk2,
      vonMangoldt_apply_pow hk,vonMangoldt_apply_prime hp,Nat.cast_pow]

def actualProperPowerClosedPrefix (t : ℝ) : ℝ :=
  ∑ pk ∈ properExponentInventory ⌊Real.exp t⌋₊,
    Real.log (pk.1 : ℝ)/(pk.1 : ℝ)^pk.2

theorem actual_closed_prefix_dictionary (t : ℝ) :
    weightedMangoldt ⌊Real.exp t⌋₊ - primeLogPrefix t =
      actualProperPowerClosedPrefix t :=
  weighted_difference_eq_proper_exponents ⌊Real.exp t⌋₊

theorem prime_power_closed_onset_iff (t : ℝ) {p k : ℕ} (hp : p.Prime) :
    p^k ≤ ⌊Real.exp t⌋₊ ↔ (k : ℝ)*Real.log (p : ℝ) ≤ t := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  rw [Nat.le_floor_iff (Real.exp_pos t).le,Nat.cast_pow]
  rw [← Real.log_le_iff_le_exp (pow_pos hp0 k),Real.log_pow]

theorem actual_inventory_log_onsets_iff (t : ℝ) (p k : ℕ) :
    (p,k) ∈ properExponentInventory ⌊Real.exp t⌋₊ ↔
      p.Prime ∧ 2 ≤ k ∧ (k : ℝ)*Real.log (p : ℝ) ≤ t := by
  rw [mem_inventory_iff]
  constructor
  · rintro ⟨hp,hk,hupper⟩
    exact ⟨hp,hk,(prime_power_closed_onset_iff t hp).mp hupper⟩
  · rintro ⟨hp,hk,hupper⟩
    exact ⟨hp,hk,(prime_power_closed_onset_iff t hp).mpr hupper⟩

theorem touching_onset_retained {p k : ℕ} (hp : p.Prime) (hk : 2 ≤ k) :
    (p,k) ∈ properExponentInventory ⌊Real.exp ((k : ℝ)*Real.log (p : ℝ))⌋₊ :=
  (actual_inventory_log_onsets_iff _ p k).mpr ⟨hp,hk,le_rfl⟩

end ContinuousResearch.ClosedProperPowerPrefix
```
