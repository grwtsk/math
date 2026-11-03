/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupAdaptiveDyadicWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficDefectLanguage
import Mathlib.Tactic

/-!
# RH-facing physical-bit sofic certificates, with the full signed defect

The original completed Mobius off-diagonal source is `pickupCross`, not an
arbitrary observer packet. The prior `PhysicalBitGramReturn` and certified
chart-shift graph prove it equals the observed packet PLUS the original-index
signed readout defect plus any exact transport defect. This module pays the
absolute defect in an upper bound; it NEVER suppresses missing or mislabeled
bits and never promotes a candidate graph edge.

One sufficiently cheap, proof-carrying source-certified packet within each
rate-dependent dyadic window suffices for the existing RH implication. The
unproved arithmetic content is an all-positive-rate bound on packet PLUS
its complete residual. The finite optimizer, a physical codec, or a zero-cost
chart shift alone does not supply that bound.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupPhysicalSoficWindowRH

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupAdaptiveDyadicWindow
open GRWTSK.NumberTheory.Moebius.PhysicalBitGramReturn
open GRWTSK.NumberTheory.Moebius.MoebiusSoficDefectLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity

/-- Source comparison after a genuine certified shift word. Every omitted
original signed pair remains inside the initial readout defect. -/
theorem endpoint_le_physicalCertifiedPacket
    (p : Parameters) {T : ℝ} (hT : 0 ≤ T)
    (stream : PhysicalStream) {target : ChartedStream} {word : List ℝ}
    {d b : ℝ}
    (trace : CertifiedTrace (mobiusShiftSystem p T) (0, stream)
      word target d b) :
    endpointSum T ≤ observedPacket p target.1 T target.2 +
      |signedReadoutDefect p 0 T stream| + b + 1 / 4 := by
  have hsource := (pickupCross_source_return p T stream trace).2
  have herr := (abs_le.mp (endpointSum_error hT)).2
  have hupper : pickupCross T - observedPacket p target.1 T target.2 ≤
      |signedReadoutDefect p 0 T stream| + b :=
    (le_abs_self _).trans hsource
  linarith

/-- The actual arithmetic premise for a family of certifiable physical
readouts. All rates and all window indices are quantified. The stream and
certified path may depend on the requested rate and window. -/
def PhysicalWindowCertificate (p : Parameters) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ, ∃ k : ℕ, j ≤ k ∧ k ≤ 2 * j + 1 ∧
      ∃ (stream : PhysicalStream) (target : ChartedStream)
        (word : List ℝ) (d b : ℝ),
        CertifiedTrace (mobiusShiftSystem p (dyadicTime k))
          (0, stream) word target d b ∧
        observedPacket p target.1 (dyadicTime k) target.2 +
          |signedReadoutDefect p 0 (dyadicTime k) stream| + b + 1 / 4 ≤
            C * Real.exp (ε * dyadicTime j)

/-- Conditional but honest RH implication: the certified graph trace keeps
its full source defect and its independent nonnegative allowance. -/
theorem riemannHypothesis_of_physicalWindowCertificate
    (p : Parameters) (h : PhysicalWindowCertificate p) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_of_dyadicWindowBirthBound
  intro ε hε
  obtain ⟨C, hC, hwindow⟩ := h ε hε
  refine ⟨C, hC, ?_⟩
  intro j
  obtain ⟨k, hjk, hk, stream, target, word, d, b, trace, hcost⟩ := hwindow j
  refine ⟨k, hjk, hk, ?_⟩
  calc
    dyadicBirthSum k = endpointSum (dyadicTime k) :=
      (endpoint_dyadic_eq_birthSum k).symm
    _ ≤ observedPacket p target.1 (dyadicTime k) target.2 +
        |signedReadoutDefect p 0 (dyadicTime k) stream| + b + 1 / 4 :=
      endpoint_le_physicalCertifiedPacket p (dyadicTime_nonnegative k) stream trace
    _ ≤ C * Real.exp (ε * dyadicTime j) := hcost

/-- The specific physical chart-shift graph has ZERO transport budget by
source theorem, but the INITIAL readout defect remains unchanged. -/
theorem physical_shift_transport_budget_zero
    (p : Parameters) (T : ℝ)
    {source target : ChartedStream} {word : List ℝ} {d b : ℝ}
    (trace : CertifiedTrace (mobiusShiftSystem p T)
      source word target d b) : b = 0 :=
  actual_trace_allowance_zero p T trace

end GRWTSK.NumberTheory.Moebius.PickupPhysicalSoficWindowRH
