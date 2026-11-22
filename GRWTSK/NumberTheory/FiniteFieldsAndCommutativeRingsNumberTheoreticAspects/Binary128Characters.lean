/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.FiniteFieldsAndCommutativeRingsNumberTheoreticAspects.Binary128WordArithmetic
import Mathlib.Algebra.Group.AddChar
import Mathlib.FieldTheory.Finite.Trace
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum

/-!
# Additive harmonic characters of the fixed 128-bit binary field

The trace is the actual field trace from `AdjoinRoot modulus` to `ZMod 2`.
Its sign character has real values `±1`, and its complex embedding has unit
modulus. Orthogonality follows from the nondegenerate trace pairing and finite
character cancellation; no enumeration of `2^128` field elements is performed.

This is an exact algebraic feature map. It does not put an order on the binary
field or define differentiation through field arithmetic. Runtime computation
of trace and floating-point tensor storage remain separate refinement contracts.
-/

noncomputable section
open scoped BigOperators

namespace GRWTSK.FiniteFields.Binary128

abbrev Field128 := AdjoinRoot modulus

instance modulusIrreducible : Fact (Irreducible modulus) := ⟨irreducible_modulus⟩

instance fieldModuleFinite : Module.Finite (ZMod 2) Field128 :=
  Module.Finite.of_basis (AdjoinRoot.powerBasis irreducible_modulus.ne_zero).basis

instance fieldCharTwo : CharP Field128 2 :=
  charP_of_injective_algebraMap (algebraMap (ZMod 2) Field128).injective 2

noncomputable instance fieldFintype : Fintype Field128 := by
  letI : Finite Field128 := Module.finite_of_finite (ZMod 2)
  exact Fintype.ofFinite Field128

/-- The trace coefficient lies in the prime field, not in the ordered reals. -/
def fieldTrace : Field128 →ₗ[ZMod 2] ZMod 2 := Algebra.trace (ZMod 2) Field128

theorem field_finrank : Module.finrank (ZMod 2) Field128 = 128 := by
  change Module.finrank (ZMod 2) (Polynomial (ZMod 2) ⧸ Ideal.span {modulus}) = 128
  rw [finrank_quotient_span_eq_natDegree, natDegree_modulus]

/-- A bounded 128-term specification of trace by Frobenius powers. -/
theorem fieldTrace_frobenius (x : Field128) :
    algebraMap (ZMod 2) Field128 (fieldTrace x) =
      ∑ i ∈ Finset.range 128, x ^ (2 ^ i) := by
  simpa only [fieldTrace, field_finrank, Nat.card_eq_fintype_card, ZMod.card] using
    FiniteField.algebraMap_trace_eq_sum_pow (ZMod 2) Field128 x

/-- The faithful sign character of the two-element prime field. -/
def binarySign (t : ZMod 2) : ℝ := if t = 0 then 1 else -1

@[simp] theorem binarySign_zero : binarySign 0 = 1 := by simp [binarySign]

theorem binarySign_add (s t : ZMod 2) :
    binarySign (s + t) = binarySign s * binarySign t := by
  fin_cases s <;> fin_cases t
  · change (1 : ℝ) = 1 * 1
    norm_num
  · change (-1 : ℝ) = 1 * (-1)
    norm_num
  · change (-1 : ℝ) = (-1) * 1
    norm_num
  · change (1 : ℝ) = (-1) * (-1)
    norm_num

theorem binarySign_eq_one_iff (t : ZMod 2) : binarySign t = 1 ↔ t = 0 := by
  by_cases h : t = 0 <;> norm_num [binarySign, h]

theorem binarySign_pow (t : ZMod 2) : binarySign t = (-1 : ℝ) ^ t.val := by
  fin_cases t
  · change (1 : ℝ) = 1
    rfl
  · change (-1 : ℝ) = (-1) ^ 1
    norm_num

