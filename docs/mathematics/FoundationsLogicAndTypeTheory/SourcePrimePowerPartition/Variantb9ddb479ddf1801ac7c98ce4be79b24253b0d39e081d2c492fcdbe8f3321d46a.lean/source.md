# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SourcePrimePowerPartition.Variantb9ddb479ddf1801ac7c98ce4be79b24253b0d39e081d2c492fcdbe8f3321d46a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95c005393a37a7709d6f4ea40f0c7d136473dab7` · SHA-256 `9827c837ee9d3a0842e47d9477068ec1e46f8718a4ef285e3aee6301b66c87aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FirstPrimeMoment.Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FirstPrimeMoment.Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/RiemannHypothesis/SourcePrimePowerPartition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import Mathlib.Data.Nat.Prime.Int
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecificLimits.Basic

/-!
# Literal prime-power sectors of the unchanged source

The closed source inventory is partitioned with its actual natural floor and
prime/exponent uniqueness. The higher-power sector admits a summable absolute
envelope after this exact partition; the first-prime signed target remains open.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FirstPrimeMoment.Variantd00684c43f6d12f794800d23502f174a779326b95ee4574fa959e4c614a11a41

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourcePrimePowerPartition

open ArithmeticFunction
open SourcePairing SourcePrimeSquareMainTerm SourceDiagonalMainTerm WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit EstimatePrimeSmoothDefect
open EstimateMertensResidual

noncomputable section

/-- The literal first-prime sector of the original closed source inventory. -/
def firstPrimeMoment (A : ℝ) : ℝ :=
  ∑ p ∈ primeLogInventory (2 * A), vonMangoldt p * closedPrimeWeight A p

/-- Finite prime/exponent coordinates for the full closed source inventory. -/
def primeExponentInventory (A : ℝ) : Finset (ℕ × ℕ) :=
  ((primeLogInventory (2 * A)).product (Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊)).filter
    (fun pk => pk.1 ^ pk.2 ≤ ⌊Real.exp (2 * A)⌋₊)

/-- The literal exponent-at-least-three sector with the unchanged closed upper floor. -/
def higherPrimePowerInventory (A : ℝ) : Finset (ℕ × ℕ) :=
  ((primeLogInventory (2 * A)).product (Finset.Icc 3 ⌊Real.exp (2 * A)⌋₊)).filter
    (fun pk => pk.1 ^ pk.2 ≤ ⌊Real.exp (2 * A)⌋₊)

/-- The actual source coefficients in the literal higher-power sector. -/
def higherPrimePowerMoment (A : ℝ) : ℝ :=
  ∑ pk ∈ higherPrimePowerInventory A,
    vonMangoldt (pk.1 ^ pk.2) * closedPrimeWeight A (pk.1 ^ pk.2)

/-- A non-prime-power integer carries zero in the actual closed source moment. -/
theorem source_coefficient_zero_of_not_isPrimePow (A : ℝ) {n : ℕ}
    (hn : ¬IsPrimePow n) : vonMangoldt n * closedPrimeWeight A n = 0 := by
  rw [vonMangoldt_eq_zero_iff.mpr hn, zero_mul]

/-- Positive prime exponents give unique coordinates, including their exact exponent. -/
theorem primeExponentInventory_pow_injective (A : ℝ) :
    Set.InjOn (fun pk : ℕ × ℕ => pk.1 ^ pk.2) (primeExponentInventory A) := by
  intro x hx y hy heq
  obtain ⟨hxProd, _⟩ := Finset.mem_filter.mp hx
  obtain ⟨hyProd, _⟩ := Finset.mem_filter.mp hy
  obtain ⟨hxP, hxK⟩ := Finset.mem_product.mp hxProd
  obtain ⟨hyP, hyK⟩ := Finset.mem_product.mp hyProd
  have hp := (Finset.mem_filter.mp hxP).2
  have hq := (Finset.mem_filter.mp hyP).2
  have hk := (Finset.mem_Icc.mp hxK).1
  have hl := (Finset.mem_Icc.mp hyK).1
  obtain ⟨h1, h2⟩ := hp.pow_inj' hq (by omega) (by omega) heq
  exact Prod.ext h1 h2

