import BitMatrix.Spectral.FinitePacket
import Mathlib.Tactic

/-!
# Spectral realization and covariance capability boundaries

Finite packets have unconditional probability semantics.  General Hilbert
spaces, unbounded operators, trace-class states, functional calculus, and
unitary conjugacy require additional analytic evidence.  This module records
that evidence as explicit capabilities; it manufactures none of it.

In particular, these records are not spectral triples and contain no claims
about compact resolvent, bounded commutators, Connes distance, spinors, or a
Dirac operator induced by raster geometry.
-/

namespace BitMatrix.Spectral

open scoped BigOperators
open BitMatrix.Probability

/-- Exact equivalence of two finite spectral packets.  Outcomes remain
distinguishable even when their real spectral values coincide. -/
structure PacketEquiv {Left Right : Type*}
    [Fintype Left] [Fintype Right]
    (left : FinitePacket Left) (right : FinitePacket Right) where
  outcomeEquiv : Left ≃ Right
  spectralValue_preserved : ∀ outcome,
    right.spectralValue (outcomeEquiv outcome) = left.spectralValue outcome
  probability_preserved : ∀ outcome,
    right.probability (outcomeEquiv outcome) = left.probability outcome

namespace PacketEquiv

variable {Left Right : Type*} [Fintype Left] [Fintype Right]
  {left : FinitePacket Left} {right : FinitePacket Right}

/-- Packet equivalence preserves arbitrary outcome observables after relabeling.
-/
theorem expectation_preserved (equivalence : PacketEquiv left right)
    (observable : Right → ℝ) :
    right.expectation observable =
      left.expectation (fun outcome => observable (equivalence.outcomeEquiv outcome)) := by
  rw [FinitePacket.expectation, FinitePacket.expectation]
  symm
  calc
    (∑ outcome, left.probability outcome *
        observable (equivalence.outcomeEquiv outcome)) =
        ∑ outcome, right.probability (equivalence.outcomeEquiv outcome) *
          observable (equivalence.outcomeEquiv outcome) := by
      apply Finset.sum_congr rfl
      intro outcome _
      rw [equivalence.probability_preserved]
    _ = ∑ outcome, right.probability outcome * observable outcome :=
      Equiv.sum_comp equivalence.outcomeEquiv
        (fun outcome => right.probability outcome * observable outcome)

/-- Packet equivalence preserves every real spectral observable. -/
theorem spectralExpectation_preserved (equivalence : PacketEquiv left right)
    (observable : ℝ → ℝ) :
    right.spectralExpectation observable = left.spectralExpectation observable := by
  rw [FinitePacket.spectralExpectation, equivalence.expectation_preserved]
  apply Finset.sum_congr rfl
  intro outcome _
  change left.probability outcome *
      observable (right.spectralValue (equivalence.outcomeEquiv outcome)) =
    left.probability outcome * observable (left.spectralValue outcome)
  rw [equivalence.spectralValue_preserved]

end PacketEquiv

/-! ## Finite turn covariance -/

/-- Exact finite packet covariance under a permutation of packet indices. -/
structure FamilyTurnCovariance
    {I : Type*} [Fintype I]
    {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]
    (turn : I ≃ I)
    (packets : ∀ i, FinitePacket (Outcomes i)) where
  packetCovariant : ∀ i,
    PacketEquiv (packets i) (packets (turn i))

namespace FamilyTurnCovariance

variable {I : Type*} [Fintype I]
  {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]
  {turn : I ≃ I} {packets : ∀ i, FinitePacket (Outcomes i)}

/-- Relabel the dependent direct-sum outcome by the turn and each packet's
exact outcome equivalence. -/
def sumOutcomeEquiv (covariance : FamilyTurnCovariance turn packets) :
    (Σ i, Outcomes i) ≃ (Σ i, Outcomes i) :=
  Equiv.sigmaCongr turn
    (fun i => (covariance.packetCovariant i).outcomeEquiv)

