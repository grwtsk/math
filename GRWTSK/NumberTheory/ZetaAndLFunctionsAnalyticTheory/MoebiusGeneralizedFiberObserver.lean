/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.PortFiberSignedObserver
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEllipticFiberKernelComparison
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The existing Möbius/elliptic comparison is an instance of the
# generalized typed observer with a complete signed source return.

The base is the ACTUAL existing elliptic ChannelPort system, not a new
curve or prime classifier. Each original natural endpoint occurrence
is routed by the unchanged GoodPrimeBank.route: a selected good-prime
channel or NONE. Its base object is retained by Sigma.

The observer returns the ACTUAL certified elliptic Frobenius trace.
The modeled pair kernel is multiplication of these two real traces.
No equality to the original Möbius kernel is assumed. Instead the
generic five-sector signed ledger returns every original source pair,
including rough/rough and BOTH mixed orientations. The model kernel
agrees pointwise with the previously published ellipticKernel.

This interface generalizes the OBSERVER, not an analytic zero/primality
theorem: the full dense long-gap Möbius estimate is still unresolved.
-/

namespace GRWTSK.NumberTheory.Moebius.GeneralizedFiberObserver

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.Topology.PortFiber

/-- The EXISTING actual curve-channel port family. In this particular
consumer the class predicate True carries no extra CM, torsion or
Selmer theorem. Such refinements require independent source evidence. -/
abbrev EllipticObserverSystem : GRWTSK.Topology.PortFiber :=
  GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort.system
    (fun _ => True)

/-- Actual certified Frobenius trace readout on any elliptic base curve.
It is not a generic positive Gram or a surrogate Möbius coefficient. -/
def ellipticTraceReadout : Readout EllipticObserverSystem ℝ where
  observe := fun _W x => (trace x : ℝ)

/-- A genuine optional route of original natural integer occurrences
through the existing least-selected-good-prime bank. -/
def originalIntegerSample {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) :
    PartialSample EllipticObserverSystem ℕ where
  route n := (B.route n).map (fun x =>
    (⟨W, x⟩ : TotalFiber EllipticObserverSystem))

/-- The observed kernel is a real product of the two actual trace values.
It may differ substantially from the ORIGINAL signed Möbius Gram. -/
def ellipticProductKernel : ℝ → ℝ → ℝ := fun x y => x * y

theorem readout_of_actual_channel {W : WeierstrassCurve ℤ}
    (x : CurveFiber W) :
    ellipticTraceReadout.total
      (⟨W, x⟩ : TotalFiber EllipticObserverSystem) =
      (trace x : ℝ) := rfl

/-- The new general observer reproduces the PREEXISTING elliptic model
kernel at every original integer pair; no data is introduced by
the generalization or inferred from a coincident prime-residue label. -/
theorem generalized_kernel_eq_original
    {W : WeierstrassCurve ℤ} (B : GoodPrimeBank W)
    (m n : ℕ) :
    SignedObserver.modelKernel
        (originalIntegerSample B) ellipticTraceReadout
        ellipticProductKernel m n =
      ellipticKernel B m n := by
  unfold SignedObserver.modelKernel
    ellipticKernel originalIntegerSample ellipticTraceReadout
    ellipticProductKernel Readout.total
  cases hm : B.route m with
  | none =>
      cases hn : B.route n with
      | none => simp [hm, hn]
      | some y => simp [hm, hn]
  | some x =>
      cases hn : B.route n with
      | none => simp [hm, hn]
      | some y =>
          simp [hm, hn, traceKernel]

/-- The generalized original packet is definitionally the literal
Möbius endpoint signed cross-energy up to the equivalent diagonal
test, not a new analytic observable. -/
theorem source_packet_eq_pickupCross (T : ℝ) :
    SignedObserver.orderedPacket (endpointIndex T) (sourceKernel T) =
      pickupCross T := by
  classical
  unfold SignedObserver.orderedPacket pickupCross
    sourceKernel endpointIndex
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : m = n
  · simp [h]
  · simp [h]

/-- Generalized OBSERVER return to the exact unchanged signed source.
All original indices, sign coefficients, ordered pair orientations and
the original diagonal exclusion are preserved. The rough/mixed
kernels are the untouched original source, and the matched defect
is defined, not an assumed small numerical estimate. -/
theorem pickupCross_eq_general_observer_ledger
    {W : WeierstrassCurve ℤ}
    (B : GoodPrimeBank W) (T : ℝ) :
    pickupCross T =
      SignedObserver.orderedPacket (endpointIndex T)
        (SignedObserver.modelKernel
          (originalIntegerSample B) ellipticTraceReadout ellipticProductKernel) +
      SignedObserver.orderedPacket (endpointIndex T)
        (SignedObserver.matchedDefectKernel
          (originalIntegerSample B) ellipticTraceReadout
          ellipticProductKernel (sourceKernel T)) +
      SignedObserver.orderedPacket (endpointIndex T)
        (SignedObserver.roughKernel (originalIntegerSample B) (sourceKernel T)) +
      SignedObserver.orderedPacket (endpointIndex T)
        (SignedObserver.forwardMixedKernel
          (originalIntegerSample B) (sourceKernel T)) +
      SignedObserver.orderedPacket (endpointIndex T)
        (SignedObserver.reverseMixedKernel
          (originalIntegerSample B) (sourceKernel T)) := by
  rw [← source_packet_eq_pickupCross T]
  exact SignedObserver.orderedPacket_complete
    (originalIntegerSample B) ellipticTraceReadout
    ellipticProductKernel (sourceKernel T) (endpointIndex T)

/-- A particular certified elliptic ChannelPort preserves this observer
ONLY because its previous source proof establishes equality of actual
Frobenius traces. Arbitrary ports have no corresponding theorem. -/
theorem elliptic_trace_readout_preserved
    {C : WeierstrassCurve ℤ → Prop}
    {W V : WeierstrassCurve ℤ}
    (f : ChannelPort C W V) (x : CurveFiber W) :
    ellipticTraceReadout.observe V (f.toFiber x) =
      ellipticTraceReadout.observe W x := by
  change (trace (f.toFiber x) : ℝ) = (trace x : ℝ)
  rw [f.trace_eq x]

end GRWTSK.NumberTheory.Moebius.GeneralizedFiberObserver