/-- Finite prime/exponent coordinates reconstruct the entire closed source moment exactly. -/
theorem closedPrimeMoment_eq_primeExponent_sum (A : ℝ) :
    closedPrimeMoment A = ∑ pk ∈ primeExponentInventory A,
      vonMangoldt (pk.1 ^ pk.2) * closedPrimeWeight A (pk.1 ^ pk.2) := by
  let S := (primePowerInventory (2 * A)).filter IsPrimePow
  have hzero : closedPrimeMoment A = ∑ n ∈ S, vonMangoldt n * closedPrimeWeight A n := by
    unfold closedPrimeMoment closedPrimeWeight
    symm
    apply Finset.sum_subset (Finset.filter_subset _ _)
    intro n hn hnot
    have hn' : ¬IsPrimePow n := by simpa [S, Finset.mem_filter, hn] using hnot
    rw [vonMangoldt_eq_zero_iff.mpr hn', zero_mul]
  rw [hzero]
  symm
  apply Finset.sum_bij (fun pk _ => pk.1 ^ pk.2)
  · intro pk hpk
    obtain ⟨hprod, hupper⟩ := Finset.mem_filter.mp hpk
    obtain ⟨hpI, hkI⟩ := Finset.mem_product.mp hprod
    have hp := (Finset.mem_filter.mp hpI).2
    have hk : pk.2 ≠ 0 := by have := (Finset.mem_Icc.mp hkI).1; omega
    have hpow : IsPrimePow (pk.1 ^ pk.2) := hp.isPrimePow.pow hk
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hpow.two_le, hupper⟩, hpow⟩
  · intro x hx y hy heq
    exact primeExponentInventory_pow_injective A hx hy heq
  · intro n hn
    obtain ⟨hnI, hnPow⟩ := Finset.mem_filter.mp hn
    obtain ⟨p, hpn, k, hkn, hp, hk, heq⟩ := (isPrimePow_nat_iff_bounded n).mp hnPow
    have hnN := (Finset.mem_Icc.mp hnI).2
    refine ⟨(p, k), ?_, heq⟩
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_product.mpr ⟨?_, ?_⟩, by simpa [heq] using hnN⟩
    · exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hp.pos, hpn.trans hnN⟩, hp⟩
    · exact Finset.mem_Icc.mpr ⟨hk, hkn.trans hnN⟩
  · intro pk hpk
    rfl

private theorem exponent_sum_first_two (N : ℕ) (hN : 2 ≤ N) (f : ℕ → ℝ) :
    (∑ k ∈ Finset.Icc 1 N, f k) = f 1 + f 2 + ∑ k ∈ Finset.Icc 3 N, f k := by
  have hI : Finset.Icc 1 N = insert 1 (insert 2 (Finset.Icc 3 N)) := by
    ext k
    simp only [Finset.mem_Icc, Finset.mem_insert]
    omega
  rw [hI, Finset.sum_insert (by simp), Finset.sum_insert (by simp)]
  ring

private theorem square_prime_filter (A : ℝ) :
    (primeLogInventory (2 * A)).filter
      (fun p => p ^ 2 ≤ ⌊Real.exp (2 * A)⌋₊) = primeLogInventory A := by
  ext p
  constructor
  · intro hp
    obtain ⟨hI, hupper⟩ := Finset.mem_filter.mp hp
    have hprime := (Finset.mem_filter.mp hI).2
    apply (prime_square_mem_source_inventory_iff A hprime).mp
    exact Finset.mem_Icc.mpr ⟨by nlinarith [hprime.two_le], hupper⟩
  · intro hp
    have hprime := (Finset.mem_filter.mp hp).2
    have hp2 := (prime_square_mem_source_inventory_iff A hprime).mpr hp
    have hupper := (Finset.mem_Icc.mp hp2).2
    have hple : p ≤ p ^ 2 := by nlinarith [hprime.two_le]
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨hprime.pos, hple.trans hupper⟩,
        hprime⟩, hupper⟩

/-- The literal closed moment splits into first primes, checked squares and higher powers. -/
theorem closedPrimeMoment_eq_first_square_higher (A : ℝ) :
    closedPrimeMoment A = firstPrimeMoment A + primeSquareMoment A +
      higherPrimePowerMoment A := by
  rw [closedPrimeMoment_eq_primeExponent_sum]
  simp only [primeExponentInventory, Finset.sum_filter, Finset.product_eq_sprod]
  rw [Finset.sum_product]
  have hs : (∑ p ∈ primeLogInventory (2 * A),
      ∑ k ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
        if p ^ k ≤ ⌊Real.exp (2 * A)⌋₊ then
          vonMangoldt (p ^ k) * closedPrimeWeight A (p ^ k) else 0) =
      firstPrimeMoment A +
        (∑ p ∈ primeLogInventory (2 * A), if p ^ 2 ≤ ⌊Real.exp (2 * A)⌋₊ then
          vonMangoldt (p ^ 2) * closedPrimeWeight A (p ^ 2) else 0) +
        higherPrimePowerMoment A := by
    unfold firstPrimeMoment higherPrimePowerMoment higherPrimePowerInventory
    simp only [Finset.sum_filter, Finset.product_eq_sprod]
    rw [Finset.sum_product]
    simp only [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    obtain ⟨hpI, hprime⟩ := Finset.mem_filter.mp hp
    have hple := (Finset.mem_Ioc.mp hpI).2
    have hN : 2 ≤ ⌊Real.exp (2 * A)⌋₊ := hprime.two_le.trans hple
    rw [exponent_sum_first_two _ hN]
    simp only [pow_one, if_pos hple]
  rw [hs, ← Finset.sum_filter, square_prime_filter]
  rfl

/-- The actual prime-power coefficient retains the original normalized correlation. -/
theorem prime_power_source_coefficient (A : ℝ) {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    vonMangoldt (p ^ k) * closedPrimeWeight A (p ^ k) =
      Real.log (p : ℝ) * ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ k *
        sourceCorrelation explicitSecondDerivative A ((k : ℝ) * Real.log p) := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  rw [vonMangoldt_apply_pow hk, vonMangoldt_apply_prime hp]
  unfold closedPrimeWeight exponentialTest
  rw [Nat.cast_pow, Real.log_pow, ← Real.rpow_mul_natCast hp0.le,
    Real.rpow_def_of_pos hp0]
  rw [show -((k : ℝ) * Real.log (p : ℝ)) / 2 =
    Real.log (p : ℝ) * ((-(1 : ℝ) / 2) * (k : ℝ)) by ring]
  ring

/-- Exponent zero is excluded materially: its source coefficient is zero,
whereas the claimed prime coefficient would be positive. -/
theorem prime_power_source_zero_exponent_guard (A : ℝ) (hA : 1 ≤ A)
    {p : ℕ} (hp : p.Prime) :
    vonMangoldt (p ^ 0) * closedPrimeWeight A (p ^ 0) ≠
      Real.log (p : ℝ) * ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ 0 *
        sourceCorrelation explicitSecondDerivative A ((0 : ℕ) * Real.log p) := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hlambda : vonMangoldt 1 = 0 := vonMangoldt_eq_zero_iff.mpr not_isPrimePow_one
  have hc := EstimateCorrelation.actual_correlation_at_zero A hA
  simpa only [pow_zero, hlambda, zero_mul, Nat.cast_zero, mul_one, hc] using
    (ne_of_lt (Real.log_pos hp1))

private theorem prime_geometric_ratio {p : ℕ} (hp : p.Prime) :
    0 ≤ (p : ℝ) ^ (-(1 : ℝ) / 2) ∧ (p : ℝ) ^ (-(1 : ℝ) / 2) ≤ 3 / 4 := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have h0 := Real.rpow_nonneg hp0.le (-(1 : ℝ) / 2)
  have he : ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ 2 = (p : ℝ)⁻¹ := by
    rw [← Real.rpow_mul_natCast hp0.le]
    rw [show (-(1 : ℝ) / 2) * (2 : ℕ) = (-1 : ℝ) by norm_num,
      Real.rpow_neg_one]
  have hinv : (p : ℝ)⁻¹ ≤ 1 / 2 := by
    rw [inv_le_iff_one_le_mul₀ hp0]
    nlinarith
  refine ⟨h0, ?_⟩
  nlinarith

private theorem sum_geometric_Icc_three (N : ℕ) (r : ℝ) (hr0 : 0 ≤ r) (hr : r < 1) :
    (∑ k ∈ Finset.Icc 3 N, r ^ k) ≤ r ^ 3 * (1 - r)⁻¹ := by
  have hs : (∑ k ∈ Finset.Icc 3 N, r ^ k) =
      ∑ j ∈ Finset.range (N - 2), r ^ (j + 3) := by
    apply Finset.sum_bij (fun k _ => k - 3)
    · intro k hk
      simp only [Finset.mem_Icc] at hk
      simp only [Finset.mem_range]
      omega
    · intro x hx y hy he
      simp only [Finset.mem_Icc] at hx hy
      omega
    · intro j hj
      refine ⟨j + 3, ?_, by omega⟩
      simp only [Finset.mem_range] at hj
      simp only [Finset.mem_Icc]
      omega
    · intro k hk
      have hk3 := (Finset.mem_Icc.mp hk).1
      congr 1
      omega
  have ht := (summable_geometric_of_lt_one hr0 hr).sum_le_tsum
    (Finset.range (N - 2)) (fun i _ => pow_nonneg hr0 i)
  rw [tsum_geometric_of_lt_one hr0 hr] at ht
  have hs' : (∑ j ∈ Finset.range (N - 2), r ^ (j + 3)) =
      r ^ 3 * ∑ j ∈ Finset.range (N - 2), r ^ j := by
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro j hj
    rw [pow_add]
    ring
  rw [hs, hs']
  exact mul_le_mul_of_nonneg_left ht (pow_nonneg hr0 3)

private theorem prime_geometric_tail_le {p : ℕ} (hp : p.Prime) (N : ℕ) :
    Real.log (p : ℝ) * (∑ k ∈ Finset.Icc 3 N, ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ k) ≤
      16 * (p : ℝ) ^ (-(5 : ℝ) / 4) := by
  have hp0 : 0 < (p : ℝ) := by exact_mod_cast hp.pos
  have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast hp.one_le
  have hlog := Real.log_nonneg hp1
  obtain ⟨hr0, hr⟩ := prime_geometric_ratio hp
  have hsum := sum_geometric_Icc_three N ((p : ℝ) ^ (-(1 : ℝ) / 2)) hr0 (by linarith)
  have hi : (1 - (p : ℝ) ^ (-(1 : ℝ) / 2))⁻¹ ≤ 4 := by
    rw [inv_le_iff_one_le_mul₀ (by linarith : 0 < 1 - (p : ℝ) ^ (-(1 : ℝ) / 2))]
    linarith
  have hlogpow := Real.log_le_rpow_div hp0.le (by norm_num : (0 : ℝ) < 1 / 4)
  calc
    _ ≤ Real.log (p : ℝ) * (((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ 3 *
        (1 - (p : ℝ) ^ (-(1 : ℝ) / 2))⁻¹) := mul_le_mul_of_nonneg_left hsum hlog
    _ ≤ Real.log (p : ℝ) * (((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ 3 * 4) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hi (pow_nonneg hr0 3)) hlog
    _ ≤ ((p : ℝ) ^ ((1 : ℝ) / 4) / (1 / 4)) *
        (((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ 3 * 4) :=
      mul_le_mul_of_nonneg_right hlogpow (by positivity)
    _ = 16 * (p : ℝ) ^ (-(5 : ℝ) / 4) := by
      rw [← Real.rpow_mul_natCast hp0.le]
      have he : (p : ℝ) ^ ((1 : ℝ) / 4) * (p : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ)) =
          (p : ℝ) ^ (-(5 : ℝ) / 4) := by
        rw [← Real.rpow_add hp0]
        congr 1
        norm_num
      calc
        _ = 16 * ((p : ℝ) ^ ((1 : ℝ) / 4) *
            (p : ℝ) ^ ((-(1 : ℝ) / 2) * (3 : ℕ))) := by ring
        _ = _ := by rw [he]

/-- The all-natural p-series used for the higher-power budget is genuinely summable. -/
theorem higherPrimePowerBudget_summability :
    Summable (fun n : ℕ => (n : ℝ) ^ (-(5 : ℝ) / 4)) :=
  Real.summable_nat_rpow.mpr (by norm_num)

/-- An explicit finite budget for the exponent-at-least-three source sector. -/
def higherPrimePowerBudget : ℝ :=
  16 * ∑' n : ℕ, (n : ℝ) ^ (-(5 : ℝ) / 4)

/-- The higher-power budget is nonnegative, with its series justified independently. -/
theorem higherPrimePowerBudget_nonneg : 0 ≤ higherPrimePowerBudget := by
  unfold higherPrimePowerBudget
  exact mul_nonneg (by norm_num) (tsum_nonneg fun n => Real.rpow_nonneg n.cast_nonneg _)

/-- Normalization bounds one actual prime-power source coefficient without changing its kernel. -/
theorem prime_power_source_coefficient_abs_le (A : ℝ) (hA : 1 ≤ A)
    {p k : ℕ} (hp : p.Prime) (hk : k ≠ 0) :
    |vonMangoldt (p ^ k) * closedPrimeWeight A (p ^ k)| ≤
      Real.log (p : ℝ) * ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ k := by
  have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast hp.one_le
  have hlog := Real.log_nonneg hp1
  have hr0 := Real.rpow_nonneg (Nat.cast_nonneg p) (-(1 : ℝ) / 2)
  rw [prime_power_source_coefficient A hp hk, abs_mul, abs_mul,
    abs_of_nonneg hlog, abs_of_nonneg (pow_nonneg hr0 k)]
  have hc := EstimateCorrelation.actual_correlation_abs_le_one A
    ((k : ℝ) * Real.log p) hA
  simpa only [mul_one] using
    mul_le_mul_of_nonneg_left hc (mul_nonneg hlog (pow_nonneg hr0 k))

/-- The literal higher-power source sector has an unconditional scale-independent budget. -/
theorem higherPrimePowerMoment_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |higherPrimePowerMoment A| ≤ higherPrimePowerBudget := by
  let P := primeLogInventory (2 * A)
  let K := Finset.Icc 3 ⌊Real.exp (2 * A)⌋₊
  let f : ℕ × ℕ → ℝ := fun pk =>
    Real.log (pk.1 : ℝ) * ((pk.1 : ℝ) ^ (-(1 : ℝ) / 2)) ^ pk.2
  have hf : ∀ pk ∈ P.product K, 0 ≤ f pk := by
    intro pk hpk
    have hp := (Finset.mem_filter.mp (Finset.mem_product.mp hpk).1).2
    have hp1 : (1 : ℝ) ≤ pk.1 := by exact_mod_cast hp.one_le
    exact mul_nonneg (Real.log_nonneg hp1)
      (pow_nonneg (Real.rpow_nonneg (Nat.cast_nonneg _) _) _)
  have hsubset : higherPrimePowerInventory A ⊆ P.product K := Finset.filter_subset _ _
  calc
    |higherPrimePowerMoment A| ≤ ∑ pk ∈ higherPrimePowerInventory A,
        |vonMangoldt (pk.1 ^ pk.2) * closedPrimeWeight A (pk.1 ^ pk.2)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ pk ∈ higherPrimePowerInventory A, f pk := by
      apply Finset.sum_le_sum
      intro pk hpk
      obtain ⟨hprod, _⟩ := Finset.mem_filter.mp hpk
      obtain ⟨hpI, hkI⟩ := Finset.mem_product.mp hprod
      have hk : pk.2 ≠ 0 := by have := (Finset.mem_Icc.mp hkI).1; omega
      exact prime_power_source_coefficient_abs_le A hA (Finset.mem_filter.mp hpI).2 hk
    _ ≤ ∑ pk ∈ P.product K, f pk :=
      Finset.sum_le_sum_of_subset_of_nonneg hsubset (fun pk hpk _ => hf pk hpk)
    _ = ∑ p ∈ P, Real.log (p : ℝ) * ∑ k ∈ K, ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ k := by
      rw [Finset.product_eq_sprod, Finset.sum_product]
      apply Finset.sum_congr rfl
      intro p hp
      change (∑ k ∈ K, Real.log (p : ℝ) * ((p : ℝ) ^ (-(1 : ℝ) / 2)) ^ k) = _
      rw [Finset.mul_sum]
    _ ≤ ∑ p ∈ P, 16 * (p : ℝ) ^ (-(5 : ℝ) / 4) := by
      apply Finset.sum_le_sum
      intro p hp
      exact prime_geometric_tail_le (Finset.mem_filter.mp hp).2 _
    _ ≤ higherPrimePowerBudget := by
      unfold higherPrimePowerBudget
      rw [← Finset.mul_sum]
      apply mul_le_mul_of_nonneg_left _ (by norm_num)
      exact higherPrimePowerBudget_summability.sum_le_tsum P
        (fun n _ => Real.rpow_nonneg (Nat.cast_nonneg n) _)

/-- The exact residual differs from first primes plus the explicit square main term
by a bounded error. -/
theorem residual_sub_firstPrime_main_abs_le (C : ℝ) (hC0 : 0 ≤ C)
    (hC : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C) (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - (firstPrimeMoment A + diagonalMainCoefficient A * A)| ≤
      11 * C + higherPrimePowerBudget := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_first_square_higher]
  calc
    _ = |(primeSquareMoment A - diagonalMainCoefficient A * A) + higherPrimePowerMoment A| := by
      congr 1
      ring
    _ ≤ |primeSquareMoment A - diagonalMainCoefficient A * A| + |higherPrimePowerMoment A| :=
      abs_add_le _ _
    _ ≤ 11 * C + higherPrimePowerBudget :=
      add_le_add (primeSquareMoment_main_term_error_of_mertens C hC0 hC A hA)
        (higherPrimePowerMoment_abs_le A hA)

/-- An unconditional actual witness bounds only the replacement error,
not the first-prime sector. -/
theorem residual_firstPrime_uniform_replacement_error :
    ∃ E : ℝ, 0 ≤ E ∧ ∀ A : ℝ, 1 ≤ A →
      |mertensResidual A - (firstPrimeMoment A + diagonalMainCoefficient A * A)| ≤ E := by
  obtain ⟨C, hC0, hC, _⟩ := primeSquareMoment_uniform_main_term_error
  exact ⟨11 * C + higherPrimePowerBudget,
    add_nonneg (mul_nonneg (by norm_num) hC0) higherPrimePowerBudget_nonneg,
    residual_sub_firstPrime_main_abs_le C hC0 hC⟩

/-- The remaining one-sided target retains first-prime signed compensation
of the square main term. -/
def FirstPrimeTailUpperBound : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    firstPrimeMoment A + diagonalMainCoefficient A * A ≤ D

/-- First-prime-plus-main upper control and the unchanged exact residual tail
target are equivalent. -/
theorem firstPrime_tail_iff_residual_tail :
    FirstPrimeTailUpperBound ↔ MertensResidualTailUpperBound := by
  obtain ⟨E, hE, herror⟩ := residual_firstPrime_uniform_replacement_error
  constructor
  · rintro ⟨D, hD, R, hR, hP⟩
    refine ⟨D + E, add_nonneg hD hE, R, hR, ?_⟩
    intro A hRA
    have he := (abs_le.mp (herror A (hR.trans hRA))).2
    linarith [hP A hRA]
  · rintro ⟨D, hD, R, hR, hr⟩
    refine ⟨D + E, add_nonneg hD hE, R, hR, ?_⟩
    intro A hRA
    have he := (abs_le.mp (herror A (hR.trans hRA))).1
    linarith [hr A hRA]

/-- The source signed-pairing frontier keeps an exact equivalence to the new one-sided target. -/
theorem signed_pairing_tail_iff_firstPrime_tail :
    EstimateTailReduction.SignedPairingTailLowerBound ↔ FirstPrimeTailUpperBound :=
  signed_pairing_tail_iff_mertens_residual_tail.trans firstPrime_tail_iff_residual_tail.symm

/-- A future actual first-prime upper witness reaches the existing unchanged estimate consumer. -/
theorem estimate_of_firstPrime_tail (h : FirstPrimeTailUpperBound) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail (firstPrime_tail_iff_residual_tail.mp h)

end
end FormalResearch.RiemannHypothesis.SourcePrimePowerPartition
```
