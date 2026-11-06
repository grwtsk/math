/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionComplexGramClosure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueParseval

/-!
# Prime-noise covariance returned to the ORIGINAL divisor energies

For independent prime signs eps_p of mean rho>0, put
  Z_n = product_(p|n) (eps_p/rho),  x = rho^(-2)-1.
Prime independence, with the repeated primes kept, gives
  E[Z_m Z_n] = product_(p|gcd(m,n)) (1+x).
For unnormalized signs the moment is rho^|P_m symmetricDifference P_n|;
this includes rho=0 with 0^0=1. Normalization at rho=0 is NOT allowed.
On squarefree integers the exponent is
  omega(m)+omega(n)-2*omega(gcd(m,n)).
The radical formula also makes sense on nonsquarefree integers, but it
is not a replacement for Mobius: the original coefficient keeps its zero.

The deterministic, source-exact theorem formalized below is stronger
than a scalar covariance assertion: for arbitrary real prime weights x_p,
  G_x(F,T) = sum_(D subset P_T) (product_(p in D) x_p) E_(F,product D)(T),
where G_x is the complete ordered ORIGINAL Hermitian Gram multiplied
by product_(p|gcd(m,n)) (1+x_p), and E_(F,d) is the PREEXISTING
familyDivisorRestrictedEnergy, not an invented comparison energy.
The empty subset is exactly familyFiniteResponseEnergy F T. Thus for
x_p>=0 and T>=0 the remaining sum is nonnegative. Increasing the prime
variances increases this energy in quadratic-form order, not just entrywise.
Coprime pairs have weight one. A primitive pair (a,b), dilated by k,
has weight depending only on the prime support of k, not its Mobius sign.

Primary proof: expand the finite product over shared primes, prove that
D subset primeFactors(n) iff product(D) divides n, exchange the finite
sums, then reuse familyDivisorRestrictedFullGram_eq_energy. Both ordered
orientations, the diagonal, original birth gates, phases and all integer
indices remain. No infinite expectation/integral interchange is used here.
The probabilistic construction and its moment identification are proved
analytically in the linked source update, NOT formalized by this module.
In particular, G_x is not definitionally a probability expectation in Lean.

External comparison: Marco Aymone, arXiv:2009.09240v1, Theorem 1.2 and
section 3.5. With eps_p=-f_beta(p), rho=2*beta-1, the unchanged Mobius
coefficient times Z_n equals rho^(-omega(n))*f_beta(n), including the
squareful zeros. The paper's almost-sure weighted cancellation is
RH-equivalent, not an unconditional mean-square bound. Its analytic
bias restriction rho>1/sqrt(2) is not needed for this finite identity.
Hong--Loewy, Glasgow Math. J. 46 (2004), Lemma 4.1, uses the related
GCD/divisor incidence factorization for gcd^epsilon. That different
kernel is a method comparison, not an imported theorem about ours.
No theorem-level novelty or independent human review is claimed.

Consumers: the genuine character energy in
FixedConductorHodgeAllRateEquivalence.fullPositiveResidue_allGrid_iff_every_character,
and the original signed common-dilation fibers in
MoebiusPrimeFreeSlopeCreditBalance.lean. The original all-positive-rate
arithmetic bound is NOT supplied: normalized prime noise contains that
original energy with coefficient one. No RH or GRH closure is asserted.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.LFunctionPrimeNoiseDivisorEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge
open GRWTSK.NumberTheory.Moebius.LFunctionComplexGramClosure

/-- Exactly the primes occurring in the original finite source inventory. -/
def sourcePrimes (T : ℝ) : Finset ℕ :=
  (endpointIndex T).biUnion Nat.primeFactors

def primeDivisor (D : Finset ℕ) : ℕ := ∏ p ∈ D, p

def subsetWeight (x : ℕ → ℝ) (D : Finset ℕ) : ℝ := ∏ p ∈ D, x p

/-- The normalized prime-product covariance kernel, with heterogeneous variances. -/
def sharedPrimeKernel (x : ℕ → ℝ) (m n : ℕ) : ℝ :=
  ∏ p ∈ m.primeFactors ∩ n.primeFactors, (1 + x p)

