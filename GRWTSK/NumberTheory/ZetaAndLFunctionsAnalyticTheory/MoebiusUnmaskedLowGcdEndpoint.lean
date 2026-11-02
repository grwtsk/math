/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFixedCoreEnergyComparison
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGcdTimeShift
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Original Möbius off-diagonal source with only a fixed gcd cutoff

The prior fixedCompensatedCore retains geometric strong/physical
and comparable/incomparable masks. They are not intrinsic to the
arithmetic supplier: the COMPLETE original high-gcd sector,
including comparable and incomparable ordered pairs, can be
paid absolutely at every positive exponential rate.

Let N(T)=floor(exp T), D_*(T)=max(1,floor(exp(T-sqrt T))).
Define A_*(T) as the original signed source restricted ONLY by
m != n and gcd(m,n) <= D_*(T).
The exact all-horizon source partition is
  pickupCross(T)=A_*(T)+plainHighGcdCross(D_*(T),T).

Elementary finite arithmetic gives for D>=1, T>=0:
  completeHighGcdAbsoluteCost(D,T)<=16*T*N/D.
This is a new UNPROVED PINNED LEAN target, even though the
paper proof is complete; no arithmetic Möbius cancellation
is needed. It counts comparable and incomparable equally.
Thus for T>=4 the high-gcd cost is <=32*T*exp(sqrt T),
all-positive-rate with ONE fixed cutoff.

The exact signed bridge back to fixedCompensatedCore is given
below, without discarding the original Putnam, weak or strong
incomparable sectors. An explicit primitive coprime triple sum
with the TRUE shifted causal horizon is also recorded, with
its finite reindex an UNPROVED source proposition.

Compilation, exact-types, fresh kernel and transitive axiom
audit NOT_RUN; the signed low-gcd growth bound and RH OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.UnmaskedLowGcdEndpoint

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdStrata
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.FixedCoreEnergyComparison
open GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

classical

