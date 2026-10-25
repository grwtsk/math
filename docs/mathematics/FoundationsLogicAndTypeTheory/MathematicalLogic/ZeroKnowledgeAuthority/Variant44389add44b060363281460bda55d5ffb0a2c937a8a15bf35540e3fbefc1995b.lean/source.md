# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ZeroKnowledgeAuthority.Variant44389add44b060363281460bda55d5ffb0a2c937a8a15bf35540e3fbefc1995b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b861f30ec5ce7dfbcf110be2eef1f4a56c4c1115` · SHA-256 `44389add44b060363281460bda55d5ffb0a2c937a8a15bf35540e3fbefc1995b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
