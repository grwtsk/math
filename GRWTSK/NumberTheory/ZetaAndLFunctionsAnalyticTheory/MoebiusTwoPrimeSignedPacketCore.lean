/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleDoubleAbelAnalyticGates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupEndpointQuadrature
import Mathlib

/-!
# Actual Möbius two-prime cube and exact signed dense-core frontier

Retain the ORIGINAL wholePickup, pickupCross, pickupResponseGram,
endpointSum, all squareful zero coefficients, the diagonal, the
two ordered orientations, and the source birth support.

Every nonzero original Möbius index n has a UNIQUE squarefree
two-prime orbit {d,2*d,3*d,6*d}, gcd(d,6)=1.
The source coefficients are mu(d)*(+1,-1,-1,+1).
The actual orbit response W_d = r_d-r_(2*d)-r_(3*d)+r_(6*d)
obeys 0<=W_d<=r_d (proved in the companion written mathematics).
Thus the complete twelve oriented internal interactions have
upper <= -mu(d)^2*(K(2d,2d)+K(3d,3d)+K(6d,6d)) <= 0.

For DISTINCT orbit bases, if e=k*d and mu(k)=-1, the COMPLETE
16-term source comparison (both orientations) has nonpositive
signed contribution, because W_d,W_e>=0 and mu(d)*mu(e)<=0.
Its absolute whole packet is O(T*(1+T)*exp(T/2)); this is a
strict exponent-1/2 upper estimate with NO Mertens power input.

The original pickupCross decomposes exactly into the internal cube,
odd-parity base-dilation packet, short inter-cube packet, and
unaltered long inter-cube remainder. With H(T)=floor((1+T)^2)
the short packet costs <=4*H(T)*T^2; the uniform 1/4 endpoint
allowance is then added ONCE. A further explicit geometric
selection of low-index and large-gcd pairs costs
64*T*exp(3*T/4)+4*T^2*exp(T/4).

THE FULL signed long non-odd inter-cube core remains OPEN.
The source-exact integral, parity, partition, growth and RH
implications are explicitly NAMED PROP TARGETS, not Lean proofs,
axioms, or claimed kernel acceptance.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.TwoPrimeSignedPacketCore

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleDoubleAbelAnalyticGates
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open MeasureTheory Set

/-- Original four causal responses: the signs are the TRUE Möbius
squarefree two-prime orbit signs, not parameters. -/
def cubeWaveform (d : ℕ) (u : ℝ) : ℝ :=
  pickupResponse d u - pickupResponse (2*d) u -
    pickupResponse (3*d) u + pickupResponse (6*d) u

/-- Source-local finite algebra: for four nonnegative response samples
monotone on the two-prime divisibility square, the checkerboard
difference cannot exceed the first response in absolute value. -/
theorem four_point_abs_le_base
    (a b c e : ℝ)
    (ha : 0 ≤ a) (hc : 0 ≤ c) (he : 0 ≤ e)
    (hba : b ≤ a) (hca : c ≤ a) (heb : e ≤ b) :
    |a-b-c+e| ≤ a := by
  rw [abs_le]
  constructor <;> linarith

/-- The complete TWO-ORIENTATION off-diagonal checkerboard square
has a TRUE negative credit from the other three diagonal atoms.
This is strictly stronger than merely saying the cross is <=0. -/
theorem four_point_signed_credit
    (a b c e : ℝ)
    (ha : 0 ≤ a) (hc : 0 ≤ c) (he : 0 ≤ e)
    (hba : b ≤ a) (hca : c ≤ a) (heb : e ≤ b) :
    2*(-a*b-a*c+a*e+b*c-b*e-c*e) ≤ -(b^2+c^2+e^2) := by
  have h := four_point_abs_le_base a b c e ha hc he hba hca heb
  have hsq := (sq_le_sq₀ (abs_nonneg (a-b-c+e)) ha).mpr h
  rw [sq_abs] at hsq
  nlinarith

/-- Source's previously proved adjacent antitonicity extends to
every two ORIGINAL positive indices; no arithmetic estimate. -/
private theorem response_antitone_of_le
    (m n : ℕ) (hm : 1 ≤ m) (hmn : m ≤ n) (u : ℝ) :
    pickupResponse n u ≤ pickupResponse m u := by
  induction n, hmn using Nat.le_induction with
  | base => exact le_rfl
  | succ n _ ih =>
      exact (pickupResponse_antitone_positive n (by omega) u).trans ih

/-- Genuine source-level response comparison, rather than an
unconstrained abstract four-sample assumption. -/
theorem cubeWaveform_abs_le_original
    (d : ℕ) (hd : 1 ≤ d) (u : ℝ) :
    |cubeWaveform d u| ≤ pickupResponse d u := by
  unfold cubeWaveform
  have ha := pickupResponse_nonneg_positive d hd u
  have hc := pickupResponse_nonneg_positive (3*d) (by omega) u
  have he := pickupResponse_nonneg_positive (6*d) (by omega) u
  have hba := response_antitone_of_le d (2*d) hd (by omega) u
  have hca := response_antitone_of_le d (3*d) hd (by omega) u
  have heb := response_antitone_of_le (2*d) (6*d) (by omega) (by omega) u
  exact four_point_abs_le_base
    _ _ _ _ ha hc he hba hca heb

