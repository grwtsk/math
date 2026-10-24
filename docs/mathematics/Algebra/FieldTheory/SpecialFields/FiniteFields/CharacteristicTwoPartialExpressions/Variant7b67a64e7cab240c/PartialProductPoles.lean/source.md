# Complete source: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.CharacteristicTwoPartialExpressions.Variant7b67a64e7cab240c.PartialProductPoles

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b94905b1cf8f20d3208a366acb6739f4bc0ece43` · SHA-256 `2a7480b5bfa07873e9e702af7008e766ce0579b83e60f0f4c3dd1152c645f348`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Characteristic-two partial product expression and poles
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42
Organized SHA-256: 63289ea99e05fa97ce00b933c1039216a39ca3f376010781ce1572c4b9f7e425
PMD: 510.1.080.030.010 finite fields (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Partial expression stays Option-valued and explicitly tests zero denominator; [Field F] and [CharP F2] apply before [Fintype F] is added only for allNonzeroRoots. Every selected root is a pole; allNonzero-none requires x≠0. No totalized division or defined value at poles is invented. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.CharP.Two
import Mathlib.Algebra.Group.Units.Equiv
import Mathlib.Algebra.GroupWithZero.Units.Fintype
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.GroupTheory.OrderOfElement

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

/-! ## A partial finite-field expression -/

section Digamma

variable {F : Type u} [Field F] [CharP F 2]

/-- The denominator obtained by multiplying the linear factors selected by
`roots`. -/
def digammaDenominator (roots : Finset F) (x : F) : F :=
  ∏ a ∈ roots, (x + a)

/-- The proposed finite expression, kept partial at its poles. -/
noncomputable def finiteDigamma? (roots : Finset F) (x : F) : Option F := by
  classical
  exact if h : digammaDenominator roots x = 0 then
    none
  else
    some (x / digammaDenominator roots x)

/-- Every selected root is a pole.  Characteristic two is used precisely in
the equation `a + a = 0`. -/
theorem digammaDenominator_eq_zero_of_mem
    (roots : Finset F) {a : F} (ha : a ∈ roots) :
    digammaDenominator roots a = 0 := by
  apply Finset.prod_eq_zero ha
  exact CharTwo.add_self_eq_zero a

/-- The partial expression returns `none` at every selected root. -/
theorem finiteDigamma_none_of_mem
    (roots : Finset F) {a : F} (ha : a ∈ roots) :
    finiteDigamma? roots a = none := by
  rw [finiteDigamma?]
  split
  · rfl
  · rename_i h
    exact (h (digammaDenominator_eq_zero_of_mem roots ha)).elim

variable [Fintype F]

/-- All nonzero field elements, viewed as the proposed root set. -/
noncomputable def allNonzeroRoots : Finset F := by
  classical
  exact Finset.univ.erase 0

/-- Multiplying over all nonzero field elements makes the expression undefined
at every nonzero input. -/
theorem finiteDigamma_allNonzero_none {x : F} (hx : x ≠ 0) :
    finiteDigamma? (allNonzeroRoots (F := F)) x = none := by
  apply finiteDigamma_none_of_mem
  classical
  simp [allNonzeroRoots, hx]

end Digamma

end GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c
```
