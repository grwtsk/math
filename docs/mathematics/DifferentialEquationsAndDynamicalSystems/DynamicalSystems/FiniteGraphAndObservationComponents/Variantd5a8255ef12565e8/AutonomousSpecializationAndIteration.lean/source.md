# Complete source: GRWTSK.DynamicalSystems.FiniteGraphAndObservationComponents.Variantd5a8255ef12565e8.AutonomousSpecializationAndIteration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `498d707cf31108cdbc17e59d97fcaabafc5c3632` · SHA-256 `b438a92bfedf96429516603d434638b90cec388722febf41360ce729c1087c3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
AutonomousSpecializationAndIteration - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd
Organized SHA-256: fa2cfb2ddf5d4579044a85ed540a66b003703380da8b9946a7428f061fffbc74
PMD: 510.6.050 dynamical systems (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Whole autonomous PUnit specialization and exact replicated-input/iteration theorem; no finite-state/reversibility/efficiency or inter-resolution assumptions. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import Mathlib.Logic.Function.Iterate
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.FiniteGraphAndObservationComponents.Variantd5a8255ef12565e8.WholeDependentSystemAndFiniteTraceRun

/-!
# Input-driven observable recursion

This generic interface is owned by the DAF causal layer; it has no
BitMatrix-specific dependency.

`System Input State Resolution` is the small, generic transition interface used
by the later causal constructions.  A finite input word is processed from left
to right: for `[a₁, …, aₙ]`, `run` applies the transition for `a₁` first and
the transition for `aₙ` last.  Observations may have a different result type
at each resolution.

The input-driven interface is primary.  An autonomous recurrence is only its
specialization to the one-point input type `PUnit`; it does not introduce a
second dynamics framework.  Nothing here assumes finite state, reversibility,
minimality, computational efficiency, or any relationship between different
observation resolutions.
-/

namespace ObservableRecursion

universe uI uS uR uO

namespace System

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}

/-- Regard an autonomous recurrence as an input-driven system with one input. -/
def autonomous
    (step : State → State)
    (Observation : Resolution → Type uO)
    (observe : ∀ ρ, State → Observation ρ) :
    System PUnit State Resolution where
  Observation := Observation
  step := fun _ => step
  observe := observe

/-- Running `t` trivial inputs in the autonomous specialization is `t` iteration. -/
theorem autonomous_run_replicate
    (step : State → State)
    (Observation : Resolution → Type uO)
    (observe : ∀ ρ, State → Observation ρ)
    (t : Nat)
    (state : State) :
    (autonomous step Observation observe).run
        (List.replicate t PUnit.unit) state =
      step^[t] state := by
  induction t generalizing state with
  | zero => rfl
  | succ t ih =>
      simp only [List.replicate_succ, run_cons, Function.iterate_succ_apply]
      exact ih (step state)

end System

end ObservableRecursion
```
