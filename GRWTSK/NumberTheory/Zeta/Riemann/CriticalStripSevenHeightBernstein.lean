/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Fin.VecNotation
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# An exact positive rectangle certificate for the height-seven joint bound

This is a polynomial identity, not a sampled sign test. Binomial weights are
absorbed into the natural coefficient table: the basis factors are
u^i(1-u)^(8-i)v^j(1-v)^(4-j). Nonnegativity is used only on [0,1]^2.
The identity is checked by ring normalization independently of the table proposal.

The second input y is SQUARED imaginary height, not imaginary height itself.
The change of variables is x=(1+u)/2, y=49v. The gap compares the exact squared
products of the existing quartic reference and its actual analytic remainder.
It neither defines a new zeta source nor a positive Hodge/Weil form.
These are source scripts; elaboration and axiom audit are NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive.SevenHeightCertificate

noncomputable section

/-- Unnormalized Bernstein monomial; the binomial weights belong to coefficients. -/
def boxBasis (n i : ℕ) (u : ℝ) : ℝ := u ^ i * (1 - u) ^ (n - i)

lemma boxBasis_nonneg (n i : ℕ) {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    0 ≤ boxBasis n i u :=
  mul_nonneg (pow_nonneg hu _) (pow_nonneg (sub_nonneg.mpr hu1) _)

/-- Natural coefficients cannot hide a negative coefficient in a sign certificate. -/
def tensorValue {m n : ℕ} (c : Fin (m + 1) → Fin (n + 1) → ℕ) (u v : ℝ) : ℝ :=
  ∑ i, ∑ j, (c i j : ℝ) * boxBasis m i.val u * boxBasis n j.val v

theorem tensorValue_nonneg {m n : ℕ} (c : Fin (m + 1) → Fin (n + 1) → ℕ)
    {u v : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) (hv : 0 ≤ v) (hv1 : v ≤ 1) :
    0 ≤ tensorValue c u v := by
  unfold tensorValue
  apply Finset.sum_nonneg
  intro i hi
  apply Finset.sum_nonneg
  intro j hj
  exact mul_nonneg
    (mul_nonneg (Nat.cast_nonneg _) (boxBasis_nonneg _ _ hu hu1))
    (boxBasis_nonneg _ _ hv hv1)

/-- Exact squared numerator of the source-error/reference ratio. -/
def numerator (x y : ℝ) : ℝ :=
  (x ^ 2 + y) * ((x - 1) ^ 2 + y) * ((x + 1) ^ 2 + y) * ((x + 3) ^ 2 + y)

/-- Includes the actual real-part denominator from the Mellin integration bound. -/
def denominator (x y : ℝ) : ℝ :=
  (x + 3) ^ 2 * ((x + 4) ^ 2 + y) * ((x + 5) ^ 2 + y) * ((9 - x) ^ 2 + y)

/-- The desired squared relative bound is (31/32)^2=961/1024. -/
def gap (x y : ℝ) : ℝ := 961 * denominator x y - 1024 * numerator x y

/-- Full 9 by 5 table. Its equality to the gap, not its provenance, is decisive. -/
def coefficients : Fin 9 → Fin 5 → ℕ :=
  ![
    ![133378622937, 1162580092464, 3553722717482, 4045163278184, 9434036885],
    ![1143335739756, 9865335240936, 29912555851696, 33885095450584, 604875153316],
    ![4284644952756, 36604301063036, 110102295227036, 124110765949268, 4014303018880],
    ![9168221445792, 77564668298976, 231470036559136, 259615213730080, 11913976396864],
    ![12251639159616, 102664782737312, 303994230767504, 339231059353856, 19865412629968],
    ![10469682134016, 86916174715776, 255391407208000, 283538171916160, 19965609662656],
    ![5587200233472, 45961790120192, 134034207467072, 148041237766592, 12067796372608],
    ![1702351994880, 13879945973760, 40176595717120, 44146362311680, 4057696626688],
    ![226728345600, 1832670216192, 5266139156480, 5756617060352, 585211781120]
  ]

/-- Exact equality for ALL real u,v; signs are asserted only on the unit square.
No external symbolic calculation or table-fitting oracle is a premise. -/
theorem tensor_identity (u v : ℝ) :
    tensorValue coefficients u v = 256 * gap ((1 + u) / 2) (49 * v) := by
  norm_num [tensorValue, coefficients, boxBasis, Fin.sum_univ_succ,
    gap, numerator, denominator] <;> ring

/-- Complete closed-rectangle sign theorem, not just corner or grid positivity. -/
theorem gap_nonneg {x y : ℝ}
    (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) (hy : 0 ≤ y) (hy49 : y ≤ 49) :
    0 ≤ gap x y := by
  have hu : 0 ≤ 2 * x - 1 := by linarith
  have hu1 : 2 * x - 1 ≤ 1 := by linarith
  have hv : 0 ≤ y / 49 := by positivity
  have hv1 : y / 49 ≤ 1 := by linarith
  have h := tensorValue_nonneg coefficients hu hu1 hv hv1
  rw [tensor_identity,
    show (1 + (2 * x - 1)) / 2 = x by ring,
    show 49 * (y / 49) = y by ring] at h
  linarith

theorem squared_ratio_bound {x y : ℝ}
    (hx : (1 / 2 : ℝ) ≤ x) (hx1 : x ≤ 1) (hy : 0 ≤ y) (hy49 : y ≤ 49) :
    1024 * numerator x y ≤ 961 * denominator x y := by
  have h := gap_nonneg hx hx1 hy hy49
  unfold gap at h
  linarith

/-- This certificate fails at the ambient point 1/2+8i. It is not a zeta-zero claim. -/
theorem height_eight_gap_negative : gap (1 / 2) 64 < 0 := by
  norm_num [gap, numerator, denominator]

/-- Changing the polynomial but retaining the table does not retain the identity. -/
theorem zero_table_is_not_certificate :
    tensorValue (fun (_ : Fin 9) (_ : Fin 5) => 0) 0 0 ≠ 256 * gap (1 / 2) 0 := by
  norm_num [tensorValue, boxBasis, gap, numerator, denominator]

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.QuarticPrimitive.SevenHeightCertificate
