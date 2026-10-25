# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.DirichletCharacterProfile.Variant8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e43d2b19cc5274fcfcbb9696ec0e792cd950c93` · SHA-256 `8be0faf660c524119bcab24098f36b0883e0fb55a970aceba4f374b1c9fe5267`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

/-- A conjugation-closed arithmetic base is represented by its orbit rather
than by an isolated non-real character. -/
structure CharacterOrbit where
  representative : PrimitiveDirichletCharacter

namespace CharacterOrbit

noncomputable def conjugateRepresentative (orbit : CharacterOrbit) :
    PrimitiveDirichletCharacter :=
  orbit.representative.conjugate

/-- Real characters give singleton orbits; non-real characters give pairs. -/
noncomputable def cardinal (orbit : CharacterOrbit) : Nat := by
  classical
  exact
  if orbit.conjugateRepresentative = orbit.representative then 1 else 2

theorem cardinal_eq_one_or_two (orbit : CharacterOrbit) :
    orbit.cardinal = 1 ∨ orbit.cardinal = 2 := by
  classical
  simp only [cardinal]
  split <;> simp_all

end CharacterOrbit

end PrimitiveDirichletCharacter

abbrev CharacterOrbit := PrimitiveDirichletCharacter.CharacterOrbit

end DAF.Arithmetic
```
