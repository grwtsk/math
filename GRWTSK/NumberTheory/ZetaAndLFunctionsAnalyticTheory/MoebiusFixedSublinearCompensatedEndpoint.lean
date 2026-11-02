/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCompensatedPrimitiveEndpoint
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# A single epsilon-independent compensated Möbius source

The previous arithmetic source partition chooses the short-gap height
`rateGapHeight epsilon T`, dependent on the desired exponential rate.
It is not necessary to vary the *source* with epsilon.

For T >= 0, use the deterministic fixed pair of masks
  H_*(T) = floor(exp(sqrt T))
  D_*(T) = max(1, floor(exp(T-sqrt T))).

Both are fixed BEFORE selecting epsilon and BEFORE examining any
Mobius sign. The first has an all-positive-rate Putnam absolute bill
4*T^2*exp(sqrt T). With the existing elementary large-gcd root-tail
target, the second has an all-positive-rate 32*T*exp(sqrt T)
absolute bill for T>=4. The true weak threshold has an
independent all-rate allowance <= sqrt(2)*T.

The sole remaining one-sided arithmetic object is then the SAME
fixedCompensatedCore T for every epsilon:
  genuine comparable signed packet +
  genuine low-gcd incomparable signed packet.

Both original ordered pair orientations, every birth gate, physical
mask, squareful zero and the original diagonal accounting are kept.
No new cancellation is proved by this reparameterization.

The exact original cross/endpoint identities below have candidate
Lean proof bodies. The finite gap cardinality, weak-payment scalar,
floor/exponential ratio, and root-tail source counting remain
unverified Lean obligations. In particular, the RH-strength
all-rate signed-core estimate is only a named Prop, NOT a theorem.

See the dated companion analytical review and passive target.
-/

namespace GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
open GRWTSK.NumberTheory.Moebius.CompensatedPrimitiveEndpoint

classical

/-- One short-gap mask, independent of the requested rate. -/
def fixedGapHeight (T : ℝ) : ℕ :=
  ⌊Real.exp (Real.sqrt T)⌋₊

/-- One gcd mask with a sublinear logarithmic deficit.
Unlike floor(exp T/(1+T)), it shifts a strictly wider
asymptotic gcd collar into the absolutely payable sector. -/
def fixedGcdCutoff (T : ℝ) : ℕ :=
  max 1 ⌊Real.exp (T - Real.sqrt T)⌋₊

theorem fixedGcdCutoff_pos (T : ℝ) :
    1 ≤ fixedGcdCutoff T :=
  le_max_left _ _

/-- An exact elementary bound with no arithmetic premise. -/
theorem fixedGapHeight_le_exp (T : ℝ) :
    (fixedGapHeight T : ℝ) ≤ Real.exp (Real.sqrt T) := by
  unfold fixedGapHeight
  exact Nat.floor_le (Real.exp_pos _).le

/-- THE ONE fixed signed source, with the original comparable
positive/negative packet and original low-gcd incomparable packet. -/
def fixedCompensatedCore (T : ℝ) : ℝ :=
  compensatedPrimitiveCore (fixedGapHeight T) (fixedGcdCutoff T) T

/-- An exact ORIGINAL ordered-source ledger, with no numerical
hypothesis and no discarded sign. -/
theorem pickupCross_eq_fixed_compensated_ledger
    {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T =
      endpointGapSetCross (shortGapSet (fixedGapHeight T)) T +
      weakOverlapCross (shortGapSet (fixedGapHeight T))
        (originalEnergyFamily T)
        (sourceCollarSigma (fixedGapHeight T) T)
        (weakPhysicalThreshold T) +
      fixedCompensatedCore T +
      largeGcdIncomparableCross
        (fixedGapHeight T) 0 (fixedGcdCutoff T) T := by
  simpa only [fixedCompensatedCore] using
    (pickupCross_eq_gap_weak_compensated_largeGcd
      hT (fixedGapHeight T) (fixedGcdCutoff T))

/-- Exact one-sided endpoint ledger; the large-gcd cost is still
the ORIGINAL nonnegative absolute source sum, not a synthetic
positive function substituted for the signed source. -/
theorem endpointSum_le_fixed_with_real_gcd_bill
    {T : ℝ} (hT : 0 ≤ T) :
    endpointSum T ≤
      4 * ((shortGapSet (fixedGapHeight T)).card : ℝ) * T^2 +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
      fixedCompensatedCore T +
      largeGcdIncomparableAbsoluteCost
        (fixedGapHeight T) 0 (fixedGcdCutoff T) T + 1/4 := by
  simpa only [fixedCompensatedCore] using
    (endpointSum_le_compensated_with_real_gcd_bill
      hT (fixedGapHeight T) (fixedGcdCutoff T))

/-- Pure finite interval-cardinality obligation. The actual
shortGapSet is the original positive additive gap interval.
Not used as an axiom; supply a pinned Lean proof separately. -/
def FixedGapCardTarget : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    ((shortGapSet (fixedGapHeight T)).card : ℝ) ≤
      Real.exp (Real.sqrt T)

/-- Pure finite diagonal/physical-threshold payment. It follows
mathematically from endpointIndex.card=N, the ORIGINAL
pickupDiagonal(T)<=2*T^2 and q_N=(N+1)^(-6).
No Mobius signed-correlation premise is contained here. -/
def FixedWeakPaymentTarget : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    ((endpointIndex T).card : ℝ)^2 *
      Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) ≤
        Real.sqrt 2 * T

