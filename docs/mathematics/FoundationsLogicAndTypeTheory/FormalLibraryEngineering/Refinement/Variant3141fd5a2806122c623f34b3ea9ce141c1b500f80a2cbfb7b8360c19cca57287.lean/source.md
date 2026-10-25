# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Refinement.Variant3141fd5a2806122c623f34b3ea9ce141c1b500f80a2cbfb7b8360c19cca57287

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a59d079b79825ba74f5a461e83a2564b7c0a3c20` · SHA-256 `3141fd5a2806122c623f34b3ea9ce141c1b500f80a2cbfb7b8360c19cca57287`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Refinement from external implementations

The semantic refinement interface relates an implementation state machine to
an abstract specification.  Rust programs, GitHub Actions, filesystems,
processes, and operating systems occur only as external implementation targets;
their behavior acquires theorem authority only through the supplied refinement
proofs.
-/

universe u v w x y

namespace Surface.ContinuousAssurance

/-- Runtime domains deliberately kept outside the Lean semantic core. -/
inductive ExternalImplementationTarget
  | githubActions
  | rustProgram
  | localDevelopmentModel
  | leanWorkerProcess
  | filesystem
  | processExecution
  | operatingSystem
  deriving DecidableEq, Repr

/--
Submission status for a concrete runtime-refinement bridge. `notSubmitted`
means exactly that the architecture submission contains no such bridge; it is
not a theorem about the behavior of the external target.
--/
inductive RuntimeRefinementSubmissionStatus
  | notSubmitted
  | submitted
  deriving DecidableEq, Repr

/--
The current submission does not provide a Lean refinement from the Rust audit
executable, shell orchestration, provider adapters, filesystem, process
execution, or operating system to the abstract assurance transition system.
Their claims therefore remain external executable-conformance claims.
--/
def rustAuditRuntimeRefinementStatus : RuntimeRefinementSubmissionStatus :=
  .notSubmitted

/--
No refinement from the local model, interactive Rust controller, Lean worker
processes, or operating-system cancellation behavior is submitted here.
-/
def interactiveDevelopmentRuntimeRefinementStatus :
    RuntimeRefinementSubmissionStatus :=
  .notSubmitted

/-- The declared submission boundary is explicitly `notSubmitted`. -/
@[simp]
theorem rustAuditRuntimeRefinement_notSubmitted :
    rustAuditRuntimeRefinementStatus = .notSubmitted :=
  rfl

/-- The interactive runtime remains an external executable-conformance target. -/
@[simp]
theorem interactiveDevelopmentRuntimeRefinement_notSubmitted :
    interactiveDevelopmentRuntimeRefinementStatus = .notSubmitted :=
  rfl

/-- A transition-and-observation refinement contract. -/
structure Refinement
    (SpecificationState : Type u)
    (ImplementationState : Type v)
    (SpecificationInput : Type w)
    (ImplementationInput : Type x)
    (SpecificationObservation : Type y)
    (ImplementationObservation : Type y) where
  validImplementationState : ImplementationState → Prop
  abstraction : ImplementationState → SpecificationState
  inputTranslation : ImplementationInput → SpecificationInput
  observationTranslation : ImplementationObservation → SpecificationObservation
  specificationTransition :
    SpecificationState → SpecificationInput → SpecificationState
  implementationTransition :
    ImplementationState → ImplementationInput → ImplementationState
  specificationObservation : SpecificationState → SpecificationObservation
  implementationObservation : ImplementationState → ImplementationObservation
  validStatePreservation :
    ∀ implementation input,
      validImplementationState implementation →
      validImplementationState (implementationTransition implementation input)
  transitionSoundness :
    ∀ implementation input,
      validImplementationState implementation →
      abstraction (implementationTransition implementation input) =
        specificationTransition
          (abstraction implementation)
          (inputTranslation input)
  observationSoundness :
    ∀ implementation,
      validImplementationState implementation →
      observationTranslation (implementationObservation implementation) =
        specificationObservation (abstraction implementation)

namespace Refinement

/-- One implementation step refines the corresponding specification step. -/
theorem step_refines
    {SpecificationState : Type u}
    {ImplementationState : Type v}
    {SpecificationInput : Type w}
    {ImplementationInput : Type x}
    {SpecificationObservation ImplementationObservation : Type y}
    (refinement : Refinement SpecificationState ImplementationState
      SpecificationInput ImplementationInput SpecificationObservation
      ImplementationObservation)
    (implementation : ImplementationState)
    (input : ImplementationInput)
    (valid : refinement.validImplementationState implementation) :
    refinement.abstraction
        (refinement.implementationTransition implementation input) =
      refinement.specificationTransition
        (refinement.abstraction implementation)
        (refinement.inputTranslation input) :=
  refinement.transitionSoundness implementation input valid

end Refinement

end Surface.ContinuousAssurance
```