/-- Relabeling packets and simplex coordinates commutes with finite spectral
mixture. -/
def mixtureEquiv (covariance : FamilyTurnCovariance turn packets)
    (outer : SimplexPoint I) :
    PacketEquiv (FinitePacket.mix outer packets)
      (FinitePacket.mix (outer.reindex turn) packets) where
  outcomeEquiv := covariance.sumOutcomeEquiv
  spectralValue_preserved outcome := by
    change (packets (turn outcome.1)).spectralValue
        ((covariance.packetCovariant outcome.1).outcomeEquiv outcome.2) =
      (packets outcome.1).spectralValue outcome.2
    exact (covariance.packetCovariant outcome.1).spectralValue_preserved outcome.2
  probability_preserved outcome := by
    change outer (turn.symm (turn outcome.1)) *
        (packets (turn outcome.1)).probability
          ((covariance.packetCovariant outcome.1).outcomeEquiv outcome.2) =
      outer outcome.1 * (packets outcome.1).probability outcome.2
    rw [(covariance.packetCovariant outcome.1).probability_preserved]
    simp

/-- Turn transport preserves all spectral functional expectations when the
simplex weights are reindexed by the same turn. -/
theorem spectralExpectation_reindex
    (covariance : FamilyTurnCovariance turn packets)
    (outer : SimplexPoint I) (observable : ℝ → ℝ) :
    (FinitePacket.mix (outer.reindex turn) packets).spectralExpectation observable =
      (FinitePacket.mix outer packets).spectralExpectation observable :=
  (covariance.mixtureEquiv outer).spectralExpectation_preserved observable

end FamilyTurnCovariance

/-- Abstract analytic vocabulary needed to realize a finite packet by an
operator and a state.  Each predicate/function is supplied by a provider; this
record asserts no default instance. -/
structure OperatorSemantics (Operator State : Type*) where
  selfAdjointOnStatedDomain : Operator → Prop
  positiveTraceClass : State → Prop
  trace : State → ℝ
  functionalExpectation : Operator → State → (ℝ → ℝ) → ℝ

/-- Proof-carrying realization of one finite packet by a supplied operator
semantics.  The evaluation equation is the correspondence boundary between
the finite packet and the provider's functional calculus. -/
structure OperatorRealization {Outcome Operator State : Type*}
    [Fintype Outcome]
    (packet : FinitePacket Outcome)
    (semantics : OperatorSemantics Operator State) where
  operator : Operator
  state : State
  operatorSelfAdjoint : semantics.selfAdjointOnStatedDomain operator
  statePositiveTraceClass : semantics.positiveTraceClass state
  stateTraceOne : semantics.trace state = 1
  evaluates : ∀ observable,
    semantics.functionalExpectation operator state observable =
      packet.spectralExpectation observable

/-- Provider vocabulary for unitary transport.  Conjugacy is deliberately a
relation so a provider must state the domains and analytic meaning appropriate
to its operator class. -/
structure UnitaryTransportSemantics
    (Operator State Unitary : Type*) where
  isUnitary : Unitary → Prop
  operatorConjugate : Unitary → Operator → Operator → Prop
  stateConjugate : Unitary → State → State → Prop

/-- Conditional operator-level covariance for a permutation of packet indices.
The finite packet equivalence, unitary evidence, operator conjugacy, and state
conjugacy are all separate obligations. -/
structure OperatorTurnCovariance
    {I : Type*} [Fintype I]
    {Outcomes : I → Type*} [∀ i, Fintype (Outcomes i)]
    {Operator State Unitary : Type*}
    (turn : I ≃ I)
    (packets : ∀ i, FinitePacket (Outcomes i))
    (operatorSemantics : OperatorSemantics Operator State)
    (unitarySemantics : UnitaryTransportSemantics Operator State Unitary)
    extends FamilyTurnCovariance turn packets where
  realization : ∀ i, OperatorRealization (packets i) operatorSemantics
  unitary : ∀ _, Unitary
  unitaryEvidence : ∀ i, unitarySemantics.isUnitary (unitary i)
  operatorCovariant : ∀ i,
    unitarySemantics.operatorConjugate (unitary i)
      (realization i).operator (realization (turn i)).operator
  stateCovariant : ∀ i,
    unitarySemantics.stateConjugate (unitary i)
      (realization i).state (realization (turn i)).state

end BitMatrix.Spectral