/-- `χ_a(x) = (-1)^(Tr(a*x))`, as a genuine additive character. -/
def character (a : Field128) : AddChar Field128 ℝ where
  toFun x := binarySign (fieldTrace (a * x))
  map_zero_eq_one' := by simp
  map_add_eq_mul' x y := by rw [mul_add, map_add, binarySign_add]

theorem character_eq_pow (a x : Field128) :
    character a x = (-1 : ℝ) ^ (fieldTrace (a * x)).val :=
  binarySign_pow _

@[simp] theorem character_apply_zero (a : Field128) : character a 0 = 1 :=
  AddChar.map_zero_eq_one _

@[simp] theorem character_zero_apply (x : Field128) : character 0 x = 1 := by
  simp [character]

theorem character_add (a x y : Field128) :
    character a (x + y) = character a x * character a y :=
  AddChar.map_add_eq_mul _ _ _

theorem character_add_parameter (a b x : Field128) :
    character (a + b) x = character a x * character b x := by
  change binarySign (fieldTrace ((a + b) * x)) = _
  rw [add_mul, map_add, binarySign_add]
  rfl

theorem character_values (a x : Field128) : character a x = 1 ∨ character a x = -1 := by
  change binarySign _ = 1 ∨ binarySign _ = -1
  unfold binarySign
  split <;> simp

theorem character_abs (a x : Field128) : |character a x| = 1 := by
  rcases character_values a x with h | h <;> simp [h]

theorem character_complex_norm (a x : Field128) : ‖(character a x : ℂ)‖ = 1 := by
  rcases character_values a x with h | h <;> simp [h]

theorem character_sq (a x : Field128) : character a x ^ 2 = 1 := by
  rcases character_values a x with h | h <;> norm_num [h]

/-- Nondegeneracy is applied to this exact quotient field and its actual trace. -/
theorem exists_trace_pairing_ne_zero {a : Field128} (ha : a ≠ 0) :
    ∃ x : Field128, fieldTrace (a * x) ≠ 0 := by
  by_contra! h
  apply ha
  apply (traceForm_nondegenerate (ZMod 2) Field128).1 a
  intro x
  exact h x

theorem character_ne_zero {a : Field128} (ha : a ≠ 0) : character a ≠ 0 := by
  obtain ⟨x, hx⟩ := exists_trace_pairing_ne_zero ha
  intro h
  have hvalue : character a x = 1 := by
    simpa using congrArg (fun ψ : AddChar Field128 ℝ => ψ x) h
  exact hx ((binarySign_eq_one_iff _).1 hvalue)

/-- Exact cancellation is proved symbolically; this is not an enumeration plan. -/
theorem character_sum (a : Field128) :
    ∑ x : Field128, character a x = if a = 0 then (2 : ℝ) ^ 128 else 0 := by
  classical
  by_cases h : a = 0
  · subst a
    simp only [character_zero_apply, Finset.sum_const, Finset.card_univ,
      nsmul_eq_mul, mul_one]
    rw [Fintype.card_eq_nat_card, natCard_quotient]
    norm_num
  · rw [ite_eq_right h, AddChar.sum_eq_zero_iff_ne_zero]
    exact character_ne_zero h

theorem character_orthogonality (a b : Field128) :
    ∑ x : Field128, character a x * character b x =
      if a = b then (2 : ℝ) ^ 128 else 0 := by
  simp_rw [← character_add_parameter]
  rw [character_sum]
  have h : a + b = 0 ↔ a = b := by
    rw [add_eq_zero_iff_eq_neg, CharTwo.neg_eq]
  simp only [h]

/-- Features on the existing exact word decoder; words do not become real scalars. -/
def wordCharacter (a x : Word) : ℝ := character (decodeWord a) (decodeWord x)

theorem wordCharacter_xor (a x y : Word) :
    wordCharacter a (x ^^^ y) = wordCharacter a x * wordCharacter a y := by
  exact (congrArg (character (decodeWord a)) (decodeWord_xor x y)).trans
    (character_add _ _ _)

theorem wordCharacter_abs (a x : Word) : |wordCharacter a x| = 1 :=
  character_abs _ _

end GRWTSK.FiniteFields.Binary128
