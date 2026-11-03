/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DifferentialGeometry.PhysicalBitPrimeObserver
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticFiberKernelComparison
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Physical bit observer, q-relative windows, and signed arithmetic source

The physical bit is the sign of the existing Gödel observer covector.
The physical transfer is the genuine chart isometry shiftTangent;
the bit equality is proved from existing observerFlat_shift.
The integer q of an elliptic residue channel is NOT changed.

A separate positive RealUnit specifies one real observation unit.
For π, relative time τ maps to the ORIGINAL RH physical time
  T = (q : ℝ) * π * τ.
This is an exact reversible coordinate map, not a new arithmetic
congruence or zero-free estimate. The ORIGINAL pickupCross, original
elliptic packet and whole signed residual are evaluated at SAME T.

A signed arithmetic observation F after reparametrization retains
  F(physicalTime τ) - F(τ).
This is NOT automatically zero because a physical observer bit,
spatial metric or vorticity is preserved.
-/

namespace GRWTSK.NumberTheory.Moebius.PhysicalBitWindowReturn

open GRWTSK.DifferentialGeometry.PhysicalBitPrimeObserver
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.RiemannHypothesis.CCC

/-- The actual ORIGINAL arithmetic observation at returned physical time. -/
def originalCrossAt (q : PrimeIndex) (u : RealUnit) (t : ℝ) : ℝ :=
  pickupCross (physicalTime q u t)

/-- The COMPLETE signed time-reparameterization defect. -/
def clockDefect (q : PrimeIndex) (u : RealUnit)
    (F : ℝ → ℝ) (t : ℝ) : ℝ :=
  F (physicalTime q u t) - F t

/-- Exact real observer source plus complete signed clock defect. -/
theorem physical_observation_with_defect
    (q : PrimeIndex) (u : RealUnit) (F : ℝ → ℝ) (t : ℝ) :
    F (physicalTime q u t) =
      F t + clockDefect q u F t := by
  unfold clockDefect
  ring

/-- Entire ORIGINAL Möbius cross at the q-relative π clock, preserving
all unmatched and mixed ordered pairs and exact source-minus-elliptic loss. -/
theorem pi_relative_original_cross
    {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (q : PrimeIndex) (t : ℝ) :
    originalCrossAt q piUnit t =
      matchedEllipticPacket B (physicalTime q piUnit t) +
        fullSignedResidual B (physicalTime q piUnit t) :=
  pickupCross_eq_elliptic_add_full_residual B (physicalTime q piUnit t)

/-- The physical bit frame DOES NOT license dropping real time-change loss. -/
theorem pi_relative_cross_source_defect
    (q : PrimeIndex) (t : ℝ) :
    originalCrossAt q piUnit t =
      pickupCross t + clockDefect q piUnit pickupCross t :=
  physical_observation_with_defect q piUnit pickupCross t

/-- Exact original quarter-unit quadrature error at the correct physical
time, not an estimate deduced from the auxiliary bit or vorticity. -/
theorem pi_relative_endpoint_error
    (q : PrimeIndex) {t : ℝ} (ht : 0 ≤ t) :
    |endpointSum (physicalTime q piUnit t) -
      pickupCross (physicalTime q piUnit t)| ≤ (1 / 4 : ℝ) := by
  have hT : 0 ≤ physicalTime q piUnit t :=
    mul_nonneg (physicalUnit_pos q piUnit).le ht
  exact endpointSum_error hT

/-- Exact RH endpoint return with ALL signed residual sectors intact. -/
theorem pi_relative_endpoint_upper
    {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (q : PrimeIndex)
    {t : ℝ} (ht : 0 ≤ t) :
    endpointSum (physicalTime q piUnit t) ≤
      matchedEllipticPacket B (physicalTime q piUnit t) +
      fullSignedResidual B (physicalTime q piUnit t) +
      (1 / 4 : ℝ) := by
  have hT : 0 ≤ physicalTime q piUnit t :=
    mul_nonneg (physicalUnit_pos q piUnit).le ht
  have herr := (abs_le.mp (endpointSum_error hT)).2
  rw [pickupCross_eq_elliptic_add_full_residual B
    (physicalTime q piUnit t)] at herr
  linarith

/-- A REAL π-relative observation window and its logical complement
return the complete original Möbius source, hence the complete elliptic
matched packet PLUS the full signed rough/mixed/defect residual.
Nothing is lost by restricting one reading when its complement is kept. -/
theorem pi_window_complement_full_signed_return
    {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (q : PrimeIndex)
    (w : RelativeWindow) (t : ℝ) :
    insideReading q piUnit w pickupCross (physicalTime q piUnit t) +
      outsideReading q piUnit w pickupCross (physicalTime q piUnit t) =
        matchedEllipticPacket B (physicalTime q piUnit t) +
          fullSignedResidual B (physicalTime q piUnit t) := by
  rw [inside_add_outside_eq]
  exact pickupCross_eq_elliptic_add_full_residual B (physicalTime q piUnit t)

/-- Exact q-time recovery returns to the same source, not a new
source-equivalent function with hidden q-dependent arithmetic content. -/
theorem originalCrossAt_round_trip (q : PrimeIndex) (u : RealUnit)
    (T : ℝ) :
    originalCrossAt q u (relativeTime q u T) = pickupCross T := by
  simp [originalCrossAt, physicalTime_relativeTime]

/-- A certified arithmetic channel port preserves its prime and hence
the π-relative clock, with the actual ZMod prime unchanged. -/
theorem pi_relative_clock_port
    {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ}
    (f : ChannelPort C W V) (x : CurveFiber W)
    (T : ℝ) :
    relativeTime (prime (f.toFiber x)) piUnit T =
      relativeTime (prime x) piUnit T :=
  channelPort_relativeTime f x piUnit T

end GRWTSK.NumberTheory.Moebius.PhysicalBitWindowReturn
