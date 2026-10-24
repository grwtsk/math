# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainComplexes.FiniteCharacterAndArithmeticInterfaces.Variantebff71f9e9a609ab.WholeUnitaryGaugeTwistAndSquareZero

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5731a1ec8252f784a2baf0ea31a01ddd5a975c82` · SHA-256 `856ccb7be6487d4a84dbca56f5c5f53000e492cc06b51784e7cbae7fa4a99600`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeUnitaryGaugeTwistAndSquareZero - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382
Organized SHA-256: 21a26a83461447a9e2ffdead51d0cf141c566cf63958be52a289ac337bb0d39b
PMD: 510.9.070.010 chain complexes (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: The whole four-field finite globally trivialized unitary-gauge twist, its derived square-zero differential, resulting two-field complex, identity gauge and all three theorem bodies. Both left and right unitary premises remain, although the square-zero proof uses the right one. The primitive-character parameter is retained. No nontrivial flat cocycle or gauge existence on arbitrary terrain is established. All original namespace and control blocks are copied unchanged. Only listed same-source public companion imports are added; original imported providers remain literal and unreplayed.
-/

import DAF.Arithmetic.CharacterProjector
import DAF.Hilbert.DifferentialComplex
import Mathlib.Tactic.NoncommRing

/-!
# Exact finite Dirichlet-character twists

A flat finite character twist is represented in a chosen trivialization by a
unitary gauge.  Conjugating an exact square-zero differential by that gauge
gives the twisted differential.  The square-zero theorem is derived below;
it is not a caller-provided Boolean.  Nontrivial edge-cocycle-to-gauge
existence on arbitrary terrain remains a separate local-system obligation.
-/

noncomputable section

namespace DAF.Arithmetic

open DAF.Hilbert

universe u

/-- A finite, globally trivialized character twist.  A nontrivial flat local
system can instantiate this after supplying its certified unitary
trivialization. -/
structure CharacterTwist
    (Index : Type u) [Fintype Index] [DecidableEq Index]
    (chi : PrimitiveDirichletCharacter) where
  base : FiniteDifferentialComplex Index
  gauge : FiniteOperator Index Index
  gauge_unitary_left : gauge.conjTranspose * gauge = 1
  gauge_unitary_right : gauge * gauge.conjTranspose = 1

namespace CharacterTwist

variable {Index : Type u} [Fintype Index] [DecidableEq Index]
variable {chi : PrimitiveDirichletCharacter}

/-- Gauge-conjugated character differential. -/
def twistedDifferential (twist : CharacterTwist Index chi) :
    FiniteOperator Index Index :=
  twist.gauge.conjTranspose * twist.base.differential * twist.gauge

/-- Flatness in the selected trivialization preserves `d² = 0`. -/
theorem twistedDifferential_sq_zero (twist : CharacterTwist Index chi) :
    twist.twistedDifferential * twist.twistedDifferential = 0 := by
  calc
    twist.twistedDifferential * twist.twistedDifferential =
        twist.gauge.conjTranspose * twist.base.differential *
          (twist.gauge * twist.gauge.conjTranspose) *
          twist.base.differential * twist.gauge := by
            simp only [twistedDifferential]
            noncomm_ring
    _ = twist.gauge.conjTranspose *
          (twist.base.differential * twist.base.differential) *
          twist.gauge := by
            rw [twist.gauge_unitary_right]
            simp [mul_assoc]
    _ = 0 := by
      rw [twist.base.differential_square_zero]
      simp

/-- The twisted differential is itself an exact finite complex. -/
def twistedComplex (twist : CharacterTwist Index chi) :
    FiniteDifferentialComplex Index where
  differential := twist.twistedDifferential
  differential_square_zero := twist.twistedDifferential_sq_zero

/-- The canonical identity-gauge twist exists for every primitive character
and every finite terrain complex. -/
def identity
    (chi : PrimitiveDirichletCharacter)
    (base : FiniteDifferentialComplex Index) : CharacterTwist Index chi where
  base := base
  gauge := 1
  gauge_unitary_left := by simp
  gauge_unitary_right := by simp

@[simp]
theorem identity_twistedDifferential
    (chi : PrimitiveDirichletCharacter)
    (base : FiniteDifferentialComplex Index) :
    (identity chi base).twistedDifferential = base.differential := by
  simp [identity, twistedDifferential]

/-- Public flatness theorem for the exact finite twist. -/
theorem characterTwist_flat (twist : CharacterTwist Index chi) :
    twist.twistedComplex.differential *
      twist.twistedComplex.differential = 0 :=
  twist.twistedDifferential_sq_zero

end CharacterTwist

end DAF.Arithmetic
```
