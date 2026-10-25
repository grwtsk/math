# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacterTwist.Variantebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03c64f4082ae916c32dd3ea7c345a2d2e0afdebf` · SHA-256 `ebff71f9e9a609ab43cc034273757f8c3c63fdfdf2c868fa58426f96ad498382`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
