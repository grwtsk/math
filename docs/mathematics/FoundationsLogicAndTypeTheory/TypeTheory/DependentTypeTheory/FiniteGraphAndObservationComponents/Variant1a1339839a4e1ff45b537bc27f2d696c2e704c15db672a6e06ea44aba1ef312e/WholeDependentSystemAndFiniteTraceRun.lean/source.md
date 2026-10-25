# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.FiniteGraphAndObservationComponents.Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e.WholeDependentSystemAndFiniteTraceRun

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c27c69eae412cd83d9f86ea206022347d806641` · SHA-256 `be59d00fbbce416a4d261bbdc9534c00db02e25b4c1ddd252567cf9b47671687`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
PMD: 510.0.070.020 dependent type theory
Source mathematics, hypotheses, namespaces, imports and proof text remain source copies.
Comments may differ from the established source; all exact versions remain archived.
Uncompiled; no Lean/Lake, public umbrella admission, proof acceptance or authorship determination.
-/

import Mathlib.Logic.Function.Iterate

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

/-- An input-driven state transition equipped with resolution-indexed observations. -/
structure System
    (Input : Type uI)
    (State : Type uS)
    (Resolution : Type uR) where
  Observation : Resolution → Type uO
  step : Input → State → State
  observe : ∀ ρ, State → Observation ρ

namespace System

variable {Input : Type uI} {State : Type uS} {Resolution : Type uR}

/-- Process a word from left to right, threading the state through its letters. -/
def run
    (M : System Input State Resolution)
    (inputs : List Input)
    (state : State) : State :=
  match inputs with
  | [] => state
  | input :: rest => M.run rest (M.step input state)

@[simp]
theorem run_nil
    (M : System Input State Resolution)
    (state : State) :
    M.run [] state = state :=
  rfl

@[simp]
theorem run_cons
    (M : System Input State Resolution)
    (input : Input)
    (inputs : List Input)
    (state : State) :
    M.run (input :: inputs) state =
      M.run inputs (M.step input state) :=
  rfl

/-- Concatenating input words is sequential composition in the stated order. -/
theorem run_append
    (M : System Input State Resolution)
    (first second : List Input)
    (state : State) :
    M.run (first ++ second) state =
      M.run second (M.run first state) := by
  induction first generalizing state with
  | nil => rfl
  | cons input rest ih =>
      simp only [List.cons_append, run_cons]
      exact ih (M.step input state)

@[simp]
theorem run_singleton
    (M : System Input State Resolution)
    (input : Input)
    (state : State) :
    M.run [input] state = M.step input state :=
  rfl

end System

end ObservableRecursion
```
