# Complete source: GRWTSK.GroupTheory.Words.PrimitiveConjugacy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ab441398d8981f755ec1fa27e16e5aa306d1bed` · SHA-256 `58c228e590d331a65f99b82307c58af010569dd90f33bd961879855f4ecf9843`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported group conjugacy, quotient and list-product theorems: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#694. Parent PR #692 pinned at
4ac69d197da1874cfa5275a78145289c5115f6e2.
-/
import Mathlib.Algebra.Group.Conj
import Mathlib.Algebra.BigOperators.Group.List.Basic
import Mathlib.Algebra.Group.Int.TypeTags
import Mathlib.Tactic.NormNum.Eq

/-!
# Primitive conjugacy and cyclically split finite words

This is GENERIC group theory, independent of a Selberg trace or a surface.
A primitive group-conjugacy element means a nonidentity element that is
not a proper positive power in the actual group.

A list of alphabet symbols evaluates by ordered multiplication in a
supplied group. Splitting a word into u ++ v and v ++ u changes its
evaluation only by conjugation. Every repeated word w ++ w evaluates
to a square, so it is never primitive.

This neither decides conjugacy nor tests primitive group elements.
An actual hyperbolic-surface group presentation and effective decision
procedures remain separate mathematical and computational obligations.
-/

set_option autoImplicit false

namespace GRWTSK.GroupTheory.Words.PrimitiveConjugacy

variable {G Alphabet : Type*} [Group G]

/-- A proper positive power *in G itself*, not a repeated syntactic
word and not primitive membership in a free generating basis. -/
def IsProperPower (g : G) : Prop :=
  ∃ r : G, ∃ n : ℕ, 2 ≤ n ∧ r ^ n = g

/-- Nonidentity and not a proper power in the actual group. In the
surface setting a separate geometric theorem must identify these
classes with primitive oriented closed geodesics. -/
def IsPrimitiveConjugacy (g : G) : Prop :=
  g ≠ 1 ∧ ¬ IsProperPower g

/-- Actual conjugation transports a proper-power witness. -/
theorem isProperPower_of_isConj {a b : G}
    (hab : IsConj a b) (ha : IsProperPower a) : IsProperPower b := by
  obtain ⟨c, hc⟩ := isConj_iff.mp hab
  obtain ⟨r, n, hn, hr⟩ := ha
  refine ⟨c * r * c⁻¹, n, hn, ?_⟩
  calc
    (c * r * c⁻¹) ^ n = c * r ^ n * c⁻¹ := conj_pow
    _ = c * a * c⁻¹ := by rw [hr]
    _ = b := hc

/-- Proper power is a property of an entire conjugacy class. -/
theorem isProperPower_iff_of_isConj {a b : G}
    (hab : IsConj a b) : IsProperPower a ↔ IsProperPower b :=
  ⟨isProperPower_of_isConj hab,
    isProperPower_of_isConj hab.symm⟩

/-- Neither nonidentity nor absence of proper roots may be silently
dropped when transporting primitive status along conjugacy. -/
theorem isPrimitiveConjugacy_of_isConj {a b : G}
    (hab : IsConj a b) (ha : IsPrimitiveConjugacy a) :
    IsPrimitiveConjugacy b := by
  constructor
  · intro hb
    have hconj : IsConj a (1 : G) := by simpa [hb] using hab
    exact ha.1 (isConj_one_left.mp hconj)
  · intro hbpower
    exact ha.2 ((isProperPower_iff_of_isConj hab).mpr hbpower)

/-- Primitive status depends only on Mathlib's genuine group
conjugacy relation. This is not a decidable predicate on a word. -/
theorem isPrimitiveConjugacy_iff_of_isConj {a b : G}
    (hab : IsConj a b) :
    IsPrimitiveConjugacy a ↔ IsPrimitiveConjugacy b :=
  ⟨isPrimitiveConjugacy_of_isConj hab,
    isPrimitiveConjugacy_of_isConj hab.symm⟩

/-- The group identity is never a primitive geodesic source. -/
theorem one_not_primitive :
    ¬ IsPrimitiveConjugacy (1 : G) := by
  intro h
  exact h.1 rfl

