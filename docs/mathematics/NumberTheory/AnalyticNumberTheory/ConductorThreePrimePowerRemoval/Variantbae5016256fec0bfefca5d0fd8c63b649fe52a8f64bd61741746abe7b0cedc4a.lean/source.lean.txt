module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVonMangoldt
public import Surface.Core.ConductorThreePrimeReindex
import Mathlib.Tactic

/-!
# Prime-side conductor-three sums and the exact prime-two correction

The primitive character has level three, while the prime race is presented in
the reduced residue classes `1` and `5` modulo six.  Consequently prime `2`
must be retained explicitly: `χ₃(2) = -1`.  Prime `3` contributes zero.

This module proves both the unweighted and logarithmically weighted correction
identities by finite sums.  It does not hide the correction in a changed-level
character, which would alter the Euler factor at two.
-/

public section

namespace Surface.Core.ConductorThreePrimePowerRemoval

noncomputable section

open scoped ArithmeticFunction BigOperators
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreePrimeReindex

/-- Integer residue-six count difference. -/
@[expose]
def actualResidueDifferenceInt (x : ℕ) : ℤ :=
  (actualResidueOneCount x : ℤ) - (actualResidueFiveCount x : ℤ)

/-- Unweighted prime sum of the primitive conductor-three character. -/
@[expose]
def conductorThreePrimeCharacterSum (x : ℕ) : ℤ :=
  ∑ p ∈ Nat.primesLE x, conductorThreeIntegerValue p

/-- Logarithmically weighted prime sum `∑_{p ≤ x} χ₃(p) log p`. -/
@[expose]
def conductorThreeTheta (x : ℕ) : ℝ :=
  ∑ p ∈ Nat.primesLE x,
    (conductorThreeIntegerValue p : ℝ) * Real.log p

/-- Weighted residue-one prime mass modulo six. -/
@[expose]
def residueOneThetaSix (x : ℕ) : ℝ :=
  ∑ p ∈ Nat.primesLE x,
    if IsResidueOnePrime p then Real.log p else 0

/-- Weighted residue-five prime mass modulo six. -/
@[expose]
def residueFiveThetaSix (x : ℕ) : ℝ :=
  ∑ p ∈ Nat.primesLE x,
    if IsResidueFivePrime p then Real.log p else 0

/-- Pointwise prime classification, including the exceptional prime `2`. -/
@[surface_novel, surface_published]
theorem conductorThreeIntegerValue_prime_decomposition
    {p : ℕ} (hp : p.Prime) :
    conductorThreeIntegerValue p =
      (if IsResidueOnePrime p then 1 else 0) -
      (if IsResidueFivePrime p then 1 else 0) -
      (if p = 2 then 1 else 0) := by
  by_cases hp3 : 3 < p
  · have helig : IsEligibleResidueSixPrime p :=
      (eligibleResidueSixPrime_iff_prime_and_three_lt p).2 ⟨hp, hp3⟩
    rcases helig with hOne | hFive
    · have hval : conductorThreeIntegerValue p = 1 :=
        (conductorThreeIntegerValue_eq_one_iff_residueOne hp hp3).2 hOne.2
      have hnotFive : ¬ IsResidueFivePrime p :=
        fun h ↦ residuePrime_disjoint p ⟨hOne, h⟩
      have hpne2 : p ≠ 2 := by omega
      simp [hOne, hnotFive, hpne2, hval]
    · have hval : conductorThreeIntegerValue p = -1 :=
        (conductorThreeIntegerValue_eq_neg_one_iff_residueFive hp hp3).2 hFive.2
      have hnotOne : ¬ IsResidueOnePrime p :=
        fun h ↦ residuePrime_disjoint p ⟨h, hFive⟩
      have hpne2 : p ≠ 2 := by omega
      simp [hFive, hnotOne, hpne2, hval]
  · have hpCases : p = 2 ∨ p = 3 := by
      have hp2 := hp.two_le
      omega
    rcases hpCases with rfl | rfl
    · norm_num [conductorThreeIntegerValue_mod_two,
        IsResidueOnePrime, IsResidueFivePrime, Nat.ModEq]
    · norm_num [conductorThreeIntegerValue_mod_zero,
        IsResidueOnePrime, IsResidueFivePrime, Nat.ModEq]

