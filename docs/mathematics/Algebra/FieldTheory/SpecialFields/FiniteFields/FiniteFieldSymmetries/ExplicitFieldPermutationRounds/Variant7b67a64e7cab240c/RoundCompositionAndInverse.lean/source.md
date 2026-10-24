# Complete source: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c.RoundCompositionAndInverse

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c71724d39bde6f531b940af6564fde126987c2e` · SHA-256 `5a8bcef6e9541705745edf5b97dfe033c56e23ce8762993971200da7c60c46dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Complete field round composition and exact inverse
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42
Organized SHA-256: 63289ea99e05fa97ce00b933c1039216a39ca3f376010781ce1572c4b9f7e425
PMD: 510.1.080.030.010.020 finite field symmetries (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Whole four-field FieldRound keeps a,b, arbitrary substitution equivalence and additive linear equivalence; exact composition order/inverse formula/both inverse laws and ofPower prerequisites remain. These are pure functions/equivalences despite the name run, not IO or an effectful solver. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.CharP.Two
import Mathlib.Algebra.Group.Units.Equiv
import Mathlib.Algebra.GroupWithZero.Units.Fintype
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.GroupTheory.OrderOfElement

import GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c.PositiveCoprimePowerPermutation

/-!
# Finite-field permutation rounds and the finite ``Digamma'' obstruction

This module separates two unrelated facts about finite-field formulae.

First, the product occurring in the proposed finite ``Digamma'' expression has
a pole at every selected root.  In characteristic two the factor belonging to
`a` evaluates to `a + a = 0`.  In particular, selecting all nonzero field
elements makes the expression undefined at every nonzero input.  The
definition remains an `Option`; division by a zero denominator is not silently
totalized.

Second, exponentiation by `d` *is* a genuine permutation when `d` is positive
and coprime to the order of the multiplicative group.  The proof below uses
Mathlib's power equivalence on `Fˣ`, whose order is `|F| - 1`, and treats zero
separately.  No finite brute-force enumeration is involved.

A `FieldRound` composes explicit equivalences, so it is bijective by
construction.  This is only a permutation guarantee: it says nothing about
SAC, correlations, differential concentration, or other avalanche properties.
Likewise, transporting a field permutation to `Bits n` requires a chosen
representation equivalence.  SAC and output-bit correlations depend on that
choice; field-level bijectivity alone cannot determine them.
-/

namespace GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c

open BitMatrix.Reduction.SAT
open scoped BigOperators

universe u

/-! ## Structurally bijective finite-field rounds -/

/-- A substitution--linear round over a finite field.  Both nonlinear and
linear stages are explicitly bundled equivalences. -/
structure FieldRound (F : Type u) [Field F] [Fintype F] where
  a : F
  b : F
  substitution : F ≃ F
  linear : F ≃+ F

namespace FieldRound

variable {F : Type u} [Field F] [Fintype F]

/-- The round equivalence `x ↦ L(S(x + a)) + b`. -/
def toEquiv (R : FieldRound F) : F ≃ F :=
  (((Equiv.addRight R.a).trans R.substitution).trans R.linear.toEquiv).trans
    (Equiv.addRight R.b)

/-- Execute a finite-field round. -/
def run (R : FieldRound F) (x : F) : F :=
  R.toEquiv x

@[simp]
theorem run_apply (R : FieldRound F) (x : F) :
    R.run x = R.linear (R.substitution (x + R.a)) + R.b :=
  rfl

/-- A round is bijective because it is a composition of equivalences.  No
avalanche property is inferred. -/
theorem run_bijective (R : FieldRound F) :
    Function.Bijective R.run :=
  R.toEquiv.bijective

/-- The inverse function of the bundled round equivalence. -/
def inverse (R : FieldRound F) : F → F :=
  R.toEquiv.symm

/-- The exact inverse formula
`S⁻¹(L⁻¹(y - b)) - a`. -/
@[simp]
theorem inverse_apply (R : FieldRound F) (y : F) :
    R.inverse y =
      R.substitution.symm (R.linear.symm (y - R.b)) - R.a := by
  rw [inverse, toEquiv,
    Equiv.symm_trans_apply, Equiv.symm_trans_apply, Equiv.symm_trans_apply]
  simp only [Equiv.addRight_symm_apply]
  simp [sub_eq_add_neg]

@[simp]
theorem inverse_run (R : FieldRound F) (x : F) :
    R.inverse (R.run x) = x :=
  R.toEquiv.symm_apply_apply x

@[simp]
theorem run_inverse (R : FieldRound F) (x : F) :
    R.run (R.inverse x) = x :=
  R.toEquiv.apply_symm_apply x

/-- Construct a round whose substitution is a valid finite-field power
permutation. -/
noncomputable def ofPower
    (a b : F)
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1))
    (L : F ≃+ F) :
    FieldRound F where
  a := a
  b := b
  substitution := powerPermutation d hd_pos hd
  linear := L

/-- A power-substitution round is bijective.  This theorem deliberately has no
diffusion or avalanche conclusion. -/
theorem ofPower_bijective
    (a b : F)
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1))
    (L : F ≃+ F) :
    Function.Bijective (FieldRound.ofPower a b d hd_pos hd L).run :=
  FieldRound.run_bijective _

end FieldRound

end GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c
```
