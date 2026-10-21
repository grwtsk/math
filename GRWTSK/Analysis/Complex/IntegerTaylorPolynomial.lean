/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IntegerDyadicTrace

set_option autoImplicit false

/-!
# Exact integer numerators for the original finite exponential polynomial

For a Gaussian integer w and POSITIVE integer D, the argument is w/D.
At stage j, denominator D^j*j! represents j+1 Taylor terms. The recurrence
uses integer addition and multiplication only; no intermediate rounding occurs.
The complex interpretation is used in proofs only. This does not change the
existing evaluator, prove logarithm data, or discharge a concrete block.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.IntegerTaylorPolynomial

open RationalRoundedArithmetic IntegerDyadicTrace FiniteExponentialEnclosure
open scoped BigOperators

abbrev Gaussian := ℤ × ℤ

def addZ (a b : Gaussian) : Gaussian := (a.1 + b.1, a.2 + b.2)
def mulZ (a b : Gaussian) : Gaussian :=
  (a.1 * b.1 - a.2 * b.2, a.1 * b.2 + a.2 * b.1)
def scalePair (k : ℤ) (a : Gaussian) : Gaussian := (k * a.1, k * a.2)

def powerZ (w : Gaussian) : ℕ → Gaussian
  | 0 => (1, 0)
  | j + 1 => mulZ (powerZ w j) w

/-- Stage zero represents ONE term, not an empty polynomial. -/
def numeratorZ (D : ℤ) (w : Gaussian) : ℕ → Gaussian
  | 0 => (1, 0)
  | j + 1 => addZ (scalePair (D * ((j : ℤ) + 1)) (numeratorZ D w j))
      (powerZ w (j + 1))

def denominatorZ (D : ℤ) (j : ℕ) : ℤ := D ^ j * (j.factorial : ℤ)

def argumentQ (D : ℤ) (w : Gaussian) : QComplex :=
  ⟨(w.1 : ℚ) / (D : ℚ), (w.2 : ℚ) / (D : ℚ)⟩

def decodeQ (C : ℤ) (a : Gaussian) : QComplex :=
  ⟨(a.1 : ℚ) / (C : ℚ), (a.2 : ℚ) / (C : ℚ)⟩

noncomputable def embedZ (a : Gaussian) : ℂ := ⟨(a.1 : ℝ), (a.2 : ℝ)⟩

@[simp] theorem embedZ_add (a b : Gaussian) :
    embedZ (addZ a b) = embedZ a + embedZ b := by
  ext <;> simp [embedZ, addZ]

@[simp] theorem embedZ_mul (a b : Gaussian) :
    embedZ (mulZ a b) = embedZ a * embedZ b := by
  ext <;> simp [embedZ, mulZ, Complex.mul_re, Complex.mul_im]

@[simp] theorem embedZ_scale (k : ℤ) (a : Gaussian) :
    embedZ (scalePair k a) = (k : ℂ) * embedZ a := by
  ext <;> simp [embedZ, scalePair, Complex.mul_re, Complex.mul_im]

@[simp] theorem embedZ_power (w : Gaussian) (j : ℕ) :
    embedZ (powerZ w j) = embedZ w ^ j := by
  induction j with
  | zero => simp [powerZ, embedZ]
  | succ j ih => simp [powerZ, ih, pow_succ]

@[simp] theorem embed_argumentQ (D : ℤ) (w : Gaussian) :
    QComplex.embed (argumentQ D w) = embedZ w / (D : ℂ) := by
  ext <;> simp [argumentQ, QComplex.embed, embedZ, div_eq_mul_inv,
    Complex.mul_re, Complex.mul_im]

@[simp] theorem embed_decodeQ (C : ℤ) (a : Gaussian) :
    QComplex.embed (decodeQ C a) = embedZ a / (C : ℂ) := by
  exact embed_argumentQ C a

theorem embed_injective : Function.Injective QComplex.embed := by
  intro a b h
  have hr : a.re = b.re := by
    have hh := congrArg Complex.re h
    change (a.re : ℝ) = (b.re : ℝ) at hh
    exact_mod_cast hh
  have hi : a.im = b.im := by
    have hh := congrArg Complex.im h
    change (a.im : ℝ) = (b.im : ℝ) at hh
    exact_mod_cast hh
  cases a
  cases b
  simp_all

theorem denominator_pos (D : ℤ) (hD : 0 < D) (j : ℕ) :
    0 < denominatorZ D j := by
  unfold denominatorZ
  exact mul_pos (pow_pos hD j) (by exact_mod_cast Nat.factorial_pos j)

@[simp] theorem denominator_succ (D : ℤ) (j : ℕ) :
    denominatorZ D (j + 1) = D * ((j : ℤ) + 1) * denominatorZ D j := by
  simp only [denominatorZ, pow_succ, Nat.factorial_succ, Nat.cast_mul,
    Nat.cast_add, Nat.cast_one]
  ring

/-- No empty-sum or factorial off-by-one convention is hidden here. -/
theorem complex_ratio_eq_polynomial (D : ℤ) (hD : 0 < D)
    (w : Gaussian) (j : ℕ) :
    embedZ (numeratorZ D w j) / (denominatorZ D j : ℂ) =
      expPolynomial (embedZ w / (D : ℂ)) (j + 1) := by
  have hDc : (D : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hD)
  induction j with
  | zero => simp [numeratorZ, denominatorZ, embedZ, expPolynomial]
  | succ j ih =>
      have hf : (j.factorial : ℂ) ≠ 0 := by
        exact_mod_cast Nat.factorial_ne_zero j
      have hj : ((j : ℂ) + 1) ≠ 0 := by
        exact_mod_cast Nat.succ_ne_zero j
      have hnext : expPolynomial (embedZ w / (D : ℂ)) (j + 1 + 1) =
          expPolynomial (embedZ w / (D : ℂ)) (j + 1) +
            (embedZ w / (D : ℂ)) ^ (j + 1) / ((j + 1).factorial : ℂ) := by
        simp only [expPolynomial, Finset.sum_range_succ]
      rw [hnext, ← ih]
      simp only [numeratorZ, embedZ_add, embedZ_scale, embedZ_power,
        denominatorZ, Nat.factorial_succ, Int.cast_mul, Int.cast_add,
        Int.cast_one, Int.cast_pow, Int.cast_natCast, Nat.cast_mul,
        Nat.cast_add, Nat.cast_one, div_pow, pow_succ]
      field_simp [hDc, hf, hj] <;> ring

/-- Exact equality with the SAME rational polynomial used by the power seed. -/
theorem polynomial_eq_decode (D : ℤ) (hD : 0 < D) (w : Gaussian) (j : ℕ) :
    QComplex.polynomial (argumentQ D w) (j + 1) =
      decodeQ (denominatorZ D j) (numeratorZ D w j) := by
  apply embed_injective
  rw [QComplex.embed_polynomial, embed_argumentQ, embed_decodeQ]
  exact (complex_ratio_eq_polynomial D hD w j).symm

/-- Numerator signs are retained; normalization by a gcd is unnecessary. -/
theorem rect_decode (C : ℤ) (hC : 0 < C) (a : Gaussian) :
    QComplex.rect (decodeQ C a) = ((|a.1| + |a.2| : ℤ) : ℚ) / (C : ℚ) := by
  have hc : (0 : ℚ) < C := by exact_mod_cast hC
  simp [QComplex.rect, decodeQ, abs_div, abs_of_pos hc, add_div]

/-- Cross multiplication recovers the ORIGINAL rational floor windows. -/
theorem floor_window_scaled (C G A u : ℤ) (hC : 0 < C)
    (h : FloorWindow C (G * A) u) :
    (u : ℚ) ≤ (G : ℚ) * ((A : ℚ) / (C : ℚ)) ∧
      (G : ℚ) * ((A : ℚ) / (C : ℚ)) < (u : ℚ) + 1 := by
  have hc : (0 : ℚ) < C := by exact_mod_cast hC
  have hlo : (C : ℚ) * (u : ℚ) ≤ (G : ℚ) * (A : ℚ) := by exact_mod_cast h.1
  have hhi : (G : ℚ) * (A : ℚ) < (C : ℚ) * ((u : ℚ) + 1) := by exact_mod_cast h.2
  constructor
  · rw [← mul_div_assoc]
    exact (le_div_iff₀ hc).mpr (by nlinarith)
  · rw [← mul_div_assoc]
    exact (div_lt_iff₀ hc).mpr (by nlinarith)

/-- The TWO-component initial rounding allowance becomes the integer +2C.
The strict lower side is essential when the scaled error is integral. -/
theorem error_window_scaled (C G E e : ℤ) (hC : 0 < C)
    (h : CeilingWindow C (G * E + 2 * C) e) :
    (e : ℚ) - 1 < (G : ℚ) * ((E : ℚ) / (C : ℚ)) + 2 ∧
      (G : ℚ) * ((E : ℚ) / (C : ℚ)) + 2 ≤ (e : ℚ) := by
  have hc : (0 : ℚ) < C := by exact_mod_cast hC
  have hlo : (C : ℚ) * ((e : ℚ) - 1) < (G : ℚ) * (E : ℚ) + 2 * C := by exact_mod_cast h.1
  have hhi : (G : ℚ) * (E : ℚ) + 2 * C ≤ (C : ℚ) * (e : ℚ) := by exact_mod_cast h.2
  have heq : (G : ℚ) * ((E : ℚ) / (C : ℚ)) + 2 =
      ((G : ℚ) * E + 2 * C) / C := by
    field_simp [ne_of_gt hc] <;> ring
  rw [heq]
  exact ⟨(lt_div_iff₀ hc).mpr (by nlinarith),
    (div_le_iff₀ hc).mpr (by nlinarith)⟩

end GRWTSK.Analysis.Complex.IntegerTaylorPolynomial
