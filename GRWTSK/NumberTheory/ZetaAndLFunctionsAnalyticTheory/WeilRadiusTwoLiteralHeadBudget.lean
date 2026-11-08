/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@93f8138065fe2a050609e4a56d91405072bd8bee.
Canonical workflow source: grwtsk/noeaaeue@
a1cc95fc059a80969040ea2b2106c68692626092.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRepositoryHeadComputedLDL

/-!
# Split the computed radius-two head margin between trial and residual losses

The repository-bound literal bordered-head computation supplies the exact margin

`(1 / 20) * sum_i v_i^2 <= quadratic literalHead v`

on the unchanged carrier `Fin 64 ⊕ Unit`.  The whole-window consumer subtracts
the complete residual numerator through the independently proved high floor
`1 / 5`, so a residual allowance `r * sum_i v_i^2` costs
`5 * r * sum_i v_i^2` in the paid lower matrix.

The preceding consumer used the rigid sufficient conditions

* reconstructed trial quadratic at least the literal head; and
* complete residual allowance at most `1 / 100` of augmented head mass.

This module proves the strictly more flexible source return.  A trial loss `a`
and residual loss `r` may be certified separately, provided

`a + 5 * r <= 1 / 20`.

The mass includes the actual scalar pole coordinate.  `Budget` stores only the
two quantitative source comparisons and their exact scalar payment.  It does
not store the paid lower sign or `StageLower 1` as a field.

This is the direct Schur arithmetic route and is not independent of the computed
head LDL theorem or the whole-window source-return theorem.  Matching dimensions,
coordinate labels, a positive head, or a small observed Gram do not imply either
budget field.  If the total allowance exceeds `1 / 20`, this argument has no
remaining certified margin.  No concrete split budget, high floor, cofinal
family, RH, or Dirichlet GRH is asserted here.
-/

set_option autoImplicit false
noncomputable section

open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoLiteralHeadBudget

open RadiusTwoCandidateEntries RadiusTwoStageReturn
open RadiusTwoLiteralHeadReturn
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- Euclidean mass on the complete retained head, including the pole port. -/
def headMass (v : Head → ℝ) : ℝ :=
  ∑ i, (v i) ^ 2

theorem headMass_nonneg (v : Head → ℝ) : 0 ≤ headMass v := by
  exact Finset.sum_nonneg (fun i _ => sq_nonneg (v i))

/-- Quantitative source comparisons sufficient to spend the computed `1 / 20`
head floor.

`trialLoss` prices how far the actual reconstructed trial may fall below the
literal bordered head.  `residualLoss` prices the complete observed,
observation-error and remote residual numerator before division by the physical
high floor `1 / 5`. -/
structure Budget (bits : ℕ) (t : ScalarTables)
    (X : Matrix Trial Head ℝ) where
  trialLoss : ℝ
  residualLoss : ℝ
  trialComparison : ∀ v : Head → ℝ,
    quadratic RadiusTwoLiteralHeadCertificate.literalHead v -
        quadratic (trialUpper X) v ≤
      trialLoss * headMass v
  residualComparison : ∀ v : Head → ℝ,
    quadratic (paidResidualCost bits t X) v ≤
      residualLoss * headMass v
  total : trialLoss + 5 * residualLoss ≤ (1 / 20 : ℝ)

/-- The split budget closes the exact paid lower matrix.

No source sign is assumed: the conclusion is obtained from the concrete
repository-bound literal-head floor, the two one-sided comparisons in `Budget`,
and the fixed `1 / 5` normalization already present in `paidLower`. -/
theorem paidLower_nonnegative_of_budget
    (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℝ)
    (b : Budget bits t X) (v : Head → ℝ) :
    0 ≤ quadratic (paidLower bits t X) v := by
  have hhead :
      (1 / 20 : ℝ) * headMass v ≤
        quadratic RadiusTwoLiteralHeadCertificate.literalHead v := by
    simpa only [headMass] using
      RadiusTwoRepositoryHeadComputedLDL.literal_head_ge_one_twentieth v
  have hresidual :
      quadratic (paidResidualCost bits t X) v / (1 / 5 : ℝ) ≤
        (5 * b.residualLoss) * headMass v := by
    calc
      quadratic (paidResidualCost bits t X) v / (1 / 5 : ℝ) =
          5 * quadratic (paidResidualCost bits t X) v := by ring
      _ ≤ 5 * (b.residualLoss * headMass v) :=
        mul_le_mul_of_nonneg_left (b.residualComparison v) (by norm_num)
      _ = (5 * b.residualLoss) * headMass v := by ring
  have htotal :
      (b.trialLoss + 5 * b.residualLoss) * headMass v ≤
        (1 / 20 : ℝ) * headMass v :=
    mul_le_mul_of_nonneg_right b.total (headMass_nonneg v)
  have hresidualAllowed :
      (5 * b.residualLoss) * headMass v ≤
        (1 / 20 : ℝ) * headMass v - b.trialLoss * headMass v := by
    rw [le_sub_iff_add_le]
    calc
      (5 * b.residualLoss) * headMass v + b.trialLoss * headMass v =
          (b.trialLoss + 5 * b.residualLoss) * headMass v := by ring
      _ ≤ (1 / 20 : ℝ) * headMass v := htotal
  have htrial :
      quadratic RadiusTwoLiteralHeadCertificate.literalHead v -
          b.trialLoss * headMass v ≤
        quadratic (trialUpper X) v := by
    have h := (sub_le_iff_le_add).mp (b.trialComparison v)
    rw [sub_le_iff_le_add]
    simpa only [add_comm] using h
  rw [quadratic_paidLower_eq_trial_sub_cost]
  apply sub_nonneg.mpr
  exact hresidual.trans
    (hresidualAllowed.trans
      ((sub_le_sub_right hhead (b.trialLoss * headMass v)).trans htrial))

/-- Return a split source budget through the existing complete radius-two
whole-window consumer.

The reconstruction of all retained physical coordinates and the pole, scalar
source soundness, and the independent mode-64 high floor remain explicit. -/
theorem stageLower_one_of_budget
    (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (X : Matrix Trial Head ℝ)
    (hhead : ∀ (v : Head → ℝ) (i : Fin 64),
      X.mulVec v (.inl (Fin.castLE (by decide : 64 ≤ 512) i)) =
        v (.inl i))
    (hpole : ∀ v : Head → ℝ, X.mulVec v (.inr ()) = v (.inr ()))
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64)
    (b : Budget bits t X) :
    OddLiteralCofinal.StageLower 1 := by
  apply stageLower_one_of_paidLower bits ht X hhead hpole hfloor
  intro v
  exact paidLower_nonnegative_of_budget bits t X b v

/-- The previous zero-trial-loss and `1 / 100` residual allocation is an exact
instance of the split budget. -/
def Budget.ofDominatingTrial
    (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℝ)
    (htrial : ∀ v : Head → ℝ,
      quadratic RadiusTwoLiteralHeadCertificate.literalHead v ≤
        quadratic (trialUpper X) v)
    (hresidual : ∀ v : Head → ℝ,
      quadratic (paidResidualCost bits t X) v ≤
        (1 / 100 : ℝ) * headMass v) :
    Budget bits t X where
  trialLoss := 0
  residualLoss := 1 / 100
  trialComparison := by
    intro v
    simpa only [zero_mul] using sub_nonpos.mpr (htrial v)
  residualComparison := hresidual
  total := by norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoLiteralHeadBudget
