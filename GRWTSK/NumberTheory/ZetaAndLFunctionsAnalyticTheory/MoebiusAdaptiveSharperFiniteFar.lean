/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_DEFERRED_PER_USER /
PARSER_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusAdaptiveSharperFiniteCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusFarCompleteUpperTransfer
import GRWTSK.MeasureAndIntegration.GramDiagonalBound
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology

/-!
# A sharper but STRICTLY FINITE original signed FAR endpoint return

For each 0<delta<=1/4, the improved independent scalar
Perron error coefficient 24 permits the fixed published
finite-height verification H0=3e12 to cover
 X'_delta=(H0/[100*(1+log H0)])^(1/(1/2-delta))
instead of old denominator 1000. This yields a finite
original Mertens envelope up to N+1/2<=X'_delta.

The original source physical
pickupVelocity=e^(-u/2)*M(e^u), wholePickup=int velocity,
pickupEnergy=int wholePickup^2 gives the finite energy
rate r=2delta for T<=log(X'_delta-1/2).
The exact original signed FAR via
  pickupCross=collarIncident+shortRatio+reducedClose+far
inherits that finite bound after the THREE previously
ordinary-mathematically paid absolute proper packets.
No original coefficient, birth gate, kernel, endpoint,
prime-bank scope, sign or pair orientation changes.

IMPORTANT AUDIT: a finite interval power exponent with
an UNCOMPUTED arbitrary constant need not beat the trivial
|M(N)|<=N, and is NOT evidence of unbounded RH cancellation.
The verifiable improvement is the actual original Perron
remainder 200 ->24 and the corresponding finite contour
absorption extent. Quantitative C_delta remains UNCOMPUTED.
Every-positive-rate for ALL J remains RH-strength and OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.AdaptiveSharperFiniteFar

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.AdaptiveVerifiedHeightPerron
open GRWTSK.NumberTheory.Moebius.AdaptiveSharperPerronTail
open GRWTSK.NumberTheory.Moebius.AdaptiveSharperFiniteCertificate
open GRWTSK.NumberTheory.Moebius.ReciprocalCriticalCompact
open GRWTSK.NumberTheory.Moebius.TerminalHighSmoothCollar
open GRWTSK.NumberTheory.Moebius.CollarResidualShortRatio
open GRWTSK.NumberTheory.Moebius.CollarResidualGcdReducedGap
open GRWTSK.NumberTheory.Moebius.FarCompleteUpperTransfer
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge

/-- The exact scalar original physical-time transfer on the
ENLARGED true finite-prefix window. It is elementary interval
calculus, but has NOT been proven in pinned Lean:
  Mertens prefix <=D*x^(1/2+delta)
 -> pickupEnergy(T)<=E*exp(2delta*T)
on 0<=T<=log(X'_delta-1/2).
This is not a source cancellation oracle. -/
def SharperFiniteRangeMertensEnergyTarget : Prop :=
  ∀ (delta D : ℝ), 0 < delta → delta ≤ 1 / 4 → 0 ≤ D →
    (∀ N : ℕ, 8 ≤ N →
      halfIntegerCutoff N ≤ sharperVerifiedCutoff delta →
        |finiteMertensPrefix N| ≤
          D * (halfIntegerCutoff N) ^ ((1 / 2 : ℝ) + delta)) →
    ∃ E : ℝ, 0 ≤ E ∧
      ∀ T : ℝ, 0 ≤ T → T ≤ sharperObservationEnd delta →
        pickupEnergy T ≤ E * Real.exp (2 * delta * T)

/-- The ENTIRE original signed far source inherits the enlarged
finite-range nearcritical envelope, conditional ONLY on:
- the independent published P&T finite zero verification;
- elementary original right-line/compact/physical calculus;
- previously independent original absolute proper-packet prices.
No global RH-style arithmetic hypothesis is introduced.

For δ=.01 the new finite dyadic scope is J<=61 rather
than J<=54 in the earlier scalar proof, but the unknown
C_delta may make the numerical bound weaker than |M(N)|<=N.
-/
theorem complete_far_sharper_finite_height_of_independent_inputs
    (hVerified : PublishedFiniteHeightZetaZerosOnHalf)
    (hCompact : FiniteHeightCompactReciprocalBoundTarget)
    (hArithmetic : AdaptiveAbscissaAndCutoffTarget)
    (hOscillatory : AdaptiveOriginalOscillatoryTailTarget)
    (hSeries : SharperAdaptiveReciprocalLogSumTarget)
    (hNorm : AdaptiveFiniteHeightContourNormTarget)
    (hAbsorb : SharperCutoffAbsorptionTarget)
    (hEnergy : SharperFiniteRangeMertensEnergyTarget)
    (hIncident : UniformCollarAllRateTarget)
    (hShort : ShortRatioUniformAllRateTarget)
    (hClose : ReducedCloseUniformAllRateTarget)
    (delta : ℝ) (hdelta : 0 < delta)
    (hquarter : delta ≤ 1 / 4) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ (B : ℕ → PrimeBand), AdmissibleBankFamily B →
        ∀ J : ℕ, 1 ≤ J →
          dyadicTime J ≤ sharperObservationEnd delta →
            farReducedOrLongCross (B J) ∅ J ≤
              C * Real.exp (2 * delta * dyadicTime J) := by
  obtain ⟨D,hD,hMertens⟩ :=
    sharper_verified_height_Mertens
      hVerified hCompact hArithmetic hOscillatory hSeries
      hNorm hAbsorb delta hdelta hquarter
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

end GRWTSK.NumberTheory.Moebius.AdaptiveSharperFiniteFar
