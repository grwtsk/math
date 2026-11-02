/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusUnmaskedLowGcdEndpoint
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Finite Möbius sieve square decomposition of the ACTUAL low-gcd Gram

For D>=1, the indicator of gcd(m,n)<=D has a genuine finite
Mobius-inverse coefficient

  c_D(d) = sum_(x*y=d, y<=D) mu(x).

The Mathlib pinned exact inversion
  ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq
gives
  sum_(d|g) c_D(d) = 1_(g<=D), g>0.

This yields an exact signed sum over the ACTUAL original causal
Möbius source: the full low-gcd Gram is a sum of c_D(d) times
original full-Gram packets restricted to multiples of d. Unlike
any synthetic model, the source kernel includes the real original
pickupResponseGram, the exact Mobius sign and both orientations.

The off-diagonal A_D is the full low-gcd Gram minus precisely the
source diagonals with n<=D. The integral/finite-sum interchange
turning each divisor-multiples full Gram into a NONNEGATIVE square
energy is stated as an explicit still-UNPROVED LEAN target; no
mathematical cancellation is asserted by this identity.

Elementary number theory further gives c_D(1)=1, c_D(d)=0 on
2<=d<=D, and c_D(d)=-1 on D<d<=2D. The last sign is a
genuine negative nonnegative-square energy collar, but its
size is itself subexponentially payable and does not cancel
the full source energy without new arithmetic input.

The first collar arithmetic coefficient theorem is a named
UNPROVED pinned Lean target, not an axiom. No RH completion.
-/

namespace GRWTSK.NumberTheory.Moebius.LowGcdSieveSquareEnergy

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.Moebius.UnmaskedLowGcdEndpoint

classical

/-- The actual real Mobius convolution of the truncated divisor
indicator. The pinned Mathlib inversion API uses pairs x*y=d. -/
def lowGcdSieveWeight (D d : ℕ) : ℝ :=
  ∑ x ∈ d.divisorsAntidiagonal,
    (ArithmeticFunction.moebius x.fst : ℝ) *
      (if x.snd ≤ D then (1 : ℝ) else 0)

/-- This is the essential exact unconditional arithmetic gate:
the sum of the weights over the divisors of a POSITIVE integer
is exactly the cutoff indicator of that integer. -/
theorem lowGcdSieveWeight_sum_divisors (D g : ℕ) (hg : 0 < g) :
    (∑ d ∈ g.divisors, lowGcdSieveWeight D d) =
      if g ≤ D then (1 : ℝ) else 0 := by
  have hInv :
      ∀ n : ℕ, 0 < n →
        (∑ x ∈ n.divisorsAntidiagonal,
          (ArithmeticFunction.moebius x.fst : ℝ) *
            (if x.snd ≤ D then (1 : ℝ) else 0)) =
          lowGcdSieveWeight D n := by
    intro n hn
    rfl
  exact
    (ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq
      (f := lowGcdSieveWeight D)
      (g := fun n : ℕ => if n ≤ D then (1 : ℝ) else 0)).mpr hInv g hg

/-- The original gcd condition is a finite positive-divisor
Möbius sieve; no source kernel, probability or sign estimate. -/
theorem gcd_le_indicator_eq_sieve (D m n : ℕ)
    (hm : 0 < m) :
    (if Nat.gcd m n ≤ D then (1 : ℝ) else 0) =
      ∑ d ∈ (Nat.gcd m n).divisors, lowGcdSieveWeight D d := by
  exact (lowGcdSieveWeight_sum_divisors D (Nat.gcd m n)
    (Nat.gcd_pos_of_pos_left n hm)).symm

/-- The divisor sum can be taken over ONE original finite
endpoint cutoff N as long as both source indices lie in 1..N. -/
theorem gcd_le_indicator_eq_sieve_Icc
    (D N m n : ℕ)
    (hmpos : 0 < m) (hmN : m ≤ N)
    (hnpos : 0 < n) (hnN : n ≤ N) :
    (if Nat.gcd m n ≤ D then (1 : ℝ) else 0) =
      ∑ d ∈ Finset.Icc 1 N,
        if d ∣ m ∧ d ∣ n then lowGcdSieveWeight D d else 0 := by
  let g := Nat.gcd m n
  have hgpos : 0 < g := Nat.gcd_pos_of_pos_left n hmpos
  have hset :
      (Finset.Icc 1 N).filter (fun d => d ∣ m ∧ d ∣ n) =
        g.divisors := by
    ext d
    simp only [Finset.mem_filter, Finset.mem_Icc, Nat.mem_divisors]
    constructor
    · rintro ⟨⟨hdpos, hdN⟩, hdm, hdn⟩
      exact ⟨Nat.dvd_gcd hdm hdn, ne_of_gt hgpos⟩
    · rintro ⟨hdg, _hg0⟩
      have hdm : d ∣ m :=
        dvd_trans hdg (Nat.gcd_dvd_left m n)
      have hdn : d ∣ n :=
        dvd_trans hdg (Nat.gcd_dvd_right m n)
      have hdne : d ≠ 0 := by
        intro hdz
        subst d
        have hzero : m = 0 := by simpa using hdm
        omega
      have hdpos : 1 ≤ d := by omega
      have hdN : d ≤ N :=
        (Nat.le_of_dvd hmpos hdm).trans hmN
      exact ⟨⟨hdpos, hdN⟩, hdm, hdn⟩
  calc
    (if Nat.gcd m n ≤ D then (1 : ℝ) else 0) =
        ∑ d ∈ g.divisors, lowGcdSieveWeight D d :=
      gcd_le_indicator_eq_sieve D m n hmpos
    _ = ∑ d ∈ Finset.Icc 1 N,
        if d ∣ m ∧ d ∣ n then lowGcdSieveWeight D d else 0 := by
      rw [← Finset.sum_filter, hset]

/-- Complete original signed Möbius Gram, including the diagonal,
selected only by gcd<=D. -/
def lowGcdFullGram (D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if Nat.gcd m n ≤ D then sourceKernel T m n else 0

/-- Complete original signed Gram on original indices divisible
by d. Both ordered orientations and the source diagonal remain. -/
def divisorRestrictedFullGram (d : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if d ∣ m ∧ d ∣ n then sourceKernel T m n else 0

/-- Exact original diagonal charge for low-gcd FULL Gram;
note: this is only n<=D, NOT the full original pickupDiagonal. -/
def lowGcdSourceDiagonal (D : ℕ) (T : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if n ≤ D then sourceKernel T n n else 0

/-- Complete source low-gcd Gram equals the original ordered
off-diagonal low-gcd packet plus the exact truncated diagonal. -/
theorem lowGcdFullGram_eq_cross_add_diagonal
    (D : ℕ) (T : ℝ) :
    lowGcdFullGram D T =
      plainLowGcdCross D T + lowGcdSourceDiagonal D T := by
  let S : Finset ℕ := endpointIndex T
  change (∑ m ∈ S, ∑ n ∈ S,
      if Nat.gcd m n ≤ D then sourceKernel T m n else 0) =
    (∑ m ∈ S, ∑ n ∈ S,
      if m ≠ n ∧ Nat.gcd m n ≤ D then sourceKernel T m n else 0) +
    (∑ m ∈ S, if m ≤ D then sourceKernel T m m else 0)
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  have hdiag :
      (if m ≤ D then sourceKernel T m m else 0) =
        ∑ n ∈ S,
          if m = n ∧ Nat.gcd m n ≤ D
          then sourceKernel T m n else 0 := by
    simp [hm, Nat.gcd_self]
  rw [hdiag, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmn : m = n
  · subst n
    by_cases hD : m ≤ D <;> simp [hD]
  · by_cases hD : Nat.gcd m n ≤ D <;> simp [hmn, hD]

/-- Fully finite source reordering: the actual low-gcd FULL
Gram equals a signed sum of original divisor-restricted full Grams.
This requires only the preceding Möbius inversion identity. -/
theorem lowGcdFullGram_eq_signed_divisorGrams
    (D : ℕ) (T : ℝ) :
    lowGcdFullGram D T =
      ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d * divisorRestrictedFullGram d T := by
  let S : Finset ℕ := endpointIndex T
  let E : Finset ℕ := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hmul (d : ℕ) :
      lowGcdSieveWeight D d * divisorRestrictedFullGram d T =
        ∑ m ∈ S, ∑ n ∈ S,
          if d ∣ m ∧ d ∣ n then
            lowGcdSieveWeight D d * sourceKernel T m n else 0 := by
    unfold divisorRestrictedFullGram
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m hm
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n hn
    split_ifs <;> ring
  have hsum :
      (∑ d ∈ E,
        lowGcdSieveWeight D d * divisorRestrictedFullGram d T) =
      lowGcdFullGram D T := by
    calc
      _ = ∑ d ∈ E, ∑ m ∈ S, ∑ n ∈ S,
            if d ∣ m ∧ d ∣ n then
              lowGcdSieveWeight D d * sourceKernel T m n else 0 := by
          apply Finset.sum_congr rfl
          intro d hd
          exact hmul d
      _ = ∑ m ∈ S, ∑ n ∈ S, ∑ d ∈ E,
            if d ∣ m ∧ d ∣ n then
              lowGcdSieveWeight D d * sourceKernel T m n else 0 := by
          rw [Finset.sum_comm]
          apply Finset.sum_congr rfl
          intro m hm
          exact Finset.sum_comm
      _ = lowGcdFullGram D T := by
          unfold lowGcdFullGram
          apply Finset.sum_congr rfl
          intro m hm
          apply Finset.sum_congr rfl
          intro n hn
          have hfactor :
              (∑ d ∈ E,
                if d ∣ m ∧ d ∣ n then
                  lowGcdSieveWeight D d * sourceKernel T m n else 0) =
              (∑ d ∈ E,
                if d ∣ m ∧ d ∣ n then
                  lowGcdSieveWeight D d else 0) * sourceKernel T m n := by
            rw [Finset.sum_mul]
            apply Finset.sum_congr rfl
            intro d hd
            by_cases h : d ∣ m ∧ d ∣ n <;> simp [h]
          rw [hfactor]
          have hmI := Finset.mem_Icc.mp hm
          have hnI := Finset.mem_Icc.mp hn
          rw [← gcd_le_indicator_eq_sieve_Icc D
            ⌊Real.exp T⌋₊ m n hmI.1 hmI.2 hnI.1 hnI.2]
          split_ifs <;> ring
  exact hsum.symm

/-- The ORIGINAL finite divisor-restricted signed pickup
over the SAME endpoint inventory and exact birth-gated response. -/
def divisorRestrictedPickup (d : ℕ) (T u : ℝ) : ℝ :=
  ∑ n ∈ endpointIndex T,
    if d ∣ n then moebiusReal n * pickupResponse n u else 0

/-- Each divisor-resolved source energy is NONNEGATIVE. -/
def divisorRestrictedEnergy (d : ℕ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, (divisorRestrictedPickup d T u)^2

theorem divisorRestrictedEnergy_nonneg
    (d : ℕ) {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ divisorRestrictedEnergy d T := by
  unfold divisorRestrictedEnergy
  exact intervalIntegral.integral_nonneg hT
    (fun u hu => sq_nonneg (divisorRestrictedPickup d T u))

/-- Exact source-specific finite-Fubini/Gram-square equality,
UNPROVED in pinned Lean. The mathematical proof is finite
distributivity and interval-integral linearity; no RH or
arithmetic cancellation is needed. -/
def DivisorRestrictedEnergyIdentityTarget : Prop :=
  ∀ (d : ℕ) (T : ℝ), 0 ≤ T →
    divisorRestrictedFullGram d T = divisorRestrictedEnergy d T

/-- The full signed sum of NONNEGATIVE original divisor energies,
with exactly the source diagonal n<=D removed. This is an
honest conditional consumer of the still-unproved integral gate. -/
theorem plainLowGcdCross_eq_signed_energy_of_finite_integral
    (hEnergy : DivisorRestrictedEnergyIdentityTarget)
    (D : ℕ) {T : ℝ} (hT : 0 ≤ T) :
    plainLowGcdCross D T =
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d * divisorRestrictedEnergy d T) -
      lowGcdSourceDiagonal D T := by
  have hs := lowGcdFullGram_eq_signed_divisorGrams D T
  have hd := lowGcdFullGram_eq_cross_add_diagonal D T
  have hrewrite :
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d * divisorRestrictedFullGram d T) =
      ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d * divisorRestrictedEnergy d T := by
    apply Finset.sum_congr rfl
    intro d hd
    rw [hEnergy d T hT]
  linarith

/-- Pure finite Mobius arithmetic, mathematically true but
still UNPROVED in pinned Lean: D<d<=2D implies all proper
divisors of d are at most D, so c_D(d)=-mu(1)=-1.
Separately, c_D(1)=1 and c_D(d)=0 for 2<=d<=D. -/
def FirstDivisorCollarCoefficientTarget : Prop :=
  ∀ (D d : ℕ), 1 ≤ D → D < d → d ≤ 2*D →
    lowGcdSieveWeight D d = -1

/-- Genuine NONPOSITIVE first large-divisor square-energy collar
once its elementary Mobius coefficient theorem is supplied.
No claim is made about the later d>2D coefficient signs. -/
theorem firstDivisorCollarSignedEnergy_nonpos
    (hCoeff : FirstDivisorCollarCoefficientTarget)
    (D : ℕ) (hD : 1 ≤ D) {T : ℝ} (hT : 0 ≤ T) :
    (∑ d ∈ Finset.Icc (D+1) (min (2*D) ⌊Real.exp T⌋₊),
        lowGcdSieveWeight D d * divisorRestrictedEnergy d T) ≤ 0 := by
  apply Finset.sum_nonpos
  intro d hd
  have hbound := Finset.mem_Icc.mp hd
  have hdgt : D < d := by omega
  have hdtwo : d ≤ 2*D :=
    hbound.2.trans (min_le_left _ _)
  rw [hCoeff D d hD hdgt hdtwo]
  have hE := divisorRestrictedEnergy_nonneg d hT
  nlinarith

end GRWTSK.NumberTheory.Moebius.LowGcdSieveSquareEnergy
