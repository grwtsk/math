/- Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.GcdRectangleFiniteInterchange

/-!
# Actual weighted excess and the zero-excess large-gcd region

For positive quotient inventory at most two, the only positive coefficient
is (1,1). The (1,2),(2,1) coefficients are nonpositive and (2,2) vanishes.
Thus every moving signed rectangle is <=1, and a baseline >=1 pays its
excess exactly. In particular N<3*g implies floor(N/g)<=2.

This closes only the large-gcd excess region. Actual weighted excess for
smaller gcds, the uniform aggregate budget, and full source formal transport
remain unresolved. No mean-square or growing fixed-shift supplier is assumed.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open scoped BigOperators
open GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

def gcdWeightedRectangleExcess (g Q L : ℕ) (b : ℝ) : ℝ :=
  ∑ i ∈ Finset.range L, ∑ j ∈ Finset.range L,
    (if i=j then 0 else criticalEndpointGap (g+i)*criticalEndpointGap (g+j))*
      max (gcdSignedRectangle g Q (g+i) (g+j)-b) 0

theorem gcdQuotientSignedCoefficient_one_one (g : ℕ) :
    gcdQuotientSignedCoefficient g 1 1 = 1 := by
  simp [gcdQuotientSignedCoefficient, moebiusReal]

theorem gcdQuotientSignedCoefficient_small_nonpos (g a b : ℕ)
    (ha : 1 ≤ a) (ha2 : a ≤ 2) (hb : 1 ≤ b) (hb2 : b ≤ 2)
    (hne : ¬(a=1 ∧ b=1)) : gcdQuotientSignedCoefficient g a b ≤ 0 := by
  have hm2 : moebiusReal 2 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]
  have haa : a=1 ∨ a=2 := by omega
  have hbb : b=1 ∨ b=2 := by omega
  rcases haa with rfl | rfl <;> rcases hbb with rfl | rfl
  · exact (hne ⟨rfl,rfl⟩).elim
  · by_cases h : Nat.Coprime g 2 <;> simp [gcdQuotientSignedCoefficient,h,hm2]
  · by_cases h : Nat.Coprime g 2 <;> simp [gcdQuotientSignedCoefficient,h,hm2]
  · norm_num [gcdQuotientSignedCoefficient]

/-- The moving cutoffs are arbitrary, including empty rectangles. -/
theorem gcdSignedRectangle_le_one_of_inventory_le_two (g Q i j : ℕ)
    (hQ : Q ≤ 2) : gcdSignedRectangle g Q i j ≤ 1 := by
  calc
    _ ≤ ∑ a ∈ Finset.Icc 1 Q, ∑ b ∈ Finset.Icc 1 Q,
        if a=1 ∧ b=1 then (1 : ℝ) else 0 := by
      unfold gcdSignedRectangle
      apply Finset.sum_le_sum
      intro a ha
      apply Finset.sum_le_sum
      intro b hb
      by_cases hd : a=1 ∧ b=1
      · obtain ⟨rfl,rfl⟩ := hd
        simp only [and_self, if_true, gcdQuotientSignedCoefficient_one_one]
        split_ifs <;> norm_num
      · have hc := gcdQuotientSignedCoefficient_small_nonpos g a b
          (Finset.mem_Icc.mp ha).1 ((Finset.mem_Icc.mp ha).2.trans hQ)
          (Finset.mem_Icc.mp hb).1 ((Finset.mem_Icc.mp hb).2.trans hQ) hd
        simp only [if_neg hd]
        split_ifs
        · exact hc
        · exact le_rfl
    _ ≤ 1 := by
      by_cases h : 1 ≤ Q <;> simp [ite_and, Finset.mem_Icc,h]

theorem gcdWeightedRectangleExcess_nonneg {g : ℕ} (hg : 1 ≤ g)
    (Q L : ℕ) (b : ℝ) : 0 ≤ gcdWeightedRectangleExcess g Q L b := by
  unfold gcdWeightedRectangleExcess
  apply Finset.sum_nonneg
  intro i _
  apply Finset.sum_nonneg
  intro j _
  apply mul_nonneg _ (le_max_right _ _)
  split_ifs
  · exact le_rfl
  · exact mul_nonneg (criticalEndpointGap_nonneg (by omega))
      (criticalEndpointGap_nonneg (by omega))

/-- No cancellation hypothesis: the excess itself is identically zero. -/
theorem gcdWeightedRectangleExcess_eq_zero_of_inventory_le_two
    (g Q L : ℕ) (b : ℝ) (hQ : Q ≤ 2) (hb : 1 ≤ b) :
    gcdWeightedRectangleExcess g Q L b = 0 := by
  unfold gcdWeightedRectangleExcess
  apply Finset.sum_eq_zero
  intro i _
  apply Finset.sum_eq_zero
  intro j _
  have h := (gcdSignedRectangle_le_one_of_inventory_le_two g Q (g+i) (g+j) hQ).trans hb
  rw [max_eq_right (sub_nonpos.mpr h), mul_zero]

/-- Exact high-gcd cutoff; the endpoint N=3*g is not included. -/
theorem gcdWeightedRectangleExcess_eq_zero_of_large_gcd
    (N g : ℕ) (b : ℝ) (hg : 1 ≤ g) (hNg : N < 3*g) (hb : 1 ≤ b) :
    gcdWeightedRectangleExcess g (N/g) (N+1-g) b = 0 := by
  have hdiv : N/g < 3 := (Nat.div_lt_iff_lt_mul (by omega : 0 < g)).mpr
    (by simpa only [Nat.mul_comm] using hNg)
  exact gcdWeightedRectangleExcess_eq_zero_of_inventory_le_two
    g (N/g) (N+1-g) b (by omega) hb

def gcdTotalWeightedRectangleExcess (N : ℕ) (baseline : ℕ → ℝ) : ℝ :=
  ∑ g ∈ Finset.Icc 1 N, moebiusReal g ^ 2 *
    gcdWeightedRectangleExcess g (N/g) (N+1-g) (baseline g)

/-- The entire actual excess budget localizes to g<=floor(N/3), provided
the chosen baselines are >=1. This is not a bound on the surviving sum. -/
theorem gcdTotalWeightedRectangleExcess_eq_small_gcd
    (N : ℕ) (baseline : ℕ → ℝ)
    (hb : ∀ g ∈ Finset.Icc 1 N, 1 ≤ baseline g) :
    gcdTotalWeightedRectangleExcess N baseline =
      ∑ g ∈ Finset.Icc 1 (N/3), moebiusReal g ^ 2 *
        gcdWeightedRectangleExcess g (N/g) (N+1-g) (baseline g) := by
  unfold gcdTotalWeightedRectangleExcess
  symm
  apply Finset.sum_subset
  · intro g hg
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hg).1,
      (Finset.mem_Icc.mp hg).2.trans (Nat.div_le_self N 3)⟩
  · intro g hg hsmall
    have hg1 := (Finset.mem_Icc.mp hg).1
    have hgt : N/3 < g := by
      by_contra h
      exact hsmall (Finset.mem_Icc.mpr ⟨hg1, by omega⟩)
    have hNg : N < 3*g := by
      have h := (Nat.div_lt_iff_lt_mul (by norm_num : 0 < 3)).mp hgt
      simpa only [Nat.mul_comm] using h
    rw [gcdWeightedRectangleExcess_eq_zero_of_large_gcd N g (baseline g)
      hg1 hNg (hb g hg), mul_zero]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
