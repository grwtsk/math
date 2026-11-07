/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
External mathematical method: rational equation compression and fresh
existential witness blocks in Elliot Glazer et al.,
"Z is Diophantine in Q", Version 10 (2026-11-07).
Source: elliotglazer/diophantine-z-q@036cebe4f1a4aa7ca89820a9b48f3629b4c364d6,
lean/ZInQ/EquationCompression.lean and manuscripts/quartic_v10.tex.
This is an original one-step conditional adapter, not a copy of those sources.
SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Rational Diophantine compilation of one integer witness

A rational polynomial F in an arbitrary parameter family and one distinguished
witness variable can require that witness to be integral by adjoining a fresh,
independently witnessed polynomial equation D for rational integrality.

The mathematical mechanism is exact: two rational polynomial equations are
equivalent to their sum of squares being zero. Renaming variables retains the
original parameters, distinguished witness and private guard witnesses.

The existence of D defining the ordinary integers in the rationals is NOT
established here. It is an explicit premise, as required by the still-incomplete
formalization of the source manuscript's main theorem. No RH, GRH, global
number-theoretic source return or computational efficiency follows.

This file belongs to Diophantine geometry. The GRWTSK finite quadratic
certificate framework also uses sums of squares, but its real quadratic-form
nonnegativity and the existential rational zero-set statement here are
different consumers, and no equivalence between them is asserted.

The external source is on Lean 4.35.0; the GRWTSK root remains on Lean
4.34.1. This isolated source does not import the external package, change
dependency pins, or assert compilation against either toolchain.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.DiophantineGeometry.IntegerWitnessLift

variable {ι κ : Type*}

/-- The guard's first coordinate is the distinguished integer-candidate
variable. Each other guard coordinate is private to that integer test. -/
def guardEmbedding : Unit ⊕ κ → (ι ⊕ Unit) ⊕ κ
  | .inl _ => .inl (.inr ())
  | .inr k => .inr k

/-- Turn a source equation and an integer guard into one rational polynomial.
The source parameters are retained unchanged; the guard witnesses are fresh. -/
def compiledWitness (F : MvPolynomial (ι ⊕ Unit) ℚ)
    (D : MvPolynomial (Unit ⊕ κ) ℚ) :
    MvPolynomial ((ι ⊕ Unit) ⊕ κ) ℚ :=
  (MvPolynomial.rename (Sum.inl : (ι ⊕ Unit) → (ι ⊕ Unit) ⊕ κ) F) ^ 2 +
    (MvPolynomial.rename (guardEmbedding (ι := ι) (κ := κ)) D) ^ 2

/-- Assign source parameters x, the distinguished witness y, and private
integrality-guard witnesses w to the compiled variable block. -/
def fullValue (x : ι → ℚ) (y : ℚ) (w : κ → ℚ) :
    (ι ⊕ Unit) ⊕ κ → ℚ :=
  Sum.elim (Sum.elim x (fun _ : Unit => y)) w

/-- The compiled polynomial evaluates to the two exact residual squares;
no denominator is divided out and no witness block is identified with another. -/
theorem eval_compiledWitness (F : MvPolynomial (ι ⊕ Unit) ℚ)
    (D : MvPolynomial (Unit ⊕ κ) ℚ)
    (x : ι → ℚ) (y : ℚ) (w : κ → ℚ) :
    MvPolynomial.eval (fullValue x y w) (compiledWitness F D) =
      (MvPolynomial.eval (Sum.elim x (fun _ : Unit => y)) F) ^ 2 +
        (MvPolynomial.eval (Sum.elim (fun _ : Unit => y) w) D) ^ 2 := by
  have hsource :
      (fullValue x y w) ∘
          (Sum.inl : (ι ⊕ Unit) → (ι ⊕ Unit) ⊕ κ) =
        Sum.elim x (fun _ : Unit => y) := by
    funext t
    cases t with
    | inl i => rfl
    | inr u => cases u; rfl
  have hguard :
      (fullValue x y w) ∘ (guardEmbedding (ι := ι) (κ := κ)) =
        Sum.elim (fun _ : Unit => y) w := by
    funext t
    cases t with
    | inl u => cases u; rfl
    | inr k => rfl
  simp only [compiledWitness, map_add, map_pow, MvPolynomial.eval_rename,
    hsource, hguard]

