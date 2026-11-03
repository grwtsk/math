/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointLeastPrimeTypeII
import GRWTSK.MeasureAndIntegration.FiniteResponseSum
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.Zeta
import Mathlib.NumberTheory.Divisors
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators zeta
open MeasureTheory

/-!
# Exact divisor-local collapse of the ORIGINAL signed causal Möbius Gram

For n > 1, the genuine Mathlib Möbius coefficients have zero divisor
mass. Once u >= log n, every positive divisor d of n has been born,
and the source response sum collapses exactly to

  sum_{d|n} mu(d) * pickupResponse d u
    = 2 * sum_{d|n} mu(d) / sqrt d.

Multiplying by the original r_n and integrating gives a source-exact
divisor Gram identity. Removing the diagonal produces the entire
two-orientation proper-divisibility packet as one signed arithmetic
sum plus its original diagonal subtraction.

The literal original-index double-sum reindexing and the finite Euler
product are deliberately separately named Lean targets. Their paper
proofs are in the companion review. No RH-strength cancellation,
physical measurement law, or kernel-verification claim is supplied.
-/

namespace GRWTSK.NumberTheory.Moebius.DivisorCausalGramCollapse

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII

/-- Actual Möbius mass over every positive divisor, including n itself. -/
def divisorMass (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors, moebiusReal d

/-- Actual reciprocal-square-root weighted divisor sum, not an
independent positive replacement for the signed source. -/
def divisorReciprocalRoot (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors,
    moebiusReal d * (Real.sqrt (d : ℝ))⁻¹

def divisorWave (n : ℕ) (u : ℝ) : ℝ :=
  ∑ d ∈ n.divisors, moebiusReal d * pickupResponse d u

/-- Pinned Mathlib's mu*zeta=1 makes divisor Möbius mass vanish
at all original n>1; no PNT or RH premise is used. -/
theorem divisorMass_zero (n : ℕ) (hn : 1 < n) :
    divisorMass n = 0 := by
  have hz :
      ((ArithmeticFunction.moebius *
        (ζ : ArithmeticFunction ℤ)) n) = 0 := by
    rw [ArithmeticFunction.moebius_mul_coe_zeta]
    exact ArithmeticFunction.one_apply_ne (by omega)
  rw [ArithmeticFunction.coe_mul_zeta_apply] at hz
  unfold divisorMass moebiusReal
  exact_mod_cast hz

/-- At and after the ORIGINAL birth of n, all d|n have already been
born. This identity is valid even for n=1 before zero mass is used. -/
theorem divisorWave_after
    (n : ℕ) (hn : 0 < n) (u : ℝ)
    (hu : Real.log (n : ℝ) ≤ u) :
    divisorWave n u =
      2 * (divisorReciprocalRoot n -
        Real.exp (-u / 2) * divisorMass n) := by
  calc
    divisorWave n u =
        ∑ d ∈ n.divisors,
          2 * (moebiusReal d * (Real.sqrt (d : ℝ))⁻¹ -
            Real.exp (-u / 2) * moebiusReal d) := by
      unfold divisorWave
      apply Finset.sum_congr rfl
      intro d hd
      have hdpos : 0 < d := Nat.pos_of_mem_divisors hd
      have hdn : d ≤ n :=
        Nat.le_of_dvd hn (Nat.dvd_of_mem_divisors hd)
      have hlog :
          Real.log (d : ℝ) ≤ Real.log (n : ℝ) :=
        Real.log_le_log (by exact_mod_cast hdpos)
          (by exact_mod_cast hdn)
      rw [pickupResponse, if_pos (hlog.trans hu)]
      ring
    _ = 2 * (divisorReciprocalRoot n -
          Real.exp (-u / 2) * divisorMass n) := by
      simp only [divisorReciprocalRoot, divisorMass,
        mul_sub, Finset.sum_sub_distrib,
        Finset.mul_sum, Finset.sum_mul]
      ring

/-- The entire product r_n * sum_{d|n} mu(d) r_d collapses
at EVERY u. Before the birth of n, the original r_n itself is 0. -/
theorem divisorWave_product_pointwise
    (n : ℕ) (hn : 1 < n) (u : ℝ) :
    pickupResponse n u * divisorWave n u =
      2 * divisorReciprocalRoot n * pickupResponse n u := by
  by_cases hb : Real.log (n : ℝ) ≤ u
  · rw [divisorWave_after n (by omega) u hb,
      divisorMass_zero n hn]
    ring
  · have hz : pickupResponse n u = 0 := by
      simp [pickupResponse, hb]
    simp [hz]

/-- Source-defined single-response physical-time area. -/
def responseArea (T : ℝ) (n : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..T, pickupResponse n u

/-- Every original divisor kernel is included, with original mu(d)
and the unchanged causal pickupResponseGram. -/
def divisorGram (T : ℝ) (n : ℕ) : ℝ :=
  ∑ d ∈ n.divisors,
    moebiusReal d * pickupResponseGram T d n

/-- Integrated pointwise divisor collapse; works even for negative T
as an oriented interval identity. No zero-free or growth premise. -/
theorem divisorGram_collapse
    (n : ℕ) (hn : 1 < n) (T : ℝ) :
    divisorGram T n =
      2 * divisorReciprocalRoot n * responseArea T n := by
  classical
  have hint (d : ℕ) (hd : d ∈ n.divisors) :
      IntervalIntegrable
        (fun u : ℝ =>
          moebiusReal d * pickupResponse d u * pickupResponse n u)
        volume 0 T := by
    have hdpos : 0 < d := Nat.pos_of_mem_divisors hd
    exact ((continuous_const.mul (pickupResponse_continuous hdpos)).mul
      (pickupResponse_continuous (by omega))).intervalIntegrable 0 T
  unfold divisorGram
  calc
    (∑ d ∈ n.divisors,
        moebiusReal d * pickupResponseGram T d n) =
      ∑ d ∈ n.divisors,
        ∫ u in (0 : ℝ)..T,
          moebiusReal d * pickupResponse d u * pickupResponse n u := by
      apply Finset.sum_congr rfl
      intro d hd
      unfold pickupResponseGram
      rw [intervalIntegral.integral_const_mul]
    _ = ∫ u in (0 : ℝ)..T,
          ∑ d ∈ n.divisors,
            moebiusReal d * pickupResponse d u * pickupResponse n u := by
      rw [intervalIntegral.integral_finsetSum]
      exact hint
    _ = ∫ u in (0 : ℝ)..T,
          pickupResponse n u * divisorWave n u := by
      apply intervalIntegral.integral_congr
      intro u hu
      unfold divisorWave
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d hd
      ring
    _ = ∫ u in (0 : ℝ)..T,
          (2 * divisorReciprocalRoot n) * pickupResponse n u := by
      apply intervalIntegral.integral_congr
      intro u hu
      exact divisorWave_product_pointwise n hn u
    _ = 2 * divisorReciprocalRoot n * responseArea T n := by
      unfold responseArea
      rw [intervalIntegral.integral_const_mul]

/-- Original ordered two-orientation proper-divisor packet. Each
unordered comparable pair is written once with factor 2; d=n is
explicitly excluded. No index 0 is present and no squareful sign
is replaced by a surrogate. -/
def properDivisorPacket (T : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 ⌊Real.exp T⌋₊,
    2 * moebiusReal n *
      (∑ d ∈ n.divisors,
        if d = n then 0
        else moebiusReal d * pickupResponseGram T d n)

/-- The full proper-divisor packet collapses to a SINGLE weighted
source sum minus twice the exact original diagonal of n>=2. -/
theorem properDivisorPacket_collapse (T : ℝ) :
    properDivisorPacket T =
      ∑ n ∈ Finset.Icc 2 ⌊Real.exp T⌋₊,
        (4 * moebiusReal n * divisorReciprocalRoot n *
            responseArea T n -
          2 * moebiusReal n ^ 2 * pickupResponseGram T n n) := by
  classical
  unfold properDivisorPacket
  apply Finset.sum_congr rfl
  intro n hn
  have hn2 : 1 < n := by
    have h := (Finset.mem_Icc.mp hn).1
    omega
  have hn0 : n ≠ 0 := by omega
  have hself : n ∈ n.divisors := Nat.mem_divisors_self n hn0
  have herase :
      (∑ d ∈ n.divisors,
        if d = n then 0
        else moebiusReal d * pickupResponseGram T d n) =
      divisorGram T n -
        moebiusReal n * pickupResponseGram T n n := by
    calc
      _ = (∑ d ∈ n.divisors,
            moebiusReal d * pickupResponseGram T d n) -
          (∑ d ∈ n.divisors,
            if d = n then
              moebiusReal d * pickupResponseGram T d n else 0) := by
        rw [← Finset.sum_sub_distrib]
        apply Finset.sum_congr rfl
        intro d hd
        by_cases he : d = n <;> simp [he]
      _ = _ := by
        unfold divisorGram
        simp [hself]
  rw [herase, divisorGram_collapse n hn2 T]
  ring

/-- Literal original double-index sector, with the original
m != n test and BOTH possible directions of divisibility. -/
def originalOrderedDivisibility (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ (m ∣ n ∨ n ∣ m) then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n
    else 0

/-- Exact finite proper-divisor control has a strict half-rate
UNCONDITIONAL paper bound: |packet| <= 32*(exp(T/2)-1) + 4*T^2,
using |mu(n)|<=1, 0<=C(n)<=1, the positive response mass
sum r_n(u)<=4*exp(u/2), and the original diagonal <=2*T^2.
The whole finite integral and Euler-product bound remain an explicit
Lean target: this definition is not an axiom or a theorem. -/
def DivisorPacketHalfRateBound : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    |properDivisorPacket T| ≤
      32 * (Real.exp (T / 2) - 1) + 4 * T ^ 2

/-- Remaining finite reindexing obligation. This is a target Prop,
NOT an axiom or a proved Lean theorem. The ordinary proof is the
bijection of comparable ordered pairs to one proper divisor pair
with two orientations and symmetric Gram. -/
def OriginalOrderedDivisibilityBridge : Prop :=
  ∀ T : ℝ,
    originalOrderedDivisibility T = properDivisorPacket T

/-- Optional arithmetic Euler-product readout. The source retains
the complete finite signed divisor sum even without this bridge. -/
def DivisorReciprocalRootEulerProduct : Prop :=
  ∀ n : ℕ, 0 < n →
    divisorReciprocalRoot n =
      ∏ p ∈ n.primeFactors,
        (1 - (Real.sqrt (p : ℝ))⁻¹)

/-- The remaining complete original signed packet after deleting the
specified divisibility sector; this is NOT asserted small. -/
def incomparableOrderedPacket (T : ℝ) : ℝ :=
  pickupCross T - originalOrderedDivisibility T

theorem pickupCross_eq_divisibility_add_incomparable (T : ℝ) :
    pickupCross T =
      originalOrderedDivisibility T + incomparableOrderedPacket T := by
  unfold incomparableOrderedPacket
  ring

end GRWTSK.NumberTheory.Moebius.DivisorCausalGramCollapse
