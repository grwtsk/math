# Complete source: GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant8be0faf660c52411.CharacterOrbitRepresentativeAndCardinal

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca2adce284944ced0500179182a598e19b15d683` · SHA-256 `cd3f106a4fb8e7766a0acd9210cc172b4cf3500402101922310a5fa74f40434f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CharacterOrbitRepresentativeAndCardinal - exact source component
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
import GRWTSK.Algebra.RepresentationTheory.GroupRepresentations.Characters.FiniteCharacterAndArithmeticInterfaces.Variant8be0faf660c52411.PrimitiveCharacterProfileAndConjugation

/-!
# Primitive Dirichlet-character profiles

This module bundles exactly the arithmetic data used by the DAF Gamma
spindle.  Primitivity and parity are proof fields.  In particular, a runtime
tag cannot turn a non-primitive character into a primitive one.
-/

namespace DAF.Arithmetic

namespace PrimitiveDirichletCharacter

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
