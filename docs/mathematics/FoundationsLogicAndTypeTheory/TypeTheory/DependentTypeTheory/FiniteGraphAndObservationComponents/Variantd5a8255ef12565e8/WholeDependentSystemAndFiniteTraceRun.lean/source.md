# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.FiniteGraphAndObservationComponents.Variantd5a8255ef12565e8.WholeDependentSystemAndFiniteTraceRun

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `107389fb057ca88f408e15173dc19cf9f0584da3` · SHA-256 `e270adc0c6d95266fb1c8520771f01416ca17acb88a4b16eba743600d084b4ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeDependentSystemAndFiniteTraceRun - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d5a8255ef12565e8a1f0fbe4293dd241fb32bfa367611a22433482bd5627e9dd
Organized SHA-256: fa2cfb2ddf5d4579044a85ed540a66b003703380da8b9946a7428f061fffbc74
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Whole dependent System record with all three fields, left-to-right finite-word execution and all actual base/append/singleton proofs. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import Mathlib.Logic.Function.Iterate

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
