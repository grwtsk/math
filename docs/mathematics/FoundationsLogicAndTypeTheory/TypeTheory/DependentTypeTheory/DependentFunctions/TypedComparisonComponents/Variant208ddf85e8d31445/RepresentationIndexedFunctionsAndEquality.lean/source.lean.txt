/-
RepresentationIndexedFunctionsAndEquality - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 208ddf85e8d31445d17e4dd5beed5cd6d67286608eaa1733265aba3aaf42943a
Organized SHA-256: b1f4a31fa4aeefdf9f5337deaa0ec908ba147be7ad95f883494009d2ea3ca9ea
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The full equality-reference witness, full three-field characterization/uniqueness package, and whole representation-indexed function packages preserve all fields and supplied proofs. Canonical composition requires a freshly supplied composite characterization, its proof and uniqueness; the original component canonical witnesses remain unused arguments. Equality of representation parameters, or the explicit independence hypothesis, is retained. Exact per-component contents are its complete command map. Whole-file documentation below is copied unchanged and can describe other archived/components.
-/

import DAF.Comparison.Core

/-!
# Construction provenance

Provenance is independent of logical status.  “Canonical” means uniquely
characterized, not definitionally equal; a canonical map may still have only
a conjectural isomorphism property.  A representation-dependent map is
canonical only after its representation has been fixed, unless a separate
independence theorem removes that dependence.
-/

namespace DAF.Comparison

universe u v w

namespace Definitional

end Definitional

namespace Canonical

end Canonical

/-- A comparison whose source type itself depends on a representation. -/
structure Represented
    (Representation : Type u)
    (A : Representation → Sort v)
    (B : Sort w) where
  map : (ρ : Representation) → A ρ → B

/-- A representation-indexed family with constant source and target types. -/
structure Parameterized
    (Representation : Type u)
    (A : Sort v)
    (B : Sort w) where
  map : Representation → A → B

/-- Explicit identification of two representation parameters. -/
structure RepresentationEquiv
    {Representation : Type u}
    (ρ₀ ρ₁ : Representation) where
  eq : ρ₀ = ρ₁

/-- Every representation selects an ordinary, still-indexed comparison. -/
def Parameterized.at
    (C : Parameterized Representation A B)
    (ρ : Representation) : Spec A B :=
  ⟨C.map ρ⟩

/-- Independence is an extensional theorem, not erased representation data. -/
def RepresentationIndependent
    (C : Parameterized Representation A B) : Prop :=
  ∀ ρ₀ ρ₁, C.map ρ₀ = C.map ρ₁

theorem Parameterized.map_eq_of_representationEquiv
    (C : Parameterized Representation A B)
    { ρ₀ ρ₁ : Representation }
    (h : RepresentationEquiv ρ₀ ρ₁) :
    C.map ρ₀ = C.map ρ₁ := by
  cases h.eq
  rfl

theorem RepresentationIndependent.map_eq
    {C : Parameterized Representation A B}
    (h : RepresentationIndependent C)
    (ρ₀ ρ₁ : Representation) :
    C.map ρ₀ = C.map ρ₁ :=
  h ρ₀ ρ₁

end DAF.Comparison
