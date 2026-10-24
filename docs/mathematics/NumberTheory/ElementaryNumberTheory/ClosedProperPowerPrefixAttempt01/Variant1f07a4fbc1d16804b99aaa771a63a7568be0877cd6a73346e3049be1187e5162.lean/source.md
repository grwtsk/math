# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ClosedProperPowerPrefixAttempt01.Variant1f07a4fbc1d16804b99aaa771a63a7568be0877cd6a73346e3049be1187e5162

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09d76ba2cdf071752332df18b9ce3cb4d716e411` · SHA-256 `14754c6eb6955033347e42cc18e84149add3383049713aa8c78549e1e4d710cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ProperExponentInventory.Variante1678eefbb821f950bca2cb07a984e1310843d337338123beea7093bb95cf23a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1678eefbb821f950bca2cb07a984e1310843d337338123beea7093bb95cf23a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.ProperExponentInventory.Variante1678eefbb821f950bca2cb07a984e1310843d337338123beea7093bb95cf23a","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"e1678eefbb821f950bca2cb07a984e1310843d337338123beea7093bb95cf23a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass19/closed_prefix_dictionary/ClosedProperPowerPrefix-attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.WeightedPrimeAbel
import Mathlib.Algebra.IsPrimePow
import Mathlib.Data.Nat.Prime.Int

/-! Literal weighted-Mangoldt minus closed-prime prefix dictionary.
Research direction grwtsk contributors; scratch construction OpenAI Codex.
No arithmetic intercept, Laurent, Ramaré or uniform signed witness premise. -/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ProperExponentInventory.Variante1678eefbb821f950bca2cb07a984e1310843d337338123beea7093bb95cf23a

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ClosedProperPowerPrefix
open Finset ArithmeticFunction
open FormalResearch.RiemannHypothesis.WeightedPrimeMertens
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel

def properExponentInventory (N : ℕ) : Finset (ℕ × ℕ) :=
  (((Ioc 0 N).filter Nat.Prime).product (Icc 2 N)).filter
    (fun pk => pk.1 ^ pk.2 ≤ N)

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

end ContinuousResearch.ClosedProperPowerPrefix
```
