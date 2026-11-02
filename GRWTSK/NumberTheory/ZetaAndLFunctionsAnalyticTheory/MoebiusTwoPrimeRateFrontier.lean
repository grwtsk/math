/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusTwoPrimeSignedPacketCore
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Rate-variable geometric completion of original signed two-prime packets

This source works with the unchanged original Möbius integer coefficients,
true causal response Gram, original ordered off-diagonal pickupCross and the
prior two-prime cubeBase/oddBaseRatio/secondaryDiagonal definitions.

A *paper-proved* unconditional arithmetic/physical-time comparison gives
for a,b,c,T>=0, with R[a,b,c](T) the literal original ordered
non-odd inter-cube source restricted to
  m,n>exp(a*T), gcd(m,n)<exp(b*T), dist(m,n)>floor(exp(c*T)):

  endpointSum(T) <= R[a,b,c](T) - secondaryDiagonal(T)
      +32*T*exp((1+a)*T/2)+32*T*exp((1-b)*T)
      +4*T^2*exp(c*T)+1/4.

For 1/2<=rho<1 choose (a,b,c)=(2rho-1,1-rho,rho).
The three paid rates coincide at rho. At rho=1/2 the cost is
(64T+4T^2)exp(T/2), and rho=2/3 gives the balanced two-thirds cut.
This is a *rate-versus-core tradeoff*: different rho mean DIFFERENT
unpaid ORIGINAL signed core, and none is proved small here.

The separate positive-only/absolute-value version of every fixed
rho<1 core has a provable lower of order exp(T) on dyadic logarithmic
scales. This uses positive squarefree density and actual response
Gram positivity. Its paper proof is in the companion review; this
file records it as an UNPROVED Lean PROP target. It is a barrier to
replacing the remaining signed sum by its positive or absolute terms,
NOT a bound or counterexample for the original signed core itself.

The truncated-increment and balanced-rate inequalities below have
Lean source-candidate proofs; every original source-specific integral
and arithmetic counting comparison is left as an explicitly UNPROVED
Prop, never asserted as an axiom or RH theorem.
-/

namespace GRWTSK.NumberTheory.Moebius.TwoPrimeRateFrontier

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.TwoPrimeSignedPacketCore
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- Literal source mask: NO random signs, reweighted kernel or omitted
off-diagonal orientation. Parameters are real logarithmic cut rates. -/
def geometricPairMask (a b c T : ℝ) (m n : ℕ) : Prop :=
  m ≠ n ∧
    cubeBase m ≠ cubeBase n ∧
    ¬oddBaseRatio (cubeBase m) (cubeBase n) ∧
    ⌊Real.exp (c*T)⌋₊ < Nat.dist m n ∧
    Real.exp (a*T) < (m : ℝ) ∧
    Real.exp (a*T) < (n : ℝ) ∧
    (Nat.gcd m n : ℝ) < Real.exp (b*T)

