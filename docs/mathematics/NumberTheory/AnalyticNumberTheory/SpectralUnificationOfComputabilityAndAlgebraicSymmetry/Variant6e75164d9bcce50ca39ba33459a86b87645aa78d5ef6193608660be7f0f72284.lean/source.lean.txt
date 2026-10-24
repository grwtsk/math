import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import Mathlib.Data.Nat.Factorization.PrimePow

/-!
# Exact prime and higher-power sectors of the actual residual

The first-prime sector, all even prime-power exponents, and odd exponents at
least three retain the unchanged source correlation and closed finite cutoff.
The even sector uses `Λ(n)`, with no extra factor of two.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePrimePowerSectors

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization PrimePowerDescent EstimatePrimeSmoothDefect EstimateMertensResidual

noncomputable section

/-- The actual contribution from primes to exponent one, with the closed source cutoff. -/
def primeFirstMoment (A : ℝ) : ℝ :=
  ∑ p ∈ (primePowerInventory (2 * A)).filter Nat.Prime,
    Real.log (p : ℝ) / Real.sqrt p *
      sourceCorrelation explicitSecondDerivative A (Real.log p)

/-- Every even exponent is represented by squaring a prime power, without doubling `Λ`. -/
def evenPowerMoment (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory A, ArithmeticFunction.vonMangoldt n / (n : ℝ) *
    sourceCorrelation explicitSecondDerivative A (2 * Real.log n)

/-- The genuine finite sector with prime exponents `3,5,7,...`. -/
def oddHigherMoment (A : ℝ) : ℝ :=
  ∑ p ∈ (primePowerInventory (2 * A)).filter Nat.Prime,
    ∑ k ∈ (Finset.range ⌊Real.exp (2 * A)⌋₊).filter
      (fun k ↦ p ^ (2 * k + 3) ≤ ⌊Real.exp (2 * A)⌋₊),
      Real.log (p : ℝ) / Real.sqrt (p ^ (2 * k + 3) : ℕ) *
        sourceCorrelation explicitSecondDerivative A (Real.log (p ^ (2 * k + 3) : ℕ))

/-- Squaring transports the exact real exponential cutoff in both directions. -/
theorem square_cutoff_iff (A : ℝ) (n : ℕ) :
    ((n ^ 2 : ℕ) : ℝ) ≤ Real.exp (2 * A) ↔ (n : ℝ) ≤ Real.exp A := by
  rw [Nat.cast_pow, show 2 * A = A + A by ring, Real.exp_add, ← pow_two]
  exact sq_le_sq₀ (Nat.cast_nonneg n) (Real.exp_pos A).le

/-- The closed integer square inventory is exactly the half-height inventory. -/
theorem square_mem_inventory_iff (A : ℝ) (n : ℕ) :
    n ^ 2 ∈ primePowerInventory (2 * A) ↔ n ∈ primePowerInventory A := by
  simp only [primePowerInventory, Finset.mem_Icc,
    Nat.le_floor_iff (Real.exp_pos _).le, square_cutoff_iff]
  have hn : 2 ≤ n ^ 2 ↔ 2 ≤ n := by
    constructor
    · intro h
      by_contra hnot
      interval_cases n <;> norm_num at h
    · intro h
      nlinarith
  rw [hn]

/-- Exact finite reindexing of all square atoms, including the closed upper atom. -/
theorem sum_square_inventory (A : ℝ) (f : ℕ → ℝ) :
    (∑ n ∈ (primePowerInventory (2 * A)).filter IsSquare, f n) =
      ∑ n ∈ primePowerInventory A, f (n ^ 2) := by
  classical
  symm
  apply Finset.sum_bij (fun n _ ↦ n ^ 2)
  · intro n hn
    exact Finset.mem_filter.mpr
      ⟨(square_mem_inventory_iff A n).mpr hn, (isSquare_iff_exists_sq _).mpr ⟨n, rfl⟩⟩
  · intro a _ b _ hab
    exact Nat.pow_left_injective (by norm_num : (2 : ℕ) ≠ 0) hab
  · intro n hn
    obtain ⟨hinv, hs⟩ := Finset.mem_filter.mp hn
    obtain ⟨a, ha⟩ := hs.exists_sq n
    refine ⟨a, (square_mem_inventory_iff A a).mp ?_, ha.symm⟩
    rwa [← ha]
  · intro n _
    rfl

private theorem odd_power_properties (p k : ℕ) (hp : p.Prime) :
    IsPrimePow (p ^ (2 * k + 3)) ∧ ¬Nat.Prime (p ^ (2 * k + 3)) ∧
      ¬IsSquare (p ^ (2 * k + 3)) := by
  refine ⟨(isPrimePow_nat_iff _).mpr ⟨p, 2 * k + 3, hp, by omega, rfl⟩, ?_, ?_⟩
  · intro hq
    have h := (hp.pow_inj' hq (by omega) (by norm_num : (1 : ℕ) ≠ 0)
      (by simp : p ^ (2 * k + 3) = (p ^ (2 * k + 3)) ^ 1)).2
    omega
  · intro hs
    obtain ⟨a, ha⟩ := hs.exists_sq (p ^ (2 * k + 3))
    have hd := Nat.exponent_dvd_of_prime_pow_eq_pow hp ha
    have hm := Nat.mod_eq_zero_of_dvd hd
    omega

/-- Unique prime-base/exponent transport of the complete odd higher-power inventory. -/
theorem sum_odd_prime_power_inventory (N : ℕ) (f : ℕ → ℝ) :
    (∑ n ∈ (Finset.Icc 2 N).filter
      (fun n ↦ IsPrimePow n ∧ ¬Nat.Prime n ∧ ¬IsSquare n), f n) =
      ∑ p ∈ (Finset.Icc 2 N).filter Nat.Prime,
        ∑ k ∈ (Finset.range N).filter (fun k ↦ p ^ (2 * k + 3) ≤ N),
          f (p ^ (2 * k + 3)) := by
  classical
  rw [Finset.sum_sigma']
  symm
  apply Finset.sum_bij (fun a _ ↦ a.1 ^ (2 * a.2 + 3))
  · rintro ⟨p, k⟩ ha
    obtain ⟨hp, hk⟩ := Finset.mem_sigma.mp ha
    obtain ⟨_, hp⟩ := Finset.mem_filter.mp hp
    obtain ⟨_, hbound⟩ := Finset.mem_filter.mp hk
    have hprops := odd_power_properties p k hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hprops.1.two_le, hbound⟩, hprops⟩
  · rintro ⟨p, k⟩ ha ⟨q, l⟩ hb heq
    have hp := (Finset.mem_filter.mp (Finset.mem_sigma.mp ha).1).2
    have hq := (Finset.mem_filter.mp (Finset.mem_sigma.mp hb).1).2
    obtain ⟨hpq, hkl⟩ := hp.pow_inj' hq (by omega) (by omega) heq
    dsimp only at hpq hkl
    have hk : k = l := by omega
    subst q
    subst l
    rfl
  · intro n hn
    obtain ⟨hn, hpp, hnp, hns⟩ := Finset.mem_filter.mp hn
    obtain ⟨hn2, hnN⟩ := Finset.mem_Icc.mp hn
    obtain ⟨p, e, hp, he, hpow⟩ := (isPrimePow_nat_iff n).mp hpp
    have he1 : e ≠ 1 := by
      intro h
      subst e
      simp only [pow_one] at hpow
      exact hnp (hpow ▸ hp)
    have hmod : e % 2 ≠ 0 := by
      intro hm
      apply hns
      refine (isSquare_iff_exists_sq _).mpr ⟨p ^ (e / 2), ?_⟩
      rw [← pow_mul]
      have hd : e / 2 * 2 = e := by omega
      rw [hd, hpow]
    let k := e / 2 - 1
    have hek : e = 2 * k + 3 := by dsimp [k]; omega
    have hpN : p ≤ N := (Nat.le_pow he).trans (hpow ▸ hnN)
    have hkN : k < N := by
      have heN : e < p ^ e := Nat.lt_pow_self hp.one_lt
      rw [hpow] at heN
      omega
    refine ⟨⟨p, k⟩, Finset.mem_sigma.mpr
      ⟨Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hp.two_le, hpN⟩, hp⟩,
        Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hkN, ?_⟩⟩, ?_⟩
    · rwa [← hek, hpow]
    · simpa only [← hek] using hpow
  · intro a _
    rfl

private def sourceTerm (A : ℝ) (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt n / Real.sqrt n *
    sourceCorrelation explicitSecondDerivative A (Real.log n)

private theorem sourceTerm_partition (A : ℝ) (N : ℕ) :
    (∑ n ∈ Finset.Icc 2 N, sourceTerm A n) =
      (∑ n ∈ (Finset.Icc 2 N).filter Nat.Prime, sourceTerm A n) +
      (∑ n ∈ (Finset.Icc 2 N).filter IsSquare, sourceTerm A n) +
      ∑ n ∈ (Finset.Icc 2 N).filter
        (fun n ↦ IsPrimePow n ∧ ¬Nat.Prime n ∧ ¬IsSquare n), sourceTerm A n := by
  classical
  simp_rw [Finset.sum_filter]
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hpp : IsPrimePow n
  · by_cases hp : Nat.Prime n
    · have hs : ¬IsSquare n := hp.prime.not_isSquare
      simp [hpp, hp, hs]
    · by_cases hs : IsSquare n <;> simp [hpp, hp, hs]
  · have hz : sourceTerm A n = 0 := by
      simp [sourceTerm, ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hpp]
    simp [hz]

private theorem sourceTerm_prime (A : ℝ) (p : ℕ) (hp : p.Prime) :
    sourceTerm A p = Real.log (p : ℝ) / Real.sqrt p *
      sourceCorrelation explicitSecondDerivative A (Real.log p) := by
  rw [sourceTerm, ArithmeticFunction.vonMangoldt_apply_prime hp]

private theorem sourceTerm_square (A : ℝ) (n : ℕ) :
    sourceTerm A (n ^ 2) = ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log n) := by
  simp only [sourceTerm, ArithmeticFunction.vonMangoldt_apply_pow (by norm_num : (2 : ℕ) ≠ 0),
    Nat.cast_pow, Real.sqrt_sq (Nat.cast_nonneg n), Real.log_pow, Nat.cast_ofNat]

private theorem sourceTerm_odd_power (A : ℝ) (p k : ℕ) (hp : p.Prime) :
    sourceTerm A (p ^ (2 * k + 3)) =
      Real.log (p : ℝ) / Real.sqrt (p ^ (2 * k + 3) : ℕ) *
        sourceCorrelation explicitSecondDerivative A (Real.log (p ^ (2 * k + 3) : ℕ)) := by
  rw [sourceTerm, ArithmeticFunction.vonMangoldt_apply_pow (by omega),
    ArithmeticFunction.vonMangoldt_apply_prime hp]

/-- Exact partition of the actual closed prime moment into all three disjoint sectors. -/
theorem closedPrimeMoment_eq_prime_power_sectors (A : ℝ) :
    closedPrimeMoment A = primeFirstMoment A + evenPowerMoment A + oddHigherMoment A := by
  classical
  have heq : closedPrimeMoment A = ∑ n ∈ primePowerInventory (2 * A), sourceTerm A n := by
    unfold closedPrimeMoment
    apply Finset.sum_congr rfl
    intro n hn
    have hn2 := (Finset.mem_Icc.mp hn).1
    rw [exponentialTest_log _ n (by omega)]
    unfold sourceTerm
    ring
  rw [heq, primePowerInventory, sourceTerm_partition]
  have hp : (∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime,
      sourceTerm A n) = primeFirstMoment A := by
    apply Finset.sum_congr rfl
    intro p hp
    exact sourceTerm_prime A p (Finset.mem_filter.mp hp).2
  have hs : (∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter IsSquare,
      sourceTerm A n) = evenPowerMoment A := by
    rw [← primePowerInventory, sum_square_inventory]
    apply Finset.sum_congr rfl
    intro n _
    exact sourceTerm_square A n
  have ho : (∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
      (fun n ↦ IsPrimePow n ∧ ¬Nat.Prime n ∧ ¬IsSquare n), sourceTerm A n) =
      oddHigherMoment A := by
    rw [sum_odd_prime_power_inventory]
    apply Finset.sum_congr rfl
    intro p hp
    apply Finset.sum_congr rfl
    intro k _
    exact sourceTerm_odd_power A p k (Finset.mem_filter.mp hp).2
  rw [hp, hs, ho]

/-- The unchanged residual splits exactly, using the already proved vanishing upper atom. -/
theorem mertensResidual_eq_prime_power_sectors (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = primeFirstMoment A + evenPowerMoment A + oddHigherMoment A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_prime_power_sectors]

/-- The strict source contribution has the same partition because its upper atom is zero. -/
theorem primePowerContribution_eq_prime_power_sectors (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A =
      primeFirstMoment A + evenPowerMoment A + oddHigherMoment A := by
  rw [primePowerContribution_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_prime_power_sectors]

end
end EstimatePrimePowerSectors
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