private theorem residueOne_indicator_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x,
      if IsResidueOnePrime p then (1 : ℤ) else 0) =
      (actualResidueOneCount x : ℤ) := by
  rw [actualResidueOneCount, Nat.count_eq_card_filter_range,
    Finset.sum_boole]
  norm_cast
  apply congrArg Finset.card
  ext p
  simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_range]
  constructor
  · rintro ⟨⟨hpx, _⟩, hres⟩
    exact ⟨by omega, hres⟩
  · rintro ⟨hpx, hres⟩
    exact ⟨⟨by omega, hres.1⟩, hres⟩

private theorem residueFive_indicator_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x,
      if IsResidueFivePrime p then (1 : ℤ) else 0) =
      (actualResidueFiveCount x : ℤ) := by
  rw [actualResidueFiveCount, Nat.count_eq_card_filter_range,
    Finset.sum_boole]
  norm_cast
  apply congrArg Finset.card
  ext p
  simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_range]
  constructor
  · rintro ⟨⟨hpx, _⟩, hres⟩
    exact ⟨by omega, hres⟩
  · rintro ⟨hpx, hres⟩
    exact ⟨⟨by omega, hres.1⟩, hres⟩

private theorem primeTwo_indicator_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x, if p = 2 then (1 : ℤ) else 0) =
      if 2 ≤ x then 1 else 0 := by
  rw [Finset.sum_boole]
  by_cases hx : 2 ≤ x
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = {2} := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_singleton]
      constructor
      · exact fun h ↦ h.2
      · rintro rfl
        exact ⟨⟨hx, Nat.prime_two⟩, rfl⟩
    rw [hfilter]
    simp [hx]
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = ∅ := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.notMem_empty,
        iff_false]
      rintro ⟨⟨hpLe, _⟩, rfl⟩
      exact hx hpLe
    rw [hfilter]
    simp [hx]

/-- Exact unweighted correction:
`∑_{p ≤ x} χ₃(p) = D(x) - 1_{2 ≤ x}`. -/
@[surface_novel, surface_published]
theorem conductorThreePrimeCharacterSum_eq_residueDifference (x : ℕ) :
    conductorThreePrimeCharacterSum x =
      actualResidueDifferenceInt x - (if 2 ≤ x then 1 else 0) := by
  unfold conductorThreePrimeCharacterSum actualResidueDifferenceInt
  calc
    (∑ p ∈ Nat.primesLE x, conductorThreeIntegerValue p) =
        ∑ p ∈ Nat.primesLE x,
          ((if IsResidueOnePrime p then (1 : ℤ) else 0) -
            (if IsResidueFivePrime p then 1 else 0) -
            (if p = 2 then 1 else 0)) := by
      apply Finset.sum_congr rfl
      intro p hpMem
      exact conductorThreeIntegerValue_prime_decomposition
        (Nat.prime_of_mem_primesLE hpMem)
    _ = ((∑ p ∈ Nat.primesLE x,
            if IsResidueOnePrime p then (1 : ℤ) else 0) -
          (∑ p ∈ Nat.primesLE x,
            if IsResidueFivePrime p then (1 : ℤ) else 0)) -
          (∑ p ∈ Nat.primesLE x,
            if p = 2 then (1 : ℤ) else 0) := by
      simp only [Finset.sum_sub_distrib]
    _ = _ := by
      rw [residueOne_indicator_sum, residueFive_indicator_sum,
        primeTwo_indicator_sum]

/-- Real-valued form matching `AnalyticPrimeWalk.countDifference`. -/
@[surface_adapter, surface_published]
theorem conductorThreePrimeCharacterSum_real_eq_countDifference (x : ℕ) :
    (conductorThreePrimeCharacterSum x : ℝ) =
      countDifference actualResidueSixCounts x -
        (if 2 ≤ x then 1 else 0) := by
  have h := congrArg (fun z : ℤ ↦ (z : ℝ))
    (conductorThreePrimeCharacterSum_eq_residueDifference x)
  simp only [Int.cast_sub] at h
  simpa [actualResidueDifferenceInt, countDifference,
    actualResidueSixCounts] using h