/-- Every square is a proper power, including squares in torsion
groups; no implication about geometric geodesics is assumed. -/
theorem square_isProperPower (g : G) : IsProperPower (g ^ 2) :=
  ⟨g, 2, by decide, rfl⟩

/-- A square cannot be accepted as primitive. -/
theorem square_not_primitive (g : G) :
    ¬ IsPrimitiveConjugacy (g ^ 2) := by
  intro h
  exact h.2 (square_isProperPower g)

/-- Ordered evaluation of a word in a supplied group, with NO
unverified free-group or surface-group relation assumed. -/
def evalWord (letter : Alphabet → G) (w : List Alphabet) : G :=
  (w.map letter).prod

@[simp] theorem evalWord_nil (letter : Alphabet → G) :
    evalWord letter [] = 1 := by
  simp [evalWord]

/-- Word concatenation becomes actual multiplication in G. -/
@[simp] theorem evalWord_append (letter : Alphabet → G)
    (u v : List Alphabet) :
    evalWord letter (u ++ v) =
      evalWord letter u * evalWord letter v := by
  simp [evalWord, List.map_append, List.prod_append]

/-- A cyclic split u++v ↔ v++u always yields CONJUGATE group elements,
not necessarily equal elements. The conjugator is the inverse of the
prefix value. This proves only one direction of a conjugacy test. -/
theorem evalWord_cyclicSplit_isConj
    (letter : Alphabet → G) (u v : List Alphabet) :
    IsConj (evalWord letter (u ++ v))
      (evalWord letter (v ++ u)) := by
  apply isConj_iff.mpr
  refine ⟨(evalWord letter u)⁻¹, ?_⟩
  simp [evalWord_append]

/-- Use Mathlib's actual conjugacy quotient for source identities,
rather than a quotient by raw code equality or equal traces. -/
def conjugacyClassOfWord (letter : Alphabet → G)
    (w : List Alphabet) : ConjClasses G :=
  ConjClasses.mk (evalWord letter w)

/-- The conjugacy quotient respects every cyclic split. -/
theorem conjugacyClassOfWord_cyclicSplit
    (letter : Alphabet → G) (u v : List Alphabet) :
    conjugacyClassOfWord letter (u ++ v) =
      conjugacyClassOfWord letter (v ++ u) := by
  exact (ConjClasses.mk_eq_mk_iff_isConj).mpr
    (evalWord_cyclicSplit_isConj letter u v)

/-- Evaluation of a repeated word is literally a group square,
regardless of whether the original word was reduced. -/
theorem evalWord_repeat_eq_square
    (letter : Alphabet → G) (w : List Alphabet) :
    evalWord letter (w ++ w) = (evalWord letter w) ^ 2 := by
  simp [evalWord_append, pow_two]

/-- Proper powers block a purported primitive decode of a doubled
word even when the word is not syntactically reduced. -/
theorem repeated_word_not_primitive
    (letter : Alphabet → G) (w : List Alphabet) :
    ¬ IsPrimitiveConjugacy (evalWord letter (w ++ w)) := by
  rw [evalWord_repeat_eq_square]
  exact square_not_primitive (evalWord letter w)

/-- In a commutative group, distinct inverses are distinct oriented
conjugacy classes. An orientation-reversing quotient is not automatic. -/
theorem inverse_class_ne_of_ne {A : Type*} [CommGroup A]
    (a : A) (h : a ≠ a⁻¹) :
    ConjClasses.mk a ≠ ConjClasses.mk a⁻¹ := by
  intro heq
  apply h
  exact isConj_iff_eq.mp ((ConjClasses.mk_eq_mk_iff_isConj).mp heq)

/-- Even a genuine group element and its inverse need not be conjugate.
Here the multiplicative presentation of the additive group ℤ retains
two distinct classes: +1 and -1. This is a hostile orientation fixture. -/
theorem integer_orientation_classes_distinct :
    ConjClasses.mk (Multiplicative.ofAdd (1 : ℤ)) ≠
      ConjClasses.mk (Multiplicative.ofAdd (-1 : ℤ)) := by
  apply inverse_class_ne_of_ne
  intro h
  have hint : (1 : ℤ) = -1 := congrArg Multiplicative.toAdd h
  norm_num at hint

end GRWTSK.GroupTheory.Words.PrimitiveConjugacy
```
