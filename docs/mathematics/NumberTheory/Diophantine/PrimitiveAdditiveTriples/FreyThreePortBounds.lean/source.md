# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyThreePortBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `becae935ce2f0f952cd11851aa75141b8674c2fe` · SHA-256 `2e47b43cf960b16a7109a5493b7c5b93d6b032cca9d57b39c75a2747c321e7dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's ordered fields, divisibility and finite vectors (Apache-2.0).
Formalization assistance: OpenAI.

Bounds for the fixed affine-linear coordinate frame, not intrinsic metrics on
all elliptic section spaces. An inverse bound on the compatible image is not
a bound for every integral extension of the inverse to the ambient target. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAffineEvaluation

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Explicit rational max norm on the two coefficient coordinates. -/
def freyMaxNorm2 (v : FreyRationalSectionCoordinates) : ℚ :=
  max |v 0| |v 1|

/-- Explicit rational max norm on the three ordered observation coordinates. -/
def freyMaxNorm3 (y : FreyRationalThreePortValues) : ℚ :=
  max |y 0| (max |y 1| |y 2|)

/-- Uniform lower sampling bound for the actual base-stage affine evaluation.
The constant is one for every positive primitive triple in the selected max
norms. This is not an upper frame bound or an intrinsic higher-stage theorem. -/
theorem PrimitiveAdditiveTriple.freyAffinePortEval_norm_lower
    (t : PrimitiveAdditiveTriple) (v : FreyRationalSectionCoordinates) :
    freyMaxNorm2 v ≤ freyMaxNorm3 (t.freyAffinePortEval v) := by
  let y := t.freyAffinePortEval v
  let B := freyMaxNorm3 y
  have hy0 : |y 0| ≤ B := le_max_left _ _
  have hy1 : |y 1| ≤ B := (le_max_left _ _).trans (le_max_right _ _)
  have hy2 : |y 2| ≤ B := (le_max_right _ _).trans (le_max_right _ _)
  have h0 : y 0 = v 0 := by
    dsimp only [y]
    rw [t.freyAffinePortEval_eq]
    rfl
  have hc : (2 : ℚ) ≤ (t.c : ℚ) := by exact_mod_cast t.two_le_c
  have hc0 : (0 : ℚ) ≤ (t.c : ℚ) := le_trans (by norm_num) hc
  have hsum : (t.a : ℚ) + (t.b : ℚ) = (t.c : ℚ) := by
    exact_mod_cast t.sum_eq
  have hd : y 1 - y 2 = (t.c : ℚ) * v 1 := by
    dsimp only [y]
    rw [t.freyAffinePortEval_eq]
    change (v 0 + (t.a : ℚ) * v 1) -
      (v 0 - (t.b : ℚ) * v 1) = (t.c : ℚ) * v 1
    rw [← hsum]
    ring
  have hprod : (t.c : ℚ) * |v 1| ≤ 2 * B := by
    calc
      (t.c : ℚ) * |v 1| = |(t.c : ℚ) * v 1| := by
        rw [abs_mul, abs_of_nonneg hc0]
      _ = |y 1 - y 2| := by rw [hd]
      _ ≤ |y 1| + |y 2| := abs_sub _ _
      _ ≤ 2 * B := by linarith
  have hsmall : 2 * |v 1| ≤ (t.c : ℚ) * |v 1| :=
    mul_le_mul_of_nonneg_right hc (abs_nonneg _)
  change max |v 0| |v 1| ≤ B
  exact max_le (by simpa only [h0] using hy0) (by linarith)

