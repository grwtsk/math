/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusAdaptiveVerifiedHeightPerron
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarCompleteUpperTransfer
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# Finite dyadic RH-shape endpoint and original full FAR from adaptive Perron

This is a FINITE-RANGE mathematical consequence of the independent
Platt-Trudgian 3e12 zero verification, not RH. For each fixed
0<delta<=1/4 the previous file yields an actual Mertens
prefix bound |M(N)|<=D_delta*(N+1/2)^(1/2+delta)
only for N+1/2<=X_delta, with
  X_delta=(H0/[1000*(1+log H0)])^(1/(1/2-delta)).

The ORIGINAL physical source is unchanged:
  pickupVelocity(u)=exp(-u/2)*mertensPrefix(exp u),
  wholePickup(T)=int_0^T pickupVelocity,
  pickupEnergy(T)=int_0^T wholePickup(u)^2.
The above finite PREFIX bound, absorbing the finite n<=7
exceptions into D'_delta, implies for
0<=T<=log(X_delta-1/2):
  |pickupVelocity(T)|<=D'_delta*exp(delta*T),
  |wholePickup(T)|<=D'_delta*exp(delta*T)/delta,
  pickupEnergy(T)<=D'_delta^2/(2*delta^3)*exp(2delta*T).

The ORIGINAL endpoint pickupCross=pickupEnergy-pickupDiagonal
has a nonnegative diagonal. The exact ORIGINAL signed FAR source
is pickupCross minus the THREE previously paid packets.
Their independent elementary, bank-uniform all-rate absolute
estimates can be consumed at r=2delta. Thus for each fixed
delta a single finite bound F_J<=C_delta*exp(2delta*T_J)
holds for ALL ORIGINAL admissible banks and ALL dyadic J
within this finite T range. There is no global all-rate claim.

All source constants are finite but not presently numerical
because the independent finite-height Z1 compact minimum
was not certified quantitatively. The elementary original
prefix-to-physical-energy calculus is an EXPLICIT unported
Lean proposition, not an arithmetic RH-level assumption.
The fixed-range result is vacuous for asymptotic RH purposes
when J exceeds the finite cutoff. Compilation DEFERRED.
-/

namespace GRWTSK.NumberTheory.Moebius.AdaptiveFiniteScaleRHReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.AdaptiveVerifiedHeightPerron
open GRWTSK.NumberTheory.Moebius.ReciprocalCriticalCompact
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
open GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.StrongFixedPowerPR103

/-- The true finite observation end at which each ORIGINAL
integer floor(exp u) has half-integer cutoff <=X_delta. -/
def adaptiveObservationEnd (delta : ℝ) : ℝ :=
  Real.log (adaptiveVerifiedCutoff delta - 1 / 2)

/-- Strictly finite but positive observation length from
the elementary explicit X_delta formula and H0=3e12.
The scalar real proof is still unported to pinned Lean. -/
def AdaptiveObservationEndNonnegativeTarget : Prop :=
  ∀ delta : ℝ, 0 < delta → delta ≤ 1 / 4 →
    0 ≤ adaptiveObservationEnd delta

/-- The exact remaining PHYSICAL-CALCULUS gate, independent
of any signed FAR bound. An arbitrary original prefix envelope
in a TRUE finite integer range transfers to actual original
pickupEnergy on its corresponding finite observation interval.

This uses only the original definitions of pickupVelocity,
wholePickup and pickupEnergy, and scalar interval calculus.
Finite n<8 are handled by |M(n)|<=n. It does not involve
ZetaZeroFreeRightOf 1/2 or a complete RH-strength conclusion. -/
def AdaptiveFiniteRangeMertensEnergyTarget : Prop :=
  ∀ (delta D : ℝ), 0 < delta → delta ≤ 1 / 4 → 0 ≤ D →
    (∀ N : ℕ, 8 ≤ N →
      halfIntegerCutoff N ≤ adaptiveVerifiedCutoff delta →
        |finiteMertensPrefix N| ≤
          D * (halfIntegerCutoff N) ^ ((1 / 2 : ℝ) + delta)) →
    ∃ E : ℝ, 0 ≤ E ∧
      ∀ T : ℝ, 0 ≤ T → T ≤ adaptiveObservationEnd delta →
        pickupEnergy T ≤ E * Real.exp (2 * delta * T)