/-- Literal complete original signed off-diagonal source with gcd<=D.
Neither geometrical nor arithmetic sign masks are imposed. -/
def plainLowGcdCross (D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ Nat.gcd m n ≤ D then sourceKernel T m n else 0

/-- Complete original complementary high-gcd sector, both orientations. -/
def plainHighGcdCross (D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ D < Nat.gcd m n then sourceKernel T m n else 0

/-- Source-real positive absolute cost for ALL high-gcd pairs. -/
def plainHighGcdAbsoluteCost (D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if m ≠ n ∧ D < Nat.gcd m n then |sourceKernel T m n| else 0

/-- Exact finite original-source partition, with neither
comparable nor incomparable pairs removed. -/
theorem pickupCross_eq_plainLow_add_high (D : ℕ) (T : ℝ) :
    pickupCross T = plainLowGcdCross D T + plainHighGcdCross D T := by
  change (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n then sourceKernel T m n else 0) =
    plainLowGcdCross D T + plainHighGcdCross D T
  unfold plainLowGcdCross plainHighGcdCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : m ≠ n
  · by_cases hg : Nat.gcd m n ≤ D
    · have hnot : ¬ D < Nat.gcd m n := not_lt.mpr hg
      simp [hne, hg, hnot]
    · have hgt : D < Nat.gcd m n := lt_of_not_ge hg
      simp [hne, hg, hgt]
  · simp [hne]

/-- Signed complete high-gcd source cannot exceed its positive bill. -/
theorem plainHighGcd_abs_le_absoluteCost (D : ℕ) (T : ℝ) :
    |plainHighGcdCross D T| ≤ plainHighGcdAbsoluteCost D T := by
  let R : ℕ → ℕ → Prop := fun m n => m ≠ n ∧ D < Nat.gcd m n
  have htriangle :
      |∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        if R m n then sourceKernel T m n else 0| ≤
      ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        |if R m n then sourceKernel T m n else 0| := by
    calc
      _ ≤ ∑ m ∈ endpointIndex T,
        |∑ n ∈ endpointIndex T,
          if R m n then sourceKernel T m n else 0| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          |if R m n then sourceKernel T m n else 0| := by
        apply Finset.sum_le_sum
        intro m hm
        exact Finset.abs_sum_le_sum_abs _ _
  have hcost :
      (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        |if R m n then sourceKernel T m n else 0|) =
      plainHighGcdAbsoluteCost D T := by
    unfold plainHighGcdAbsoluteCost R
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    split_ifs <;> simp
  unfold plainHighGcdCross
  exact htriangle.trans_eq hcost

/-- Genuine endpoint source, paying only the COMPLETE large-gcd
original absolute bill and the original quarter-unit quadrature. -/
theorem endpointSum_le_plainLow_with_highCost
    {T : ℝ} (hT : 0 ≤ T) (D : ℕ) :
    endpointSum T ≤
      plainLowGcdCross D T + plainHighGcdAbsoluteCost D T + 1/4 := by
  have he := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_plainLow_add_high D T] at he
  have hh := plainHighGcd_abs_le_absoluteCost D T
  linarith [le_abs_self (plainHighGcdCross D T)]

/-- Elementary finite root-tail proposition, UNPROVED in Lean.
For g=gcd(m,n)>D and m=g*a,n=g*b, the original causal bound
K_T(m,n)<=4*T/(g*sqrt(a*b)) and finite reciprocal-root sums
give <=16*T*N/g^2 per g. Summing g>D gives <=16*T*N/D.
Unlike the prior target, this includes all comparable ratios. -/
def CompleteHighGcdAbsoluteRootTailTarget : Prop :=
  ∀ (D : ℕ) (T : ℝ), 0 ≤ T → 1 ≤ D →
    plainHighGcdAbsoluteCost D T ≤
      16*T*(⌊Real.exp T⌋₊ : ℝ)/(D : ℝ)

/-- The source is the SAME for all requested rates. -/
def fixedPlainLowGcdCross (T : ℝ) : ℝ :=
  plainLowGcdCross (fixedGcdCutoff T) T

theorem pickupCross_eq_fixedPlain_add_high (T : ℝ) :
    pickupCross T =
      fixedPlainLowGcdCross T +
      plainHighGcdCross (fixedGcdCutoff T) T := by
  simpa only [fixedPlainLowGcdCross] using
    pickupCross_eq_plainLow_add_high (fixedGcdCutoff T) T

/-- Exact signed map from the previous compensated source to
the geometrically UNMASKED source. No paid packet is discarded
and no negative comparable credit is double-subtracted. -/
theorem fixedPlain_eq_fixedCompensated_plus_signed_difference
    {T : ℝ} (hT : 0 ≤ T) :
    fixedPlainLowGcdCross T =
      fixedCompensatedCore T +
      endpointGapSetCross (shortGapSet (fixedGapHeight T)) T +
      weakOverlapCross (shortGapSet (fixedGapHeight T))
        (originalEnergyFamily T)
        (sourceCollarSigma (fixedGapHeight T) T)
        (weakPhysicalThreshold T) +
      largeGcdIncomparableCross
        (fixedGapHeight T) 0 (fixedGcdCutoff T) T -
      plainHighGcdCross (fixedGcdCutoff T) T := by
  have he := pickupCross_eq_fixed_compensated_ledger hT
  have hs := pickupCross_eq_fixedPlain_add_high T
  linarith

/-- Fixed-cutoff complete high-gcd price. Conditional ONLY
on the finite root-tail and elementary floor/ratio targets. -/
theorem plainHighGcd_fixed_abs_le_of_elementary
    (hTail : CompleteHighGcdAbsoluteRootTailTarget)
    (hRatio : FixedGcdRatioTarget)
    {T : ℝ} (hT : 4 ≤ T) :
    |plainHighGcdCross (fixedGcdCutoff T) T| ≤
      32*T*Real.exp (Real.sqrt T) := by
  have hT0 : 0 ≤ T := by linarith
  have hc := hTail (fixedGcdCutoff T) T hT0
    (fixedGcdCutoff_pos T)
  have hr := hRatio T hT
  have ha := plainHighGcd_abs_le_absoluteCost (fixedGcdCutoff T) T
  calc
    _ ≤ plainHighGcdAbsoluteCost (fixedGcdCutoff T) T := ha
    _ ≤ 16*T*(⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ) := hc
    _ = (16*T)*((⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ)) := by ring
    _ ≤ (16*T)*(2*Real.exp (Real.sqrt T)) :=
      mul_le_mul_of_nonneg_left hr (by positivity)
    _ = _ := by ring

/-- Complete endpoint reduction with zero Putnam/weak/physical
costs in its statement. Remaining arithmetic source A_* is signed. -/
theorem endpointSum_le_fixedPlain_of_elementary
    (hTail : CompleteHighGcdAbsoluteRootTailTarget)
    (hRatio : FixedGcdRatioTarget)
    {T : ℝ} (hT : 4 ≤ T) :
    endpointSum T ≤
      fixedPlainLowGcdCross T + 32*T*Real.exp (Real.sqrt T) + 1/4 := by
  have he := endpointSum_le_plainLow_with_highCost
    (by linarith : 0 ≤ T) (fixedGcdCutoff T)
  have hc := hTail (fixedGcdCutoff T) T (by linarith)
    (fixedGcdCutoff_pos T)
  have hr := hRatio T hT
  have hh :
      plainHighGcdAbsoluteCost (fixedGcdCutoff T) T ≤
      32*T*Real.exp (Real.sqrt T) := by
    calc
      _ ≤ 16*T*(⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ) := hc
      _ = (16*T)*((⌊Real.exp T⌋₊ : ℝ)/(fixedGcdCutoff T : ℝ)) := by ring
      _ ≤ (16*T)*(2*Real.exp (Real.sqrt T)) :=
        mul_le_mul_of_nonneg_left hr (by positivity)
      _ = _ := by ring
  dsimp [fixedPlainLowGcdCross]
  linarith

/-- Pure elementary scalar calculus, still UNPROVED in pinned
Lean: choose R=max(4,4/epsilon^2), C=64/epsilon.
This is not a signed arithmetic proposition. -/
def CompleteHighGcdScalarEveryRateTarget : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C R : ℝ, 0 ≤ C ∧ 4 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        32*T*Real.exp (Real.sqrt T) ≤ C*Real.exp (ε*T)

/-- Genuinely UNPROVED all-rate ONE-SIDED arithmetic target,
fixed BEFORE epsilon and with NO physical or comparable mask. -/
def PlainLowGcdEveryRateDyadic : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ,
        fixedPlainLowGcdCross ((j : ℝ)*Real.log 2) ≤
          C*Real.exp (ε*((j : ℝ)*Real.log 2))

/-- Finite coprime gcd triple, including a=1 and b=1 comparable
ratios, TRUE physical time shift, and source Möbius symbols. -/
def plainPrimitiveGcdTruncation (D : ℕ) (T : ℝ) : ℝ :=
  ∑ g ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ∑ a ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      ∑ b ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if g ≤ D ∧ a ≠ b ∧ Nat.Coprime a b ∧
          Nat.Coprime g a ∧ Nat.Coprime g b ∧
          g*a ∈ endpointIndex T ∧ g*b ∈ endpointIndex T
        then
          (moebiusReal g)^2 * moebiusReal a * moebiusReal b *
            (g : ℝ)⁻¹ *
              pickupResponseGram (T-Real.log (g : ℝ)) a b
        else 0

/-- Source-exact finite gcd reindex to be proved in pinned Lean:
g=gcd(m,n), original squareful zero coefficients, correct
multiplicativity and causal time shift. NO RH assumption. -/
def PlainPrimitiveGcdReindexTarget : Prop :=
  ∀ (D : ℕ) (T : ℝ), 0 ≤ T →
    plainLowGcdCross D T = plainPrimitiveGcdTruncation D T

end GRWTSK.NumberTheory.Moebius.UnmaskedLowGcdEndpoint
