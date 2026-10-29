/-
ParameterizedFiniteComposition — exact source mathematical component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d7b0accab2c491eb84a6a03ded8659192fe5add73a8e1f08a5fe5da7155c4c45
Organized SHA-256: 8b7f3aa6f96825553b9752eed51715c4bac1dd86a5b1705f78bc551c9705c1d7
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole dependent representation environment and parameter-indexed composition/independence/finite-chain package; all mixed Certified and workspace commands remain whole archive. Exact original namespaces and imports remain; no added containing namespace or open binding. Only declared same-source public companions are added. Source documentation may describe archived components. Provider resolution, namespace coimport compatibility and elaboration are unreplayed. -/

import DAF.Comparison.Composition
import DAF.Comparison.Construction

/-!
# Finite typed comparison chains

The endpoint indices make ill-typed function composition unrepresentable.
`Chain.composite` deliberately returns only a map: certification across
coefficient regimes is separately gated by `Certified.comp` or
`Certified.compWithCoefficientChange`.  The assumptions and component claims
remain visible as finite conjunctions.

Representation-indexed composition is also explicit below; no representation
parameter is existentially hidden.
-/

namespace DAF.Comparison

universe u v w

/-! ## Explicit representation environments -/

/-- Every representation parameter selected by a composite construction. -/
structure RepresentationEnvironment (Index : Type u) where
  Representation : Index → Type v
  selected : (i : Index) → Representation i

namespace Parameterized

/-- Pointwise composition retains the same explicit representation index. -/
def comp
    (g : Parameterized Representation B C)
    (f : Parameterized Representation A B) :
    Parameterized Representation A C :=
  ⟨fun ρ a ↦ g.map ρ (f.map ρ a)⟩

@[simp]
theorem comp_apply
    (g : Parameterized Representation B C)
    (f : Parameterized Representation A B)
    (ρ : Representation) (a : A) :
    (g.comp f).map ρ a = g.map ρ (f.map ρ a) :=
  rfl

theorem comp_independent
    {g : Parameterized Representation B C}
    {f : Parameterized Representation A B}
    (hg : RepresentationIndependent g)
    (hf : RepresentationIndependent f) :
    RepresentationIndependent (g.comp f) := by
  intro ρ₀ ρ₁
  funext a
  rw [comp_apply, comp_apply, hf ρ₀ ρ₁, hg ρ₀ ρ₁]

end Parameterized

/-- A typed finite map chain sharing one explicit representation parameter. -/
inductive ParameterizedChain
    (Representation : Type u) :
    (A B : Type v) → Nat → Type (max u v + 1)
  | nil (A : Type v) : ParameterizedChain Representation A A 0
  | cons {A B C : Type v} {n : Nat}
      (head : Parameterized Representation A B)
      (tail : ParameterizedChain Representation B C n) :
      ParameterizedChain Representation A C (n + 1)

namespace ParameterizedChain

/-- The composite remains a family indexed by the public representation. -/
def composite :
    {A B : Type v} → {n : Nat} →
    ParameterizedChain Representation A B n →
      Parameterized Representation A B
  | _, _, _, .nil A => ⟨fun _ a ↦ a⟩
  | _, _, _, .cons head tail => tail.composite.comp head

@[simp]
theorem composite_apply
    (head : Parameterized Representation A B)
    (tail : ParameterizedChain Representation B C n)
    (ρ : Representation) (a : A) :
    (ParameterizedChain.cons head tail).composite.map ρ a =
      tail.composite.map ρ (head.map ρ a) :=
  rfl

end ParameterizedChain

end DAF.Comparison
