/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IntegerTaylorPolynomial
import GRWTSK.Analysis.Complex.RationalPowerEvaluation

set_option autoImplicit false

/-!
# Canonical integer normalization of an arbitrary rational Taylor seed

Numerators and positive denominators are derived from the ORIGINAL rational
argument, radius and displacement; they are not certificate-supplied data.
The polynomial, complete error and rounding predicates remain unchanged.
A stage j represents j+1 terms. No intermediate rounding or source acceptance
is inferred from this normalization. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.RationalTaylorSeedNormalization

open RationalRoundedArithmetic IntegerDyadicTrace IntegerTaylorPolynomial

/-- A common positive denominator; no gcd normalization is required. -/
def argDen (a : QComplex) : ℤ := (a.re.den : ℤ) * (a.im.den : ℤ)
def argNum (a : QComplex) : Gaussian :=
  (a.re.num * (a.im.den : ℤ), a.im.num * (a.re.den : ℤ))
def seedNum (a : QComplex) (j : ℕ) : Gaussian := numeratorZ (argDen a) (argNum a) j
def seedDen (a : QComplex) (j : ℕ) : ℤ := denominatorZ (argDen a) j

def tailNum (R : ℚ) (j : ℕ) : ℤ := 2 * R.num ^ (j + 1)
def tailDen (R : ℚ) (j : ℕ) : ℤ := (R.den : ℤ) ^ (j + 1) * ((j + 1).factorial : ℤ)

def errorNum (a : QComplex) (R δ : ℚ) (j : ℕ) : ℤ :=
  tailNum R j * seedDen a j * (δ.den : ℤ) +
    2 * ((|(seedNum a j).1| + |(seedNum a j).2|) * tailDen R j +
      tailNum R j * seedDen a j) * δ.num

def errorDen (a : QComplex) (R δ : ℚ) (j : ℕ) : ℤ :=
  tailDen R j * seedDen a j * (δ.den : ℤ)

/-- The very same complete pre-rounding error, not merely the Taylor tail. -/
def fullError (a : QComplex) (R δ : ℚ) (j : ℕ) : ℚ :=
  let t := 2 * R ^ (j + 1) / ((j + 1).factorial : ℚ)
  t + 2 * (QComplex.rect (QComplex.polynomial a (j + 1)) + t) * δ

theorem argDen_pos (a : QComplex) : 0 < argDen a := by
  exact mul_pos (by exact_mod_cast Rat.den_pos a.re)
    (by exact_mod_cast Rat.den_pos a.im)

theorem argument_identity (a : QComplex) : argumentQ (argDen a) (argNum a) = a := by
  have hr : (a.re.den : ℚ) ≠ 0 := by exact_mod_cast Rat.den_ne_zero a.re
  have hi : (a.im.den : ℚ) ≠ 0 := by exact_mod_cast Rat.den_ne_zero a.im
  have hR := Rat.num_div_den a.re
  have hI := Rat.num_div_den a.im
  have er : (a.re.num : ℚ) = a.re * (a.re.den : ℚ) := (div_eq_iff hr).mp hR
  have ei : (a.im.num : ℚ) = a.im * (a.im.den : ℚ) := (div_eq_iff hi).mp hI
  cases a
  simp only [argumentQ, argDen, argNum, Int.cast_mul, Int.cast_natCast] at *
  congr 1 <;> field_simp [hr, hi] <;> nlinarith [er, ei]

theorem seedDen_pos (a : QComplex) (j : ℕ) : 0 < seedDen a j :=
  denominator_pos (argDen a) (argDen_pos a) j

theorem tailDen_pos (R : ℚ) (j : ℕ) : 0 < tailDen R j := by
  exact mul_pos (pow_pos (by exact_mod_cast Rat.den_pos R) _)
    (by exact_mod_cast Nat.factorial_pos (j + 1))

theorem errorDen_pos (a : QComplex) (R δ : ℚ) (j : ℕ) : 0 < errorDen a R δ j :=
  mul_pos (mul_pos (tailDen_pos R j) (seedDen_pos a j))
    (by exact_mod_cast Rat.den_pos δ)

theorem polynomial_identity (a : QComplex) (j : ℕ) :
    QComplex.polynomial a (j + 1) = decodeQ (seedDen a j) (seedNum a j) := by
  have h := polynomial_eq_decode (argDen a) (argDen_pos a) (argNum a) j
  simpa only [argument_identity] using h

