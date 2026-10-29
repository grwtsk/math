/-
PrimitiveCharacterProfileAndConjugation - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267
Organized SHA-256: 13e3e35d415e9dd2fc61a39842b93bc77fc9e45540613f711524fe867074e1a3
PMD: 510.1.090.010.030 characters (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The whole six-field positive-conductor primitive Dirichlet-character profile, exact parity/conjugation and involution proofs, plus the representative-only CharacterOrbit and its equality-selected one-or-two cardinal function. No quotient, exhaustive orbit construction or L-function theorem is added. Both proof fields in conjugate remain exact. All original namespace and control blocks are copied unchanged. Only listed same-source public companion imports are added; original imported providers remain literal and unreplayed.
-/

import Mathlib.NumberTheory.DirichletCharacter.Bounds
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma

/-!
# Primitive Dirichlet-character profiles

This module bundles exactly the arithmetic data used by the DAF Gamma
spindle.  Primitivity and parity are proof fields.  In particular, a runtime
tag cannot turn a non-primitive character into a primitive one.
-/

namespace DAF.Arithmetic

/-- A primitive complex Dirichlet character of positive conductor together
with its certified parity. -/
@[ext]
structure PrimitiveDirichletCharacter where
  conductor : Nat
  conductor_pos : 0 < conductor
  character : DirichletCharacter ℂ conductor
  primitive : character.IsPrimitive
  parity : Fin 2
  parityLaw : character (-1) = (-1 : ℂ) ^ parity.val

namespace PrimitiveDirichletCharacter

/-- The parity exponent, viewed as a natural number known to be zero or one. -/
def parityExponent (chi : PrimitiveDirichletCharacter) : Nat := chi.parity.val

theorem parityExponent_lt_two (chi : PrimitiveDirichletCharacter) :
    chi.parityExponent < 2 :=
  chi.parity.isLt

/-- Complex conjugation on unitary characters is pointwise inversion. -/
noncomputable def conjugate
    (chi : PrimitiveDirichletCharacter) : PrimitiveDirichletCharacter where
  conductor := chi.conductor
  conductor_pos := chi.conductor_pos
  character := chi.character⁻¹
  primitive := by
    rw [DirichletCharacter.IsPrimitive, DirichletCharacter.conductor_inv]
    exact chi.primitive
  parity := chi.parity
  parityLaw := by
    have hp : chi.parity.val = 0 ∨ chi.parity.val = 1 := by omega
    rcases hp with h | h
    · rw [MulChar.inv_apply_eq_inv', chi.parityLaw]
      simp [h]
    · rw [MulChar.inv_apply_eq_inv', chi.parityLaw]
      simp [h]

@[simp]
theorem conjugate_conductor (chi : PrimitiveDirichletCharacter) :
    chi.conjugate.conductor = chi.conductor :=
  rfl

@[simp]
theorem conjugate_parity (chi : PrimitiveDirichletCharacter) :
    chi.conjugate.parity = chi.parity :=
  rfl

@[simp]
theorem conjugate_character (chi : PrimitiveDirichletCharacter) :
    chi.conjugate.character = chi.character⁻¹ :=
  rfl

@[simp]
theorem conjugate_conjugate (chi : PrimitiveDirichletCharacter) :
    chi.conjugate.conjugate = chi := by
  apply PrimitiveDirichletCharacter.ext
  · rfl
  · exact heq_of_eq (by simp [conjugate])
  · rfl

namespace CharacterOrbit

end CharacterOrbit

end PrimitiveDirichletCharacter

end DAF.Arithmetic
