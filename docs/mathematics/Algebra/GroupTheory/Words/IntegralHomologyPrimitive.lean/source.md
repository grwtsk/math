# Complete source: GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5e736369b17dae2212c292f0ea7189a6904ed3d` · SHA-256 `748dbf08f7e417816ab0892d7659db0c61297d315663ed2dfa8586c2e0432c1d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib homomorphism, integer divisibility and unit lemmas retain attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#704; parent draft PR #700 exact head
2949a153ebb8553284757687ac83d45d64aac01e.
-/
import GRWTSK.GroupTheory.Words.PrimitiveConjugacy
import Mathlib.Algebra.Group.Int.TypeTags
import Mathlib.Algebra.Group.Int.Units
import Mathlib.Algebra.Divisibility.Units

/-!
# Positive primitive-conjugacy certificates from signed integer characters

If a true group homomorphism h : G →* Multiplicative ℤ maps g to the
additive integer +1 or -1, then g is a nonidentity group element that
cannot be a proper power. In fact it suffices for h(g) to be any unit of ℤ.

This is not a full primitive-element criterion. Separating geodesics
can be primitive in the surface group while having zero H₁ class, and
group elements whose homology vectors lack any unit linear functional
require a separate root-exclusion certificate.

The group G is arbitrary. No surface, marking, abelianization, finite
root search, conjugacy algorithm or geodesic source is built here.
-/

set_option autoImplicit false

namespace GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive

open GRWTSK.GroupTheory.Words.PrimitiveConjugacy

variable {G : Type*} [Group G]

/-- A genuine homomorphism into the additive integers, expressed as a
multiplicative group homomorphism. No field here is a free arithmetic
label disconnected from group multiplication. -/
abbrev IntegerCharacter (G : Type*) [Group G] :=
  G →* Multiplicative ℤ

/-- Group powers become integer multiples, using the actual map_pow
and Multiplicative-to-additive conversion from Mathlib. -/
theorem integerCharacter_pow (h : IntegerCharacter G) (r : G) (n : ℕ) :
    (h (r ^ n)).toAdd = (n : ℤ) * (h r).toAdd := by
  simp only [MonoidHom.map_pow, toAdd_pow, Int.nsmul_eq_mul]

/-- Every root exponent divides the actual signed integral image of
the powered element. The witness is the image of the true group root. -/
theorem exponent_dvd_integerValue
    (h : IntegerCharacter G) {g r : G} {n : ℕ}
    (hpow : r ^ n = g) :
    (n : ℤ) ∣ (h g).toAdd := by
  refine ⟨(h r).toAdd, ?_⟩
  calc
    (h g).toAdd = (h (r ^ n)).toAdd := by rw [hpow]
    _ = (n : ℤ) * (h r).toAdd := integerCharacter_pow h r n

/-- Unit image excludes every proper-power representation r^n=g with
n≥2. The proof does not bound or enumerate possible root exponents;
it quantifies over ALL possible roots in the actual group G. -/
theorem not_isProperPower_of_unit_integerValue
    (h : IntegerCharacter G) {g : G}
    (hu : IsUnit (h g).toAdd) :
    ¬ IsProperPower g := by
  rintro ⟨r, n, hn, hr⟩
  have hdvd : (n : ℤ) ∣ (h g).toAdd :=
    exponent_dvd_integerValue h hr
  have hnunit : IsUnit (n : ℤ) := isUnit_of_dvd_unit hdvd hu
  have hnlarge : (2 : ℤ) ≤ (n : ℤ) := by exact_mod_cast hn
  rcases Int.isUnit_iff.mp hnunit with hpos | hneg
  · omega
  · omega

/-- An integer-unit image also excludes the group identity, since a
group homomorphism maps 1 to zero in additive notation. -/
theorem ne_one_of_unit_integerValue
    (h : IntegerCharacter G) {g : G}
    (hu : IsUnit (h g).toAdd) :
    g ≠ 1 := by
  intro hg
  have hu0 : IsUnit (0 : ℤ) := by
    rw [hg, map_one, toAdd_one] at hu
    exact hu
  rcases Int.isUnit_iff.mp hu0 with hpos | hneg
  · norm_num at hpos
  · norm_num at hneg

/-- Positive *sufficient* primitivity theorem. This is real abstract
group algebra and can be consumed by a group source decoder, but it
does not classify group elements with nonunit abelianized image. -/
theorem isPrimitiveConjugacy_of_unit_integerValue
    (h : IntegerCharacter G) {g : G}
    (hu : IsUnit (h g).toAdd) :
    IsPrimitiveConjugacy g :=
  ⟨ne_one_of_unit_integerValue h hu,
    not_isProperPower_of_unit_integerValue h hu⟩

/-- A group character value exactly +1 is a machine-readable
positive certificate of non-proper-power status. -/
theorem isPrimitiveConjugacy_of_value_one
    (h : IntegerCharacter G) {g : G}
    (hv : (h g).toAdd = 1) :
    IsPrimitiveConjugacy g := by
  apply isPrimitiveConjugacy_of_unit_integerValue h
  rw [hv]
  exact isUnit_one

/-- The corresponding signed -1 witness is equally valid. -/
theorem isPrimitiveConjugacy_of_value_neg_one
    (h : IntegerCharacter G) {g : G}
    (hv : (h g).toAdd = -1) :
    IsPrimitiveConjugacy g := by
  apply isPrimitiveConjugacy_of_unit_integerValue h
  rw [hv]
  exact Int.isUnit_iff.mpr (Or.inr rfl)

/-- Because the codomain is abelian, an integer character is constant
on actual group conjugacy classes, not merely syntactically cyclic words. -/
theorem integerValue_eq_of_isConj
    (h : IntegerCharacter G) {a b : G}
    (hab : IsConj a b) :
    (h a).toAdd = (h b).toAdd := by
  have hconj : IsConj (h a) (h b) := h.map_isConj hab
  exact congrArg Multiplicative.toAdd (isConj_iff_eq.mp hconj)

/-- Any actual proper power has NO unit-valued integer character.
This is a necessary obstruction to being powered, not a claim that
all elements with nonunit character values are proper powers. -/
theorem properPower_forces_nonunit_integerValue
    (h : IntegerCharacter G) {g : G}
    (hp : IsProperPower g) :
    ¬ IsUnit (h g).toAdd :=
  fun hu => (not_isProperPower_of_unit_integerValue h hu) hp

/-- Exact nonvacuous positive example: +1 in the additive integers,
represented as a multiplicative group element, is not a proper power. -/
theorem integer_one_isPrimitive :
    IsPrimitiveConjugacy (Multiplicative.ofAdd (1 : ℤ)) := by
  apply isPrimitiveConjugacy_of_value_one
    (MonoidHom.id (Multiplicative ℤ))
  rfl

/-- The opposite oriented integer generator likewise has an integral
unit witness. This fixture does not identify a surface geodesic. -/
theorem integer_neg_one_isPrimitive :
    IsPrimitiveConjugacy (Multiplicative.ofAdd (-1 : ℤ)) := by
  apply isPrimitiveConjugacy_of_value_neg_one
    (MonoidHom.id (Multiplicative ℤ))
  rfl

end GRWTSK.GroupTheory.Words.IntegralHomologyPrimitive
```