/-- Exact source algebra; Rat.num/den supply identities, not approximations. -/
theorem full_error_identity (a : QComplex) (R δ : ℚ) (j : ℕ) :
    fullError a R δ j = (errorNum a R δ j : ℚ) / (errorDen a R δ j : ℚ) := by
  have hC : (seedDen a j : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt (seedDen_pos a j))
  have hR : (R.den : ℚ) ≠ 0 := by exact_mod_cast Rat.den_ne_zero R
  have hδ : (δ.den : ℚ) ≠ 0 := by exact_mod_cast Rat.den_ne_zero δ
  have hF : ((j + 1).factorial : ℚ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero (j + 1)
  have eR : (R.num : ℚ) = R * (R.den : ℚ) := (div_eq_iff hR).mp (Rat.num_div_den R)
  have eδ : (δ.num : ℚ) = δ * (δ.den : ℚ) := (div_eq_iff hδ).mp (Rat.num_div_den δ)
  unfold fullError
  rw [polynomial_identity, rect_decode _ (seedDen_pos a j)]
  simp only [errorNum, errorDen, tailNum, tailDen, Int.cast_add, Int.cast_mul,
    Int.cast_pow, Int.cast_ofNat, Int.cast_natCast, eR, eδ]
  field_simp [hC, hR, hδ, hF] <;> ring

theorem fullError_nonneg (a : QComplex) (R δ : ℚ) (j : ℕ)
    (hR : 0 ≤ R) (hδ : 0 ≤ δ) : 0 ≤ fullError a R δ j := by
  unfold fullError QComplex.rect
  positivity

/-- Only integer comparisons at the three large rounding leaves. -/
def Windows (bits : ℕ) (a : QComplex) (R δ : ℚ) (j : ℕ) (s : GridState) : Prop :=
  0 ≤ s.errorPart ∧
  FloorWindow (seedDen a j) (scaleZ bits * (seedNum a j).1) s.realPart ∧
  FloorWindow (seedDen a j) (scaleZ bits * (seedNum a j).2) s.imagPart ∧
  CeilingWindow (errorDen a R δ j)
    (scaleZ bits * errorNum a R δ j + 2 * errorDen a R δ j) s.errorPart

theorem seed_valid_of_windows (bits : ℕ) (a : QComplex) (R δ : ℚ) (j : ℕ)
    (s : GridState) (hR : 0 ≤ R) (hδ : 0 ≤ δ) (h : Windows bits a R δ j s) :
    SeedValid bits (QComplex.polynomial a (j + 1)) (fullError a R δ j) s := by
  have hr := floor_window_scaled _ _ _ _ (seedDen_pos a j) h.2.1
  have hi := floor_window_scaled _ _ _ _ (seedDen_pos a j) h.2.2.1
  have he := error_window_scaled _ _ _ _ (errorDen_pos a R δ j) h.2.2.2
  simp only [cast_scaleZ] at hr hi he
  have hgrid : scaleQ bits ≠ 0 := ne_of_gt (IntegerDyadicTrace.scaleQ_pos bits)
  have herr : scaleQ bits * (fullError a R δ j + roundoffQ bits) =
      scaleQ bits * fullError a R δ j + 2 := by
    unfold roundoffQ
    field_simp [hgrid] <;> ring
  refine ⟨fullError_nonneg a R δ j hR hδ, h.1, ?_, ?_, ?_⟩
  · simpa only [polynomial_identity, decodeQ] using hr
  · simpa only [polynomial_identity, decodeQ] using hi
  · rw [herr, full_error_identity]
    exact he

/-- Literal binding to the original base, exponent, schedule and COMPLETE error. -/
theorem original_seed_valid (q : ℚ) (z : QComplex)
    (p : RationalPowerEvaluation.Schedule) (j : ℕ) (hdegree : p.degree = j + 1)
    (s : GridState)
    (hR : 0 ≤ RationalPowerEvaluation.radius q z p)
    (hδ : 0 ≤ RationalPowerEvaluation.displacement q z p)
    (h : Windows p.bits (RationalPowerEvaluation.argument q z p)
      (RationalPowerEvaluation.radius q z p) (RationalPowerEvaluation.displacement q z p) j s) :
    SeedValid p.bits (RationalPowerEvaluation.seed q z p)
      (RationalPowerEvaluation.seedError q z p) s := by
  have hv := seed_valid_of_windows p.bits _ _ _ j s hR hδ h
  simpa only [RationalPowerEvaluation.seed, RationalPowerEvaluation.seedError,
    fullError, hdegree] using hv

end GRWTSK.Analysis.Complex.RationalTaylorSeedNormalization
