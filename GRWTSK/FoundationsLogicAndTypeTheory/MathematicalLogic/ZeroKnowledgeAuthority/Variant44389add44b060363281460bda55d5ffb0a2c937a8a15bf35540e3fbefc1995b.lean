import Mathematics.Resolution.CryptographicProblem

/-!
# Zero-knowledge and extraction authority

An amplitude--phase split is evidence about a representation.  Zero knowledge
requires a simulator, while proof of knowledge independently requires an
extractor.  Neither certificate is synthesized from the split.
-/

namespace Mathematics.Resolution

universe u v w x

/-- A representation split with no implicit privacy or soundness authority. -/
structure PhaseSplit
    (State : Type u) (Amplitude : Type v) (Phase : Type w) where
  amplitude : State → Amplitude
  phase : State → Phase

/-- A legal split may expose the complete witness in its phase coordinate. -/
def witnessRevealingPhaseSplit (Witness : Type u) :
    PhaseSplit Witness Unit Witness where
  amplitude := fun _ => ()
  phase := id

theorem witnessRevealingPhaseSplit_phase_injective
    (Witness : Type u) :
    Function.Injective (witnessRevealingPhaseSplit Witness).phase :=
  Function.injective_id

/-- Simulation, not coordinate withholding, is the zero-knowledge authority. -/
structure ZeroKnowledgeSimulation
    (Verifier : Type u) (View : Type v) where
  realView : Verifier → View
  simulatedView : Verifier → View
  indistinguishable : View → View → Prop
  simulatorSound :
    ∀ verifier,
      indistinguishable (realView verifier) (simulatedView verifier)

/-- Proof-of-knowledge authority is an explicit extractor theorem. -/
structure KnowledgeExtraction
    (Prover : Type u) (Witness : Type v) where
  convinces : Prover → Prop
  extract : Prover → Witness
  validWitness : Witness → Prop
  extractorSound :
    ∀ prover, convinces prover → validWitness (extract prover)

/-- Succinctness is a certified size and verifier-cost bound. -/
structure SuccinctnessCertificate
    (Instance : Type u) (ProofObject : Type v) where
  proofFor : Instance → ProofObject
  proofSize : ProofObject → Nat
  verifierCost : Instance → ProofObject → Nat
  proofSizeBound : Instance → Nat
  verifierCostBound : Instance → Nat
  proof_succinct :
    ∀ instance,
      proofSize (proofFor instance) ≤ proofSizeBound instance
  verifier_succinct :
    ∀ instance,
      verifierCost instance (proofFor instance) ≤
        verifierCostBound instance

/-- The complete proof-of-knowledge profile keeps all authorities separate. -/
structure ZeroKnowledgeProofOfKnowledge
    (Verifier : Type u) (View : Type v)
    (Prover : Type w) (Witness : Type x) where
  simulation : ZeroKnowledgeSimulation Verifier View
  extraction : KnowledgeExtraction Prover Witness
  completenessClaim : Prop
  completeness : completenessClaim
  soundnessClaim : Prop
  soundness : soundnessClaim

/--
Any use of a phase split to establish zero knowledge must supply this missing
bridge explicitly.  The architecture provides no default constructor.
-/
structure PhaseSplitSimulationBridge
    (State : Type u) (Amplitude : Type v) (Phase : Type w)
    (Verifier : Type x) (View : Type*) where
  build :
    PhaseSplit State Amplitude Phase →
      ZeroKnowledgeSimulation Verifier View

end Mathematics.Resolution
