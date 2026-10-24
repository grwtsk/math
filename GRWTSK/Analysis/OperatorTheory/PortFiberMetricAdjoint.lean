import GRWTSK.Analysis.OperatorTheory.PortFiberGaugeTransport
import GRWTSK.Analysis.OperatorTheory.HolomorphicLineAdjoint

/-!
# Disjoint portfolio extension for compatible metrics and pointwise adjoints

These small-index claims instantiate universe-polymorphic source theorems. Stored proof terms
are not kernel or replay receipts. No application target or residual plan is modified.
-/

namespace GRWTSK.Analysis.OperatorTheory.PortFiberMetricAdjoint

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofArchitecture
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SimultaneousProofPortfolio
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGauge
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineGaugeMetric
open GRWTSK.Analysis.OperatorTheory.HolomorphicLinePort
open GRWTSK.Analysis.OperatorTheory.HolomorphicLineGaugePort
open GRWTSK.Analysis.OperatorTheory.HolomorphicLineAdjoint

noncomputable section

inductive AddedIndex
  | metricContinuity
  | metricDefiniteness
  | metricRoundTrip
  | gaugePairing
  | targetMetricUniqueness
  | pointwiseAdjoint
  | adjointUniqueness
  | adjointGauge
  | adjointHolomorphyBoundary
  deriving DecidableEq, Repr

def AddedClaim : AddedIndex → Prop
  | .metricContinuity =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover),
        Continuous (fun p : (C.vectorBundleCore hOpen).TotalSpace =>
          M.squaredNorm hOpen p.proj p.snd)
  | .metricDefiniteness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (M : MetricWeights C)
        (hOpen : D.IsOpenCover) (x : D.X.carrier) (a : (C.vectorBundleCore hOpen).Fiber x),
        0 ≤ M.squaredNorm hOpen x a ∧ (M.squaredNorm hOpen x a = 0 ↔ a = 0)
  | .metricRoundTrip =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C), transportMetric G.symm (transportMetric G M) = M
  | .gaugePairing =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (a b : (C.vectorBundleCore hOpen).Fiber x),
        (transportMetric G M).pairing hOpen x (G.fiberMap hOpen x a) (G.fiberMap hOpen x b) =
          M.pairing hOpen x a b
  | .targetMetricUniqueness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (M : MetricWeights C) (N : MetricWeights E) (hOpen : D.IsOpenCover),
        (∀ (x : D.X.carrier) (a b : (C.vectorBundleCore hOpen).Fiber x),
          N.pairing hOpen x (G.fiberMap hOpen x a) (G.fiberMap hOpen x b) =
            M.pairing hOpen x a b) → N = transportMetric G M
  | .pointwiseAdjoint =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (A : CompatibleOperators C)
        (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (a b : (C.vectorBundleCore hOpen).Fiber x),
        M.pairing hOpen x (A.descend hOpen x a) b =
          M.pairing hOpen x a ((adjoint A).descend hOpen x b)
  | .adjointUniqueness =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (A : CompatibleOperators C)
        (M : MetricWeights C) (hOpen : D.IsOpenCover) (x : D.X.carrier)
        (B : (C.vectorBundleCore hOpen).Fiber x →L[ℂ] (C.vectorBundleCore hOpen).Fiber x),
        (∀ a b, M.pairing hOpen x (A.descend hOpen x a) b = M.pairing hOpen x a (B b)) →
          B = (adjoint A).descend hOpen x
  | .adjointGauge =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C E : Cocycle D) (G : Gauge C E)
        (A : CompatibleOperators C), adjoint (transport G A) = transport G (adjoint A)
  | .adjointHolomorphyBoundary =>
      ∀ (ι : Type) (D : IndexedDomainCover ι) (C : Cocycle D) (A : CompatibleOperators C),
        (adjoint A).PreservesHolomorphy ↔
          ∀ i, ExtendsHolomorphically (D.U i) (fun z => (starRingEnd ℂ) (coefficient A i z))

theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | metricContinuity =>
      intro ι D C M hOpen
      exact M.squaredNorm_total_continuous hOpen
  | metricDefiniteness =>
      intro ι D C M hOpen x a
      exact ⟨M.squaredNorm_nonneg hOpen x a, M.squaredNorm_eq_zero hOpen x a⟩
  | metricRoundTrip =>
      intro ι D C E G M
      exact transportMetric_symm G M
  | gaugePairing =>
      intro ι D C E G M hOpen x a b
      exact pairing_transport G M hOpen x a b
  | targetMetricUniqueness =>
      intro ι D C E G M N hOpen hN
      exact transportMetric_unique G M N hOpen hN
  | pointwiseAdjoint =>
      intro ι D C A M hOpen x a b
      exact adjoint_pairing A M hOpen x a b
  | adjointUniqueness =>
      intro ι D C A M hOpen x B hB
      exact adjoint_unique A M hOpen x B hB
  | adjointGauge =>
      intro ι D C E G A
      exact adjoint_transport G A
  | adjointHolomorphyBoundary =>
      intro ι D C A
      exact adjoint_preservesHolomorphy_iff A

def portfolio : Portfolio AddedIndex AddedClaim where
  disposition i := .proved (addedClaim_proof i)

def architecture
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :=
  (GRWTSK.Analysis.OperatorTheory.PortFiberGaugeTransport.architecture O).combineLocal portfolio

abbrev PreviousIndex := Sum
  GRWTSK.Analysis.OperatorTheory.PortFiberGaugeTransport.PreviousIndex
  GRWTSK.Analysis.OperatorTheory.PortFiberGaugeTransport.AddedIndex

theorem original_branch_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : PreviousIndex) :
    (architecture O).local.disposition (.inl i) =
      (GRWTSK.Analysis.OperatorTheory.PortFiberGaugeTransport.architecture O).local.disposition i := rfl

theorem new_branch_proved
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    (i : AddedIndex) :
    (architecture O).local.disposition (.inr i) = .proved (addedClaim_proof i) := rfl

theorem target_unchanged
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations) :
    (architecture O).target =
      (GRWTSK.Analysis.OperatorTheory.PortFiberGaugeTransport.architecture O).target := rfl

theorem retarget_preserves_new
    (O : GRWTSK.NumberTheory.Zeta.Riemann.PortFiberTheoremPortfolio.OpenObligations)
    {Target : Prop} (d : TargetDisposition Target) (i : AddedIndex) :
    ((architecture O).retarget d).local.disposition (.inr i) =
      (architecture O).local.disposition (.inr i) := rfl

end
end GRWTSK.Analysis.OperatorTheory.PortFiberMetricAdjoint