private theorem weighted_prime_decomposition {p : ℕ} (hp : p.Prime) :
    (conductorThreeIntegerValue p : ℝ) * Real.log p =
      (if IsResidueOnePrime p then Real.log p else 0) -
      (if IsResidueFivePrime p then Real.log p else 0) -
      (if p = 2 then Real.log p else 0) := by
  rw [conductorThreeIntegerValue_prime_decomposition hp]
  push_cast
  by_cases h2 : p = 2
  · subst p
    norm_num [IsResidueOnePrime, IsResidueFivePrime, Nat.ModEq]
  · by_cases hOne : IsResidueOnePrime p <;>
      by_cases hFive : IsResidueFivePrime p <;>
      simp [hOne, hFive, h2]

private theorem primeTwo_log_sum (x : ℕ) :
    (∑ p ∈ Nat.primesLE x,
      if p = 2 then Real.log (p : ℝ) else 0) =
      if 2 ≤ x then Real.log 2 else 0 := by
  rw [← Finset.sum_filter]
  by_cases hx : 2 ≤ x
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = {2} := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.mem_singleton]
      constructor
      · exact fun h ↦ h.2
      · rintro rfl
        exact ⟨⟨hx, Nat.prime_two⟩, rfl⟩
    rw [hfilter]
    simp [hx]
  · have hfilter :
        (Nat.primesLE x).filter (fun p ↦ p = 2) = ∅ := by
      ext p
      simp only [Finset.mem_filter, Nat.mem_primesLE, Finset.notMem_empty,
        iff_false]
      rintro ⟨⟨hpLe, _⟩, rfl⟩
      exact hx hpLe
    rw [hfilter]
    simp [hx]

/-- Exact weighted correction:
`θχ₃(x) = θ(x;6,1) - θ(x;6,5) - 1_{2≤x} log 2`. -/
@[surface_novel, surface_published]
theorem conductorThreeTheta_eq_residueDifference (x : ℕ) :
    conductorThreeTheta x =
      residueOneThetaSix x - residueFiveThetaSix x -
        (if 2 ≤ x then Real.log 2 else 0) := by
  unfold conductorThreeTheta
  calc
    (∑ p ∈ Nat.primesLE x,
        (conductorThreeIntegerValue p : ℝ) * Real.log p) =
      ∑ p ∈ Nat.primesLE x,
        ((if IsResidueOnePrime p then Real.log p else 0) -
          (if IsResidueFivePrime p then Real.log p else 0) -
          (if p = 2 then Real.log p else 0)) := by
      apply Finset.sum_congr rfl
      intro p hpMem
      exact weighted_prime_decomposition (Nat.prime_of_mem_primesLE hpMem)
    _ = residueOneThetaSix x - residueFiveThetaSix x -
        (∑ p ∈ Nat.primesLE x,
          if p = 2 then Real.log p else 0) := by
      simp only [residueOneThetaSix, residueFiveThetaSix,
        Finset.sum_sub_distrib]
    _ = _ := by
      rw [primeTwo_log_sum]

/-! ## Removing the higher prime powers -/