/-- Remove all 2- and 3-powers. On the TRUE nonzero Möbius
support n, the base is coprime to 6 and the deleted factor is
one of 1,2,3,6. Squareful input positions remain present with
their original zero coefficients. -/
def cubeBase (n : ℕ) : ℕ :=
  n / (2 ^ n.factorization 2 * 3 ^ n.factorization 3)

/-- A complete signed inter-cube base-pair class: exactly an
odd-parity squarefree divisor quotient in EITHER orientation.
No arbitrary choice of negative edges is made. -/
def oddBaseRatio (d e : ℕ) : Prop :=
  (d ∣ e ∧ moebiusReal (e / d) = -1) ∨
  (e ∣ d ∧ moebiusReal (d / e) = -1)

/-- Exact 12-oriented internal pair polynomial using the ORIGINAL
integrated Gram. The real source has coefficient mu(d)^2. -/
def cubeInternal (T : ℝ) (d : ℕ) : ℝ :=
  2 * moebiusReal d ^ 2 *
    (-pickupResponseGram T d (2*d) -
      pickupResponseGram T d (3*d) +
      pickupResponseGram T d (6*d) +
      pickupResponseGram T (2*d) (3*d) -
      pickupResponseGram T (2*d) (6*d) -
      pickupResponseGram T (3*d) (6*d))

/-- Actual internal cube credit; the source response for any
as-yet-unborn index is zero throughout [0,T]. -/
def secondaryDiagonal (T : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    if Nat.Coprime d 6 then
      moebiusReal d ^ 2 *
        (pickupResponseGram T (2*d) (2*d) +
          pickupResponseGram T (3*d) (3*d) +
          pickupResponseGram T (6*d) (6*d))
    else 0

/-- Every odd-quotient packet is kept complete before
its sign is inferred: a single original pair is NOT
mistaken for its 16-edge grouped source observation. -/
def oddBaseCross (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if m ≠ n ∧ cubeBase m ≠ cubeBase n ∧
          oddBaseRatio (cubeBase m) (cubeBase n) then
        moebiusReal m * moebiusReal n *
          pickupResponseGram T m n
      else 0

/-- The residual still contains the ORIGINAL μ(m)μ(n) and
K_T(m,n), for EVERY long inter-cube unmatched original pair.
Only a polynomial-in-logarithmic-time short-gap sector is
excluded, preserving ALL-POSITIVE-RATE compatibility. -/
def polynomialLongNonoddCore (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if m ≠ n ∧ cubeBase m ≠ cubeBase n ∧
          ¬oddBaseRatio (cubeBase m) (cubeBase n) ∧
          ⌊(1+T)^2⌋₊ < Nat.dist m n then
        moebiusReal m * moebiusReal n *
          pickupResponseGram T m n
      else 0

/-- Stronger GEOMETRIC cut; its separate allowance has
a fixed 3/4-rate floor and is NOT an all-positive-rate proof. -/
def threeQuarterDenseCore (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if m ≠ n ∧ cubeBase m ≠ cubeBase n ∧
          ¬oddBaseRatio (cubeBase m) (cubeBase n) ∧
          ⌊Real.exp (T/4)⌋₊ < Nat.dist m n ∧
          Real.exp (T/2) < (m : ℝ) ∧
          Real.exp (T/2) < (n : ℝ) ∧
          (Nat.gcd m n : ℝ) < Real.exp (T/4) then
        moebiusReal m * moebiusReal n *
          pickupResponseGram T m n
      else 0

/-- UNPROVED Lean target; in the mathematical review the
original source is partitioned exactly and all negative
cube/odd-ratio packets retain their full signed terms. -/
def ExactOriginalTwoPrimeReturnTarget : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    pickupCross T ≤
      polynomialLongNonoddCore T -
        secondaryDiagonal T + 4*(1+T)^2*T^2

/-- UNPROVED Lean target: one-sided complete original endpoint,
with ONLY the existing single 1/4 curvature payment. -/
def OriginalEndpointPolynomialCoreUpperTarget : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    endpointSum T ≤
      polynomialLongNonoddCore T - secondaryDiagonal T +
        4*(1+T)^2*T^2 + 1/4

/-- UNPROVED Lean target: the additional min-index and gcd filters
are paid unconditionally at strict exponent 3/4, without PNT/RH. -/
def OriginalEndpointThreeQuarterCoreUpperTarget : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    endpointSum T ≤
      threeQuarterDenseCore T - secondaryDiagonal T +
        4*T^2*Real.exp (T/4) +
        64*T*Real.exp (3*T/4) + 1/4

/-- UNPROVED Lean target: the entire genuine odd-parity
inter-cube signed packet has strict exponent 1/2 magnitude
and a nonpositive sign, without Mertens power saving. -/
def OddBasePacketMagnitudeTarget : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    -(16*T*(1+T)*Real.exp (T/2)) ≤ oddBaseCross T ∧
      oddBaseCross T ≤ 0

/-- UNPROVED Lean target: if this SAME ORIGINAL residual
has every-positive-rate upper growth on a fixed affinely
frequent G, the existing endpoint consumer returns RH.
The required residual arithmetic estimate remains OPEN. -/
def AllPositiveRateReducedSupplierTarget : Prop :=
  ∀ G : Set ℝ,
    GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential.AffineFrequent G →
    GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential.SubexponentialOn
      polynomialLongNonoddCore G →
    _root_.RiemannHypothesis

end GRWTSK.NumberTheory.Moebius.TwoPrimeSignedPacketCore