/-- Same ORIGINAL ordered Möbius Gram restricted to the indicated
pair mask. All signs of the still-unpaid source survive intact. -/
def parametricSignedCore (a b c T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if geometricPairMask a b c T m n then
        moebiusReal m * moebiusReal n * pickupResponseGram T m n
      else 0

/-- The intentionally over-optimistic positive-only surrogate.
Its complete actual-summand restriction has a LINEAR lower growth,
so it must NOT be substituted as the all-rate signed supplier. -/
def positiveOnlyCore (a b c T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      if geometricPairMask a b c T m n ∧
          0 < moebiusReal m * moebiusReal n then
        moebiusReal m * moebiusReal n * pickupResponseGram T m n
      else 0

/-- A fixed-rate vector of geometric cutoffs: high-high,
small-gcd and long-gap all retain the genuine original source. -/
def profileCore (ρ T : ℝ) : ℝ :=
  parametricSignedCore (2*ρ-1) (1-ρ) ρ T

def positiveProfileCore (ρ T : ℝ) : ℝ :=
  positiveOnlyCore (2*ρ-1) (1-ρ) ρ T

/-- Exponent paid by the three independent absolute source filters. -/
def geometricPaymentRate (a b c : ℝ) : ℝ :=
  max ((1+a)/2) (max (1-b) c)

/-- No numerical fitting: this exact exponent identity is the reason
the family has the stated logarithmic-time payment. -/
theorem selected_profile_rates (ρ : ℝ) :
    (1 + (2*ρ-1))/2 = ρ ∧ 1-(1-ρ)=ρ := by
  constructor <;> ring

/-- If the low-index and gcd filters are forced to use ONE equal
threshold, the best attainable absolute payment in this scheme
is the familiar two-thirds exponent; this statement does NOT
apply to the separately tuned filters of profileCore. -/
theorem common_cut_rate_at_least_two_thirds (a c : ℝ) :
    (2/3 : ℝ) ≤ geometricPaymentRate a a c := by
  unfold geometricPaymentRate
  rcases le_total (1/3 : ℝ) a with ha | ha
  · exact le_max_of_le_left (by linarith)
  · exact le_max_of_le_right
      (le_max_of_le_left (by linarith))

/-- The exact elementary clipped-response increment identity. -/
theorem positivePart_increment (a b t : ℝ) (hba : b ≤ a) :
    max (a-t) 0 - max (b-t) 0 =
      min (a-b) (max (a-t) 0) := by
  by_cases ha : a ≤ t
  · have hb : b ≤ t := hba.trans ha
    rw [max_eq_right (sub_nonpos.mpr ha),
      max_eq_right (sub_nonpos.mpr hb),
      min_eq_right (sub_nonneg.mpr hba)]
    ring
  · have hat : t ≤ a := le_of_lt (lt_of_not_ge ha)
    by_cases hb : b ≤ t
    · rw [max_eq_left (sub_nonneg.mpr hat),
        max_eq_right (sub_nonpos.mpr hb),
        min_eq_right (by linarith : a-t ≤ a-b)]
      ring
    · have hbt : t ≤ b := le_of_lt (lt_of_not_ge hb)
      rw [max_eq_left (sub_nonneg.mpr hat),
        max_eq_left (sub_nonneg.mpr hbt),
        min_eq_left (by linarith : a-b ≤ a-t)]
      ring

/-- General positive-part checkerboard/supermodular inequality:
large and small corners dominate the two middle corners whenever
their total is large enough. This is the finite real algebra used
by the source-specific p,q two-prime causal packet. -/
theorem positivePart_checkerboard_nonneg
    (a b c e t : ℝ)
    (hba : b ≤ a) (hca : c ≤ a) (hec : e ≤ c)
    (hsum : b+c ≤ a+e) :
    0 ≤ max (a-t) 0 - max (b-t) 0 -
        max (c-t) 0 + max (e-t) 0 := by
  have hab := positivePart_increment a b t hba
  have hce := positivePart_increment c e t hec
  have hdelta : c-e ≤ a-b := by linarith
  have hlevels : max (c-t) 0 ≤ max (a-t) 0 :=
    max_le_max (sub_le_sub_right hca t) le_rfl
  have hmin := min_le_min hdelta hlevels
  linarith

/-- The complete original signed source upper inequality is a paper
theorem, not yet a compiled Lean proof. The additional work is the
actual pair partition, original Gram bound and finite double sum. -/
def ParametricOriginalEndpointUpperTarget : Prop :=
  ∀ a b c T : ℝ, 0 ≤ a → 0 ≤ b → 0 ≤ c → 0 ≤ T →
    endpointSum T ≤
      parametricSignedCore a b c T - secondaryDiagonal T +
        32*T*Real.exp ((1+a)*T/2) +
        32*T*Real.exp ((1-b)*T) +
        4*T^2*Real.exp (c*T) + 1/4

/-- UNPROVED AS LEAN: valid paper corollary of the preceding target.
Different ρ supply DIFFERENT residuals; no RH-sized premise is erased. -/
def ProfileEndpointUpperTarget : Prop :=
  ∀ ρ T : ℝ, (1/2 : ℝ) ≤ ρ → ρ < 1 → 0 ≤ T →
    endpointSum T ≤
      profileCore ρ T - secondaryDiagonal T +
        (64*T+4*T^2)*Real.exp (ρ*T) + 1/4

/-- UNPROVED AS LEAN: source-specific elementary squarefree-density
obstruction. On EVERY fixed rate ρ<1 the positive-only sum inside
the source residual still has order at least exp(T) on the dyadic
logarithmic grid. It is NOT an obstruction to signed cancellation. -/
def PositiveOnlyCoreLinearLowerTarget : Prop :=
  ∀ ρ : ℝ, (1/2 : ℝ) ≤ ρ → ρ < 1 →
    ∃ c : ℝ, 0 < c ∧
      ∃ j₀ : ℕ, ∀ j : ℕ, j₀ ≤ j →
        c * Real.exp ((j : ℝ)*Real.log 2) ≤
          positiveProfileCore ρ ((j : ℝ)*Real.log 2)

/-- Original p,q analogue of the 2,3 cube; the source-positive
proof uses the preceding general max-supermodular lemma plus
square-root multiplier identities. It is not a free coefficient. -/
def generalPrimeCubeWave (p q d : ℕ) (u : ℝ) : ℝ :=
  pickupResponse d u -
    pickupResponse (p*d) u -
    pickupResponse (q*d) u +
    pickupResponse (p*q*d) u

/-- UNPROVED AS LEAN: source-specific corollary for any two
DISTINCT actual primes, away from the two selected prime divisors.
The original integer source parity and all births must be preserved. -/
def GeneralTwoPrimeCubeNonnegTarget : Prop :=
  ∀ p q d : ℕ, p.Prime → q.Prime → p ≠ q →
    Nat.Coprime d (p*q) → 1 ≤ d →
    ∀ u : ℝ, 0 ≤ generalPrimeCubeWave p q d u

end GRWTSK.NumberTheory.Moebius.TwoPrimeRateFrontier