/-- All ordered original Hermitian entries, not an absolute-value majorant. -/
def familyPrimeNoiseGram (F : NormalizedCoefficients) (x : ℕ → ℝ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    sharedPrimeKernel x m n * (familyHermitianKernel F T m n).re

private theorem source_prime (T : ℝ) {p : ℕ} (hp : p ∈ sourcePrimes T) :
    p.Prime := by
  obtain ⟨n, hn, hpn⟩ := Finset.mem_biUnion.mp hp
  exact Nat.prime_of_mem_primeFactors hpn

private theorem factors_subset_source (T : ℝ) {n : ℕ}
    (hn : n ∈ endpointIndex T) : n.primeFactors ⊆ sourcePrimes T := by
  intro p hp
  exact Finset.mem_biUnion.mpr ⟨n, hn, hp⟩

/-- A finite set of distinct primes is an authentic squarefree divisor mask.
The positivity guard is essential: primeFactors(0) is empty in Mathlib. -/
theorem primeSubset_iff_dvd (D : Finset ℕ) (n : ℕ)
    (hD : ∀ p ∈ D, p.Prime) (hn : n ≠ 0) :
    D ⊆ n.primeFactors ↔ primeDivisor D ∣ n := by
  constructor
  · intro h
    exact (Finset.prod_dvd_prod_of_subset D n.primeFactors (fun p => p) h).trans
      (Nat.prod_primeFactors_dvd n)
  · intro h p hp
    exact Nat.mem_primeFactors.mpr ⟨hD p hp,
      (Finset.dvd_prod_of_mem (fun p : ℕ => p) hp).trans h, hn⟩

theorem sharedPrimeKernel_eq_gcd (x : ℕ → ℝ) (m n : ℕ)
    (hm : m ≠ 0) (hn : n ≠ 0) :
    sharedPrimeKernel x m n = ∏ p ∈ (Nat.gcd m n).primeFactors, (1 + x p) := by
  rw [Nat.primeFactors_gcd hm hn]
  rfl

/-- Mean normalization leaves every coprime signed pair unchanged. -/
theorem sharedPrimeKernel_of_coprime (x : ℕ → ℝ) (m n : ℕ)
    (h : Nat.Coprime m n) : sharedPrimeKernel x m n = 1 := by
  have he : m.primeFactors ∩ n.primeFactors = ∅ :=
    Finset.disjoint_iff_inter_eq_empty.mp h.disjoint_primeFactors
  simp [sharedPrimeKernel, he]

/-- For a primitive slope, the new factor sees the common dilation only.
It does not select positive versus negative primitive Mobius signs. -/
theorem sharedPrimeKernel_common_dilation (x : ℕ → ℝ) (k a b : ℕ)
    (hk : k ≠ 0) (ha : a ≠ 0) (hb : b ≠ 0) (hab : Nat.Coprime a b) :
    sharedPrimeKernel x (k*a) (k*b) = ∏ p ∈ k.primeFactors, (1 + x p) := by
  rw [sharedPrimeKernel_eq_gcd x (k*a) (k*b)
    (mul_ne_zero hk ha) (mul_ne_zero hk hb)]
  simp [Nat.gcd_mul_left, hab.gcd_eq_one]

/-- Explicit scalar specialization; no invertibility of a matrix is assumed. -/
theorem sharedPrimeKernel_constant (c : ℝ) (m n : ℕ)
    (hm : m ≠ 0) (hn : n ≠ 0) :
    sharedPrimeKernel (fun _ => c) m n =
      (1+c) ^ (Nat.gcd m n).primeFactors.card := by
  rw [sharedPrimeKernel_eq_gcd _ _ _ hm hn]
  simp

/-- Product expansion with the exact integer divisibility masks. -/
theorem sharedPrimeKernel_eq_divisor_masks (x : ℕ → ℝ) (T : ℝ)
    (m n : ℕ) (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T) :
    sharedPrimeKernel x m n =
      ∑ D ∈ (sourcePrimes T).powerset,
        if primeDivisor D ∣ m ∧ primeDivisor D ∣ n then subsetWeight x D else 0 := by
  classical
  have hm0 : m ≠ 0 := Nat.ne_of_gt (Finset.mem_Icc.mp hm).1
  have hn0 : n ≠ 0 := Nat.ne_of_gt (Finset.mem_Icc.mp hn).1
  have hsub : m.primeFactors ∩ n.primeFactors ⊆ sourcePrimes T :=
    Finset.inter_subset_left.trans (factors_subset_source T hm)
  have hf : (sourcePrimes T).powerset.filter
      (fun D => primeDivisor D ∣ m ∧ primeDivisor D ∣ n) =
        (m.primeFactors ∩ n.primeFactors).powerset := by
    ext D
    simp only [Finset.mem_filter, Finset.mem_powerset]
    constructor
    · rintro ⟨hDP, hDm, hDn⟩ p hp
      have hpr : ∀ q ∈ D, q.Prime := fun q hq => source_prime T (hDP hq)
      exact Finset.mem_inter.mpr
        ⟨(primeSubset_iff_dvd D m hpr hm0).mpr hDm hp,
         (primeSubset_iff_dvd D n hpr hn0).mpr hDn hp⟩
    · intro hD
      have hDP : D ⊆ sourcePrimes T := hD.trans hsub
      have hpr : ∀ q ∈ D, q.Prime := fun q hq => source_prime T (hDP hq)
      exact ⟨hDP,
        (primeSubset_iff_dvd D m hpr hm0).mp
          (fun p hp => (Finset.mem_inter.mp (hD hp)).1),
        (primeSubset_iff_dvd D n hpr hn0).mp
          (fun p hp => (Finset.mem_inter.mp (hD hp)).2)⟩
  calc
    _ = ∑ D ∈ (m.primeFactors ∩ n.primeFactors).powerset, subsetWeight x D :=
      Finset.prod_one_add _
    _ = ∑ D ∈ (sourcePrimes T).powerset.filter
        (fun D => primeDivisor D ∣ m ∧ primeDivisor D ∣ n), subsetWeight x D := by
      rw [hf]
    _ = _ := by rw [Finset.sum_filter]

/-- Main source return. This identity also holds for signed x and oriented T;
nonnegativity is imposed only for the later inequality. -/
theorem familyPrimeNoiseGram_eq_divisorEnergy
    (F : NormalizedCoefficients) (x : ℕ → ℝ) (T : ℝ) :
    familyPrimeNoiseGram F x T =
      ∑ D ∈ (sourcePrimes T).powerset,
        subsetWeight x D * familyDivisorRestrictedEnergy F (primeDivisor D) T := by
  classical
  unfold familyPrimeNoiseGram
  calc
    _ = ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        ∑ D ∈ (sourcePrimes T).powerset,
          if primeDivisor D ∣ m ∧ primeDivisor D ∣ n then
            subsetWeight x D * (familyHermitianKernel F T m n).re else 0 := by
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      rw [sharedPrimeKernel_eq_divisor_masks x T m n hm hn, Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro D hD
      split_ifs <;> simp
    _ = ∑ m ∈ endpointIndex T, ∑ D ∈ (sourcePrimes T).powerset,
        ∑ n ∈ endpointIndex T,
          if primeDivisor D ∣ m ∧ primeDivisor D ∣ n then
            subsetWeight x D * (familyHermitianKernel F T m n).re else 0 := by
      apply Finset.sum_congr rfl
      intro m hm
      exact Finset.sum_comm
    _ = ∑ D ∈ (sourcePrimes T).powerset, ∑ m ∈ endpointIndex T,
        ∑ n ∈ endpointIndex T,
          if primeDivisor D ∣ m ∧ primeDivisor D ∣ n then
            subsetWeight x D * (familyHermitianKernel F T m n).re else 0 :=
      Finset.sum_comm
    _ = ∑ D ∈ (sourcePrimes T).powerset,
        subsetWeight x D * familyDivisorRestrictedFullGram F (primeDivisor D) T := by
      apply Finset.sum_congr rfl
      intro D hD
      unfold familyDivisorRestrictedFullGram
      simp only [Complex.re_sum]
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m hm
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      split_ifs <;> simp
    _ = _ := by simp_rw [familyDivisorRestrictedFullGram_eq_energy]

private theorem divisorEnergy_one (F : NormalizedCoefficients) (T : ℝ) :
    familyDivisorRestrictedEnergy F 1 T = familyFiniteResponseEnergy F T := by
  simp [familyDivisorRestrictedEnergy, familyDivisorRestrictedResponse,
    familyFiniteResponseEnergy, familyFiniteResponse]

/-- Exact variance packet: the original energy has coefficient ONE. -/
theorem familyPrimeNoiseGram_eq_original_add
    (F : NormalizedCoefficients) (x : ℕ → ℝ) (T : ℝ) :
    familyPrimeNoiseGram F x T = familyFiniteResponseEnergy F T +
      ∑ D ∈ (sourcePrimes T).powerset.erase ∅,
        subsetWeight x D * familyDivisorRestrictedEnergy F (primeDivisor D) T := by
  classical
  rw [familyPrimeNoiseGram_eq_divisorEnergy]
  have he : (∅ : Finset ℕ) ∈ (sourcePrimes T).powerset := by simp
  rw [← Finset.sum_erase_add _ _ he]
  simp [subsetWeight, primeDivisor, divisorEnergy_one, add_comm]

/-- Nonnegative prime variance cannot reduce the original signed-source energy. -/
theorem original_energy_le_primeNoiseGram
    (F : NormalizedCoefficients) (x : ℕ → ℝ) (T : ℝ)
    (hT : 0 ≤ T) (hx : ∀ p ∈ sourcePrimes T, 0 ≤ x p) :
    familyFiniteResponseEnergy F T ≤ familyPrimeNoiseGram F x T := by
  rw [familyPrimeNoiseGram_eq_original_add]
  apply le_add_of_nonneg_right
  apply Finset.sum_nonneg
  intro D hD
  have hDP := Finset.mem_powerset.mp (Finset.mem_erase.mp hD).2
  exact mul_nonneg
    (Finset.prod_nonneg (fun p hp => hx p (hDP hp)))
    (familyDivisorRestrictedEnergy_nonneg F (primeDivisor D) hT)

/-- Monotonicity of the entire quadratic form, despite its signed Gram entries. -/
theorem familyPrimeNoiseGram_mono
    (F : NormalizedCoefficients) (x y : ℕ → ℝ) (T : ℝ) (hT : 0 ≤ T)
    (hx : ∀ p ∈ sourcePrimes T, 0 ≤ x p)
    (hxy : ∀ p ∈ sourcePrimes T, x p ≤ y p) :
    familyPrimeNoiseGram F x T ≤ familyPrimeNoiseGram F y T := by
  rw [familyPrimeNoiseGram_eq_divisorEnergy, familyPrimeNoiseGram_eq_divisorEnergy]
  apply Finset.sum_le_sum
  intro D hD
  have hDP := Finset.mem_powerset.mp hD
  apply mul_le_mul_of_nonneg_right _
    (familyDivisorRestrictedEnergy_nonneg F (primeDivisor D) hT)
  exact Finset.prod_le_prod₀ (fun p hp => hx p (hDP hp))
    (fun p hp => hxy p (hDP hp))

/-- A scalar-bias covariance object. The probability interpretation requires
0<rho<=1; total-field evaluation at rho=0 is not that interpretation. -/
def normalizedPrimeCovarianceEnergy (F : NormalizedCoefficients) (ρ T : ℝ) : ℝ :=
  familyPrimeNoiseGram F (fun _ => (ρ^2)⁻¹ - 1) T

theorem normalizedPrimeCovarianceEnergy_eq_original_add
    (F : NormalizedCoefficients) (ρ T : ℝ) :
    normalizedPrimeCovarianceEnergy F ρ T = familyFiniteResponseEnergy F T +
      ∑ D ∈ (sourcePrimes T).powerset.erase ∅,
        ((ρ^2)⁻¹ - 1)^D.card *
          familyDivisorRestrictedEnergy F (primeDivisor D) T := by
  simpa [normalizedPrimeCovarianceEnergy, subsetWeight] using
    familyPrimeNoiseGram_eq_original_add F (fun _ => (ρ^2)⁻¹ - 1) T

theorem original_energy_le_normalizedPrimeCovarianceEnergy
    (F : NormalizedCoefficients) (ρ T : ℝ)
    (hρ : 0 < ρ) (hρ1 : ρ ≤ 1) (hT : 0 ≤ T) :
    familyFiniteResponseEnergy F T ≤ normalizedPrimeCovarianceEnergy F ρ T := by
  have hs : 0 < ρ^2 := sq_pos_of_pos hρ
  have hs1 : ρ^2 ≤ 1 := by nlinarith
  have hi : 1 ≤ 1 / ρ^2 := (le_div_iff₀ hs).mpr (by nlinarith)
  have hx : 0 ≤ (ρ^2)⁻¹ - 1 := by
    simpa only [one_div] using sub_nonneg.mpr hi
  exact original_energy_le_primeNoiseGram F _ T hT (fun _ _ => hx)

/-- Genuine character coefficients, including principal and imprimitive terms,
are unchanged; no conductor-uniform constant or analytic GRH return is inferred. -/
theorem dirichlet_character_energy_le_normalizedPrimeCovarianceEnergy
    (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (ρ T : ℝ)
    (hρ : 0 < ρ) (hρ1 : ρ ≤ 1) (hT : 0 ≤ T) :
    familyFiniteResponseEnergy (dirichletCharacterCoefficients χ) T ≤
      normalizedPrimeCovarianceEnergy (dirichletCharacterCoefficients χ) ρ T :=
  original_energy_le_normalizedPrimeCovarianceEnergy
    (dirichletCharacterCoefficients χ) ρ T hρ hρ1 hT

end GRWTSK.NumberTheory.Moebius.LFunctionPrimeNoiseDivisorEnergy
