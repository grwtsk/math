/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Tactic

/-!
# Scalar Gram interference budgets for high physical Weil prime shifts

MSC2020: 11M26 (primary), 47A12, 26D15.

For two nonnegative original prime-power weights a,b and an upper
bound c on the correlation between the two translated upper-half
source profiles, the exact Gram norm budget is
  pairBudget a b c = sqrt(a²+b²+2abc).
This module establishes its nonnegative gain relative to a+b, and
the quantitative multiplicative gain, including the c=1/2 separated
shift case. These scalar theorems have an explicit consumer in the
original Weil signed prime response, developed with complete
physical L2 source proof in WeilHighShiftInterference.md.

The physical-source disintegration and the arbitrary-size
high-prime-power joint Gram estimate are WRITTEN mathematics in
that companion; they are not Lean declarations in this file.
No phase, conductor, gamma or either zeta pole orientation is
replaced by a positive form. No all-test sign is presumed.

Prior art: Fejer/Haagerup--de la Harpe finite-shift numerical
radius; the preceding WeilFiniteChainPrimeBound.md. The scalar
gap is an elementary algebraic consequence and has no novelty claim.
SOURCE_PROOF_CANDIDATE. Elaboration, complete dependency build,
fresh kernel replay, transitive axiom audit, certified arithmetic
evaluation and independent review NOT_RUN; novelty UNASSESSED.
No new axiom, sorry, admit, or RH/primitive GRH claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.HighShiftInterference

/-- Exact nonnegative scalar Gram budget for two weighted shift outputs. -/
def pairBudget (a b c : ℝ) : ℝ :=
  Real.sqrt (a ^ 2 + b ^ 2 + 2 * a * b * c)

private theorem pairBudget_nonneg (a b c : ℝ) :
    0 ≤ pairBudget a b c := by
  unfold pairBudget
  positivity

private theorem pairBudget_sq (a b c : ℝ)
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hc : 0 ≤ c) :
    pairBudget a b c ^ 2 = a ^ 2 + b ^ 2 + 2 * a * b * c := by
  unfold pairBudget
  exact Real.sq_sqrt (by positivity)

/-- Even before the arithmetic source return, the pairwise Gram budget
is no larger than summing the independent original prime weights. -/
theorem pairBudget_le_sum (a b c : ℝ)
    (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hc0 : 0 ≤ c) (hc1 : c ≤ 1) :
    pairBudget a b c ≤ a + b := by
  have hs := pairBudget_sq a b c ha hb hc0
  have hroot := pairBudget_nonneg a b c
  have hsum : 0 ≤ a + b := add_nonneg ha hb
  have hcsub : 0 ≤ 1 - c := sub_nonneg.mpr hc1
  have hgap : 0 ≤ 2 * a * b * (1 - c) := by positivity
  nlinarith

private theorem pairBudget_gap_factor (a b c : ℝ)
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hc0 : 0 ≤ c) :
    (a + b - pairBudget a b c) *
      (a + b + pairBudget a b c) = 2 * a * b * (1 - c) := by
  calc
    (a + b - pairBudget a b c) *
        (a + b + pairBudget a b c) =
      (a + b) ^ 2 - pairBudget a b c ^ 2 := by ring
    _ = 2 * a * b * (1 - c) := by
      rw [pairBudget_sq a b c ha hb hc0]
      ring

/-- Nonnegative interference saving, without a numerical square-root
evaluation or division by a potentially zero prime-weight sum. -/
theorem pairBudget_gap_lower (a b c : ℝ)
    (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hc0 : 0 ≤ c) (hc1 : c ≤ 1) :
    2 * a * b * (1 - c) ≤
      2 * (a + b) * ((a + b) - pairBudget a b c) := by
  have hle := pairBudget_le_sum a b c ha hb hc0 hc1
  have hfactor := pairBudget_gap_factor a b c ha hb hc0
  calc
    2 * a * b * (1 - c) =
        (a + b - pairBudget a b c) *
          (a + b + pairBudget a b c) := hfactor.symm
    _ = (a + b + pairBudget a b c) *
          (a + b - pairBudget a b c) := by ring
    _ ≤ 2 * (a + b) * (a + b - pairBudget a b c) := by
      apply mul_le_mul_of_nonneg_right _ (sub_nonneg.mpr hle)
      linarith

/-- If two distinct prime logarithmic shifts are separated by at least
half the physical support radius, their joint coefficient is at most
sqrt(a²+b²+ab). The original prime-mass saving is at least
ab/(2(a+b)) when a+b>0, encoded here without division. -/
theorem separated_pair_gain (a b : ℝ)
    (ha : 0 ≤ a) (hb : 0 ≤ b) :
    a * b ≤
      2 * (a + b) * ((a + b) -
        Real.sqrt (a ^ 2 + b ^ 2 + a * b)) := by
  have h := pairBudget_gap_lower a b (1 / 2) ha hb
    (by norm_num) (by norm_num)
  have heq : pairBudget a b (1 / 2) =
      Real.sqrt (a ^ 2 + b ^ 2 + a * b) := by
    unfold pairBudget
    congr 1
    ring
  rw [heq] at h
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.HighShiftInterference