/-- Both original equations vanish exactly when the single compiled equation
vanishes. This requires the order on ℚ; it would be false over a general field
admitting nonzero sums of two squares equal to zero. -/
theorem eval_compiledWitness_eq_zero_iff
    (F : MvPolynomial (ι ⊕ Unit) ℚ)
    (D : MvPolynomial (Unit ⊕ κ) ℚ)
    (x : ι → ℚ) (y : ℚ) (w : κ → ℚ) :
    MvPolynomial.eval (fullValue x y w) (compiledWitness F D) = 0 ↔
      MvPolynomial.eval (Sum.elim x (fun _ : Unit => y)) F = 0 ∧
        MvPolynomial.eval (Sum.elim (fun _ : Unit => y) w) D = 0 := by
  rw [eval_compiledWitness]
  exact sq_add_sq_eq_zero

/-- An explicitly supplied rational Diophantine presentation of the ordinary
integers. A polynomial name, a finite coefficient table, or successful finite
tests alone do not provide this universally quantified property. -/
def RepresentsIntegers (D : MvPolynomial (Unit ⊕ κ) ℚ) : Prop :=
  ∀ q : ℚ,
    (∃ w : κ → ℚ,
      MvPolynomial.eval (Sum.elim (fun _ : Unit => q) w) D = 0) ↔
      ∃ z : ℤ, (z : ℚ) = q

/-- A source polynomial with one existential *integer* witness has exactly the
same parameter fiber as the compiled polynomial with rational witnesses,
PROVIDED a genuine integer-presenting polynomial D has been supplied.

This is a conditional implication, not an assertion that such a D exists.
In particular, it does not close Hilbert's tenth problem over ℚ. -/
theorem exists_rational_compiled_iff_integer_witness
    (F : MvPolynomial (ι ⊕ Unit) ℚ)
    (D : MvPolynomial (Unit ⊕ κ) ℚ)
    (hD : RepresentsIntegers D) (x : ι → ℚ) :
    (∃ (y : ℚ) (w : κ → ℚ),
      MvPolynomial.eval (fullValue x y w) (compiledWitness F D) = 0) ↔
      ∃ z : ℤ,
        MvPolynomial.eval (Sum.elim x (fun _ : Unit => (z : ℚ))) F = 0 := by
  constructor
  · rintro ⟨y, w, h⟩
    obtain ⟨hF, hguard⟩ :=
      (eval_compiledWitness_eq_zero_iff F D x y w).mp h
    obtain ⟨z, hz⟩ := (hD y).mp ⟨w, hguard⟩
    refine ⟨z, ?_⟩
    simpa only [hz] using hF
  · rintro ⟨z, hF⟩
    obtain ⟨w, hguard⟩ := (hD (z : ℚ)).mpr ⟨z, rfl⟩
    refine ⟨(z : ℚ), w, ?_⟩
    exact (eval_compiledWitness_eq_zero_iff F D x (z : ℚ) w).mpr
      ⟨hF, hguard⟩

/-- The nonzero-denominator guard is essential when eliminating a rational
quotient variable. This exact equivalence is separate from the integrality
guard in the preceding theorem. -/
theorem guarded_quotient_elimination (a b : ℚ) (ha : a ≠ 0)
    (R : ℚ → Prop) :
    (∃ y : ℚ, a * y = b ∧ R y) ↔ R (b / a) := by
  constructor
  · rintro ⟨y, hy, hR⟩
    have hval : y = b / a := by
      apply (eq_div_iff ha).2
      simpa only [mul_comm] using hy
    simpa only [hval] using hR
  · intro hR
    have hval : (b / a) * a = b := (eq_div_iff ha).1 rfl
    exact ⟨b / a, by simpa only [mul_comm] using hval, hR⟩

/-- Hostile boundary: without a nonzero-denominator hypothesis the original
equation can leave y free while division selects only one value. -/
theorem zero_denominator_counterexample :
    (∃ y : ℚ, (0 : ℚ) * y = 0 ∧ y = 1) ∧
      ¬ ((0 : ℚ) = 1) := by
  constructor
  · exact ⟨1, by norm_num, rfl⟩
  · norm_num

end GRWTSK.NumberTheory.ArithmeticGeometry.DiophantineGeometry.IntegerWitnessLift