/-- Elementary floor/exponential scalar inequality for T>=4:
D_*(T)>=exp(T-sqrt T)/2, N<=exp T.
This removes epsilon from the gcd cutoff. -/
def FixedGcdRatioTarget : Prop :=
  ∀ T : ℝ, 4 ≤ T →
    (⌊Real.exp T⌋₊ : ℝ) / (fixedGcdCutoff T : ℝ) ≤
      2 * Real.exp (Real.sqrt T)

/-- Optional sharper finite source target using the EXACT causal
gcd time-shift. The primitive response horizon at gcd g is
T-log g, and g>D forces T-log g<=T-log(D+1).
The finite gcd reindexing remains UNPROVED in Lean. -/
def ShiftedLargeGcdRootTailTarget : Prop :=
  ∀ (H M D : ℕ) (T : ℝ), 0 ≤ T → 1 ≤ D →
    largeGcdIncomparableAbsoluteCost H M D T ≤
      (16 * (⌊Real.exp T⌋₊ : ℝ) / (D : ℝ)) *
        max 0 (T - Real.log ((D+1 : ℕ) : ℝ))

/-- Uniform source-exact fixed-envelope theorem CONDITIONAL
only on specified ELEMENTARY bounds and the previously named
finite gcd root-tail. It assumes no signed Mobius cancellation.
For each T>=4 the SAME fixedCompensatedCore T is retained. -/
theorem endpointSum_le_fixed_numeric_of_elementary
    (hGap : FixedGapCardTarget)
    (hWeak : FixedWeakPaymentTarget)
    (hRatio : FixedGcdRatioTarget)
    (hTail : LargeGcdAbsoluteRootTailTarget)
    {T : ℝ} (hT : 4 ≤ T) :
    endpointSum T ≤
      fixedCompensatedCore T +
      (4*T^2 + 32*T)*Real.exp (Real.sqrt T) +
      Real.sqrt 2*T + 1/4 := by
  have hT0 : 0 ≤ T := by linarith
  have he := endpointSum_le_fixed_with_real_gcd_bill hT0
  have hg := hGap T hT0
  have hw := hWeak T hT0
  have hr := hRatio T hT
  have ht := hTail (fixedGapHeight T) 0 (fixedGcdCutoff T)
    T hT0 (fixedGcdCutoff_pos T)
  have hgBill :
      4 * ((shortGapSet (fixedGapHeight T)).card : ℝ) * T^2 ≤
        4*T^2*Real.exp (Real.sqrt T) := by
    calc
      _ = (4*T^2)*((shortGapSet (fixedGapHeight T)).card : ℝ) := by ring
      _ ≤ (4*T^2)*Real.exp (Real.sqrt T) :=
        mul_le_mul_of_nonneg_left hg (by positivity)
  have htBill :
      largeGcdIncomparableAbsoluteCost
        (fixedGapHeight T) 0 (fixedGcdCutoff T) T ≤
        32*T*Real.exp (Real.sqrt T) := by
    calc
      _ ≤ 16*T*(⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ) := ht
      _ = (16*T)*((⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ)) := by ring
      _ ≤ (16*T)*(2*Real.exp (Real.sqrt T)) :=
        mul_le_mul_of_nonneg_left hr (by positivity)
      _ = _ := by ring
  calc
    endpointSum T ≤
        4 * ((shortGapSet (fixedGapHeight T)).card : ℝ) * T^2 +
        ((endpointIndex T).card : ℝ)^2 *
          Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) +
        fixedCompensatedCore T +
        largeGcdIncomparableAbsoluteCost
          (fixedGapHeight T) 0 (fixedGcdCutoff T) T + 1/4 := he
    _ ≤
        4*T^2*Real.exp (Real.sqrt T) +
        Real.sqrt 2*T +
        fixedCompensatedCore T +
        32*T*Real.exp (Real.sqrt T) + 1/4 := by
      linarith [hgBill, hw, htBill]
    _ = _ := by ring

/-- Pure scalar subexponential payment: for each epsilon>0,
the positive extra budget in the previous theorem is
O_epsilon(exp(epsilon*T)). Unproved Lean calculus target, not
an arithmetic hypothesis. -/
def FixedScalarEveryRateTarget : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        (4*T^2+32*T)*Real.exp (Real.sqrt T) +
          Real.sqrt 2*T + 1/4 ≤ C * Real.exp (ε*T)

/-- This one-and-only-one arithmetic witness is RH-strength
under the inherited endpoint good-scale return, but has NOT
been proved. Unlike rateGapHeight epsilon T, the source
fixedCompensatedCore does not vary with epsilon. The dyadic
scale set is fixed before choosing epsilon. -/
def FixedCompensatedEveryRateDyadic : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        fixedCompensatedCore ((j : ℝ)*Real.log 2) ≤
          C * Real.exp (ε*((j : ℝ)*Real.log 2))

end GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