private theorem conductorThreeTheta_eq_sum_range (x : ℕ) :
    conductorThreeTheta x =
      ∑ n ∈ Finset.range (x + 1),
        if n.Prime then
          Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree n
        else 0 := by
  rw [conductorThreeTheta, Nat.primesLE_eq_filter_range, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hp : n.Prime
  · simp [hp, Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree,
      ArithmeticFunction.vonMangoldt_apply_prime hp]
  · simp [hp]

/-- Exact higher-prime-power remainder.  It is indexed by composite integers;
`vonMangoldt_ne_zero_iff` ensures that every nonzero term is a genuine prime
power.  This avoids choosing a noncanonical `(p,m)` witness in the definition. -/
@[expose]
def conductorThreePrimePowerRemainder (x : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (x + 1),
    if ¬ n.Prime then
      Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree n
    else 0

/-- Every nonzero summand in the remainder is supported on a composite prime
power. -/
@[surface_novel, surface_published]
theorem primePowerRemainder_support
    {n : ℕ}
    (h : (if ¬ n.Prime then
        Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree n
      else 0) ≠ 0) :
    IsPrimePow n ∧ ¬ n.Prime := by
  by_cases hp : n.Prime
  · simp [hp] at h
  · refine ⟨?_, hp⟩
    have htwisted :
        Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree n ≠ 0 := by
      simpa [hp] using h
    have hLambda : ArithmeticFunction.vonMangoldt n ≠ 0 := by
      intro hzero
      exact htwisted (by
        simp [Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree,
          hzero])
    exact ArithmeticFunction.vonMangoldt_ne_zero_iff.mp hLambda

@[surface_novel, surface_published]
theorem conductorThreePsi_sub_theta_eq_primePowerRemainder (x : ℕ) :
    Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi x -
        conductorThreeTheta x = conductorThreePrimePowerRemainder x := by
  rw [Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi,
    conductorThreeTheta_eq_sum_range, ← Finset.sum_sub_distrib]
  unfold conductorThreePrimePowerRemainder
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hp : n.Prime <;> simp [hp]

@[surface_novel, surface_published]
theorem conductorThreePsi_eq_theta_add_primePowerRemainder (x : ℕ) :
    Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi x =
      conductorThreeTheta x + conductorThreePrimePowerRemainder x := by
  linarith [conductorThreePsi_sub_theta_eq_primePowerRemainder x]

private theorem abs_twistedVonMangoldtThree_le (n : ℕ) :
    |Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree n| ≤
      ArithmeticFunction.vonMangoldt n := by
  rcases conductorThreeIntegerValue_cases n with h | h | h
  · simp [Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree,
      h.2, ArithmeticFunction.vonMangoldt_nonneg]
  · simp only [Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree,
      h.2, Int.cast_one, one_mul]
    exact le_of_eq (abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg)
  · simp only [Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree,
      h.2, Int.cast_neg, Int.cast_one, neg_mul, one_mul, abs_neg]
    exact le_of_eq (abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg)

private theorem sum_range_not_prime_vonMangoldt_eq (x : ℕ) :
    (∑ n ∈ Finset.range (x + 1),
      if ¬ n.Prime then ArithmeticFunction.vonMangoldt n else 0) =
      Chebyshev.psi x - Chebyshev.theta x := by
  rw [Chebyshev.psi_sub_theta_eq_sum_not_prime]
  simp only [Nat.floor_natCast]
  rw [show Finset.range (x + 1) = Finset.Icc 0 x by
    ext n
    simp]
  rw [Finset.sum_filter]
  rw [← Finset.add_sum_Ioc_eq_sum_Icc]
  simp
  omega

/-- Twisting by `χ₃` can only reduce the absolute higher-prime-power
contribution. -/
@[surface_novel, surface_published]
theorem conductorThreePsi_sub_theta_abs_le (x : ℕ) :
    |Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi x -
        conductorThreeTheta x| ≤
      Chebyshev.psi x - Chebyshev.theta x := by
  rw [conductorThreePsi_sub_theta_eq_primePowerRemainder]
  unfold conductorThreePrimePowerRemainder
  calc
    |∑ n ∈ Finset.range (x + 1),
        if ¬ n.Prime then
          Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree n
        else 0| ≤
        ∑ n ∈ Finset.range (x + 1),
          |if ¬ n.Prime then
            Surface.Core.ConductorThreeVonMangoldt.twistedVonMangoldtThree n
          else 0| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.range (x + 1),
          if ¬ n.Prime then ArithmeticFunction.vonMangoldt n else 0 := by
      gcongr with n hn
      by_cases hp : n.Prime
      · simp [hp]
      · simpa [hp] using abs_twistedVonMangoldtThree_le n
    _ = Chebyshev.psi x - Chebyshev.theta x :=
      sum_range_not_prime_vonMangoldt_eq x

/-- Explicit unconditional higher-prime-power estimate. -/
@[surface_novel, surface_published]
theorem conductorThreePsi_sub_theta_abs_le_sqrt_mul_log
    {x : ℕ} (hx : 1 ≤ x) :
    |Surface.Core.ConductorThreeVonMangoldt.conductorThreePsi x -
        conductorThreeTheta x| ≤
      2 * Real.sqrt x * Real.log x := by
  exact (conductorThreePsi_sub_theta_abs_le x).trans
    (Chebyshev.psi_sub_theta_le (x := (x : ℝ)) (by exact_mod_cast hx))

end

end Surface.Core.ConductorThreePrimePowerRemoval
