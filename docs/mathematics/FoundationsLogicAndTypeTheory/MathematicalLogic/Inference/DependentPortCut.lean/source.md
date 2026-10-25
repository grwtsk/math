# Complete source: GRWTSK.Logic.Inference.DependentPortCut

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b6a717e47adf1258d3699b92cc752ef61a336d8` · SHA-256 `5cf1de3545ebf046a3a7e2513b07b44e8a258ce06ee094dd29e27a0e450480cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.Logic.Equiv.Defs

set_option autoImplicit false

/-!
# Source-independent dependent-context port cut (candidate)

The theorem is about explicit dependent context values and checked transport
terms, NOT about introspecting an arbitrary Lean local context, reconstructing
a compiled proof term, or accepting an external capsule. An adapter is evidence
only because it contains a term of the exact implication type.

Distinct input and output contexts, as well as their potentially different
dependent second-coordinate types, are accounted for by a common source
context and explicit substitutions. The declared contexts need not be equal.

Not run by Lean under the current coordinated F06 hold; source-only proposal.
-/

namespace GRWTSK.Logic.Inference.DependentPortCut

universe u v w x y

/-- A small dependent telescope with a base value and a dependent extension. -/
abbrev Telescope (A : Type u) (B : A → Type v) := Σ a : A, B a

/-- One contextual proof at a particular telescope value (not a universal judgment). -/
structure ProofAt {C : Type u} (Statement : C → Prop) where
  context : C
  proof : Statement context

/-- A directed, proof-carrying adapter between statements in different contexts.
The joint context and the two substitutions must be explicitly supplied. -/
structure CheckedAdapter {Left : Type u} {Right : Type v} {Joint : Type w}
    (P : Left → Prop) (Q : Right → Prop)
    (left : Joint → Left) (right : Joint → Right) where
  transport : ∀ ω, P (left ω) → Q (right ω)

/-- Source-bound context substitution plus a checked adapter yields the
correctly transported conclusion, with no equality assumed between contexts. -/
def cutAt {Left : Type u} {Right : Type v} {Joint : Type w}
    {P : Left → Prop} {Q : Right → Prop}
    {left : Joint → Left} {right : Joint → Right}
    (source : ProofAt P) (ω : Joint)
    (sourceMatches : source.context = left ω)
    (adapter : CheckedAdapter P Q left right) : ProofAt Q := by
  refine ⟨right ω, ?_⟩
  exact adapter.transport ω (sourceMatches ▸ source.proof)

/-- A universal checked proof family composes through heterogeneous contexts. -/
theorem cutFamily {Left : Type u} {Right : Type v} {Joint : Type w}
    {P : Left → Prop} {Q : Right → Prop}
    (left : Joint → Left) (right : Joint → Right)
    (source : ∀ ω, P (left ω))
    (adapter : CheckedAdapter P Q left right) :
    ∀ ω, Q (right ω) := by
  intro ω
  exact adapter.transport ω (source ω)

/-- Checked adapters compose only with an exactly shared middle context,
or with an additional separately proved middle transport. -/
def CheckedAdapter.trans {A : Type u} {B : Type v} {C : Type w}
    {Joint : Type x} {P : A → Prop} {Q : B → Prop} {R : C → Prop}
    {a : Joint → A} {b : Joint → B} {c : Joint → C}
    (first : CheckedAdapter P Q a b)
    (second : CheckedAdapter Q R b c) : CheckedAdapter P R a c where
  transport := fun ω h => second.transport ω (first.transport ω h)

/-- Description is neither a checked mathematical implication nor effect authority. -/
structure DescriptiveLink (Source : Type u) (Target : Type v) where
  source : Source
  target : Target
  rationale : String

/-- A descriptive link can exist despite the logical impossibility of True → False.
No coercion from a descriptive link to a checked adapter is provided. -/
theorem descriptive_link_does_not_supply_false :
    Nonempty (DescriptiveLink Unit Unit) ∧ ¬ (True → False) := by
  constructor
  · exact ⟨⟨(), (), "relevant, not a proof"⟩⟩
  · intro invalid
    exact invalid True.intro

/-- An implication alone is not a proof of its consequent: the premise is required. -/
theorem conclusion_of_premise {P Q : Prop} (implication : P → Q) (premise : P) : Q :=
  implication premise

end GRWTSK.Logic.Inference.DependentPortCut
```
