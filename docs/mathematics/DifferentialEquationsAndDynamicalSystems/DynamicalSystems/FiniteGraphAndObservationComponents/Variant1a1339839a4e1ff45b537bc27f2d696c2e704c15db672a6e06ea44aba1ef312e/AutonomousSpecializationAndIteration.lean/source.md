# Complete source: GRWTSK.DynamicalSystems.FiniteGraphAndObservationComponents.Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.AutonomousSpecializationAndIteration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `516814df52c4e9288da63cb9fc3b9ea271567233` · SHA-256 `1d1f37d664e90801b641ec41fbab68228af56c970484818a472437f23c5ffcc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Deterministic replay of an established source split; no new conceptual review.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e
Organized SHA-256: c047e07e1530b33a28df11860b7b2ad9543f6b927cc63239548a335bbb72e565
Established decision SHA-256: a2b95e9fd5fb007c9fef54e2783657bf318c8bfd9904f8f82797e307fe7b8a82
PMD: 510.6.050 dynamical systems
Source mathematics, hypotheses, namespaces, imports and proof text remain source copies.
Comments may differ from the established source; all exact versions remain archived.
Uncompiled; no Lean/Lake, public umbrella admission, proof acceptance or authorship determination.
-/

import Mathlib.Logic.Function.Iterate
import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.FiniteGraphAndObservationComponents.Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.WholeDependentSystemAndFiniteTraceRun

/-!
# Input-driven observable recursion

This generic interface is owned by the DAF causal layer; it has no
BinaryMatrix-specific dependency.

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