/-- Saturation preserves every common divisor, not just squarefree support.
In particular this can be applied to each prime power d=p^k. -/
theorem freyThreePort_commonDivisor_iff
    {a b r s : ℤ} (hbezout : r * a + s * b = 1)
    (d : ℤ) (v : FreySectionCoordinates) :
    (∀ i, d ∣ freyThreePortEval a b v i) ↔ (∀ j, d ∣ v j) := by
  constructor
  · intro h j
    fin_cases j
    · exact h 0
    · have hrec : d ∣ freyThreePortRecover r s (freyThreePortEval a b v) 1 := by
        change d ∣ r * (freyThreePortEval a b v 1 - freyThreePortEval a b v 0) +
          s * (freyThreePortEval a b v 0 - freyThreePortEval a b v 2)
        exact dvd_add
          (dvd_mul_of_dvd_right (dvd_sub (h 1) (h 0)) r)
          (dvd_mul_of_dvd_right (dvd_sub (h 0) (h 2)) s)
      simpa only [freyThreePortRecover_leftInverse_of_bezout hbezout v] using hrec
  · intro h i
    fin_cases i
    · exact h 0
    · change d ∣ v 0 + a * v 1
      exact dvd_add (h 0) (dvd_mul_of_dvd_right (h 1) a)
    · change d ∣ v 0 - b * v 1
      exact dvd_sub (h 0) (dvd_mul_of_dvd_right (h 1) b)

/-- The same all-divisor identity for the exact typed source map. -/
theorem PrimitiveAdditiveTriple.threePort_commonDivisor_iff
    (t : PrimitiveAdditiveTriple) (d : ℤ) (v : FreySectionCoordinates) :
    (∀ i, d ∣ t.threePortEval v i) ↔ (∀ j, d ∣ v j) :=
  freyThreePort_commonDivisor_iff t.bezout_identity d v

/-- The x observation has max norm max(a,b), not c=a+b. -/
theorem PrimitiveAdditiveTriple.freyAffinePortEval_x_norm
    (t : PrimitiveAdditiveTriple) :
    freyMaxNorm3 (t.freyAffinePortEval freyXRationalSection) =
      max (t.a : ℚ) (t.b : ℚ) := by
  rw [t.freyAffinePortEval_x]
  change max |(0 : ℚ)| (max |(t.a : ℚ)| |-(t.b : ℚ)|) = _
  have ha : (0 : ℚ) ≤ (t.a : ℚ) := by positivity
  have hb : (0 : ℚ) ≤ (t.b : ℚ) := by positivity
  rw [abs_zero, abs_neg, abs_of_nonneg ha, abs_of_nonneg hb]
  exact max_eq_right (ha.trans (le_max_left _ _))

/-- Decoding x loses at most a factor two in max size. This gives the
logarithmic gap at most log(2) for primitive projective coordinate vectors;
it does not compare either size to the radical. -/
theorem PrimitiveAdditiveTriple.freyAffinePortEval_x_size_comparison
    (t : PrimitiveAdditiveTriple) :
    freyMaxNorm3 (t.freyAffinePortEval freyXRationalSection) ≤ (t.c : ℚ) ∧
    (t.c : ℚ) ≤ 2 * freyMaxNorm3 (t.freyAffinePortEval freyXRationalSection) := by
  rw [t.freyAffinePortEval_x_norm]
  have hsum : (t.a : ℚ) + (t.b : ℚ) = (t.c : ℚ) := by
    exact_mod_cast t.sum_eq
  constructor
  · apply max_le
    · exact_mod_cast (Nat.le_of_lt t.a_lt_c)
    · exact_mod_cast (Nat.le_of_lt t.b_lt_c)
  · have ha : (t.a : ℚ) ≤ max (t.a : ℚ) (t.b : ℚ) := le_max_left _ _
    have hb : (t.b : ℚ) ≤ max (t.a : ℚ) (t.b : ℚ) := le_max_right _ _
    linarith

/-- A completely explicit primitive source for the corrected size fixture. -/
def freyBoundFixture235 : PrimitiveAdditiveTriple where
  a := 2
  b := 3
  c := 5
  a_pos := by decide
  b_pos := by decide
  sum_eq := by decide
  coprime_ab := by decide

/-- Regression: the three observations of x have max norm three, not five. -/
theorem freyBoundFixture235_x_norm :
    freyMaxNorm3 (freyBoundFixture235.freyAffinePortEval freyXRationalSection) = 3 := by
  rw [freyBoundFixture235.freyAffinePortEval_x_norm]
  norm_num [freyBoundFixture235]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