/-- The WHOLE genuine original signed far source is FINITELY
controlled at the critical-line-proximate rate 2*delta.
This uses the existing exact source decomposition and
independent elementary packet prices, not a new FAR assumed
cancellation estimate. The bound is not all-scale.

In particular, the quantifiers require J*log2 <= the FINITE
log(X_delta-1/2); no extension to unbounded J is asserted. -/
theorem complete_far_finite_scale_nearcritical_of_verified_height
    (hVerified : PublishedFiniteHeightZetaZerosOnHalf)
    (hCompact : FiniteHeightCompactReciprocalBoundTarget)
    (hArithmetic : AdaptiveAbscissaAndCutoffTarget)
    (hPerron : AdaptiveRightLineTruncationTarget)
    (hNorm : AdaptiveFiniteHeightContourNormTarget)
    (hAbsorb : AdaptiveFiniteCutoffAbsorptionTarget)
    (hEnergy : AdaptiveFiniteRangeMertensEnergyTarget)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (delta : ℝ) (hdelta : 0 < delta)
    (hquarter : delta ≤ 1 / 4) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (B : ℕ → PrimeBand), AdmissibleBankFamily B →
        ∀ J : ℕ, 1 ≤ J →
          dyadicTime J ≤ adaptiveObservationEnd delta →
            farReducedOrLongCross (B J) ∅ J ≤
              C * Real.exp (2 * delta * dyadicTime J) := by
  obtain ⟨D,hD,hMertens⟩ :=
    adaptive_verified_height_nearcritical_Mertens
      hVerified hCompact hArithmetic hPerron hNorm hAbsorb
      delta hdelta hquarter
  obtain ⟨E,hE,hEnergyBound⟩ :=
    hEnergy delta D hdelta hquarter hD hMertens
  let r : ℝ := 2 * delta
  have hr : 0 < r := by dsimp [r]; linarith
  obtain ⟨I,hI,hIncidentBound⟩ := hIncident r hr
  obtain ⟨S,hS,hShortBound⟩ := hShort r hr
  obtain ⟨D₂,hD₂,hCloseBound⟩ := hClose r hr
  refine ⟨E + I + S + D₂, by positivity, ?_⟩
  intro B hB J hJ hRange
  let T : ℝ := dyadicTime J
  have hT : 0 ≤ T := dyadicTime_nonneg J
  have hEnergyAt := hEnergyBound T hT hRange
  have hGlobal :
      pickupCross T ≤ E * Real.exp (r * T) := by
    have hidentity := pickupEnergy_eq_diagonal_add_cross hT
    have hdiag := (pickupDiagonal_quadratic_bound hT).1
    dsimp [r] at hEnergyAt ⊢
    linarith
  have hi := hIncidentBound B hB J hJ ∅
  have hs := hShortBound (B J) ∅ J (fun _ _ => True) hJ
  have hc := hCloseBound (B J) ∅ J (fun _ _ => True) hJ
  change |shortRatioCross (B J) ∅ J| ≤
    S * Real.exp (r*T) at hs
  change |reducedCloseCross (B J) ∅ J| ≤
    D₂ * Real.exp (r*T) at hc
  have hf := far_upper_of_global_cross_and_absolute_paid
    (B J) J
    (E * Real.exp (r*T))
    (I * Real.exp (r*T))
    (S * Real.exp (r*T))
    (D₂ * Real.exp (r*T))
    hGlobal hi hs hc
  dsimp [r,T] at hf ⊢
  calc
    farReducedOrLongCross (B J) ∅ J ≤
      E * Real.exp (2 * delta * dyadicTime J) +
      I * Real.exp (2 * delta * dyadicTime J) +
      S * Real.exp (2 * delta * dyadicTime J) +
      D₂ * Real.exp (2 * delta * dyadicTime J) := hf
    _ = (E + I + S + D₂) *
      Real.exp (2 * delta * dyadicTime J) := by ring

/-- The genuine still-open UNBOUNDED statement: the preceding
finite-range conclusion does NOT settle it. -/
def GlobalAllPositiveRateFarStillOpen : Prop :=
  GRWTSK.NumberTheory.Moebius.FarReducedStructuralFrontier.FarOriginalEveryPositiveRateUpperTarget

end GRWTSK.NumberTheory.Moebius.AdaptiveFiniteScaleRHReturn
