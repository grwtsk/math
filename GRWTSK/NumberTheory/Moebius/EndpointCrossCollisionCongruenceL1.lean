/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #559. Direct stacked parent: draft PR #555 at
`dbc3b7a29d2549eb027a3acc86f75efe38639271`.
-/
import GRWTSK.NumberTheory.Moebius.EndpointCrossCollisionCongruenceFibres
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Weighted L1 budget for square-modulus congruence fibres

The parent module gives the exact signed lower-order collision representation

`2 * sum_d mu(d) * CrossCongruenceFibre(b,d)`.

This module introduces the first deliberate absolute-value loss on that branch.
Absolute values are taken only after each exact square-modulus fibre has been
formed:

`sum_d |CrossCongruenceFibre(b,d)|`.

No absolute value is moved inside a congruence fibre.  Consequently all
endpoint/prefix/base cancellation inside one square-modulus class is retained.

Using only `|mu(d)| <= 1`, the signed cross-collision contribution is bounded
by this L1 fibre budget.  No arithmetic estimate of the budget is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- The repository's real-valued Möbius wrapper is one-bounded in absolute
value. -/
theorem abs_moebiusReal_le_one
    (d : ℕ) :
    |moebiusReal d| ≤ 1 := by
  unfold moebiusReal
  change |((ArithmeticFunction.moebius d : ℤ) : ℝ)| ≤ 1
  rw [← Int.cast_abs]
  norm_cast
  exact ArithmeticFunction.abs_moebius_le_one

/-- L1 mass across exact square-modulus congruence fibres at one endpoint. -/
def mertensEndpointCrossCongruenceL1Mass
    (b : ℕ) : ℝ :=
  ∑ d ∈ Finset.Ico 1 b,
    |mertensEndpointCrossCongruenceFibre b d|

theorem mertensEndpointCrossCongruenceL1Mass_nonneg
    (b : ℕ) :
    0 ≤ mertensEndpointCrossCongruenceL1Mass b := by
  unfold mertensEndpointCrossCongruenceL1Mass
  exact Finset.sum_nonneg fun d _hd => abs_nonneg _

/-- The signed `mu(d)`-weighted endpoint collision is dominated by twice the
L1 mass of the exact congruence fibres.  This loses only cancellation between
different square moduli. -/
theorem mertensEndpointCrossCollisionCongruenceFibreEnergy_le_l1
    (b : ℕ) :
    mertensEndpointCrossCollisionCongruenceFibreEnergy b ≤
      2 * mertensEndpointCrossCongruenceL1Mass b := by
  unfold mertensEndpointCrossCollisionCongruenceFibreEnergy
    mertensEndpointCrossCongruenceL1Mass
  apply mul_le_mul_of_nonneg_left ?_ (by norm_num)
  calc
    (∑ d ∈ Finset.Ico 1 b,
      moebiusReal d * mertensEndpointCrossCongruenceFibre b d) ≤
        |∑ d ∈ Finset.Ico 1 b,
          moebiusReal d * mertensEndpointCrossCongruenceFibre b d| :=
      le_abs_self _
    _ ≤ ∑ d ∈ Finset.Ico 1 b,
        |moebiusReal d * mertensEndpointCrossCongruenceFibre b d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Ico 1 b,
        |mertensEndpointCrossCongruenceFibre b d| := by
      apply Finset.sum_le_sum
      intro d _hd
      rw [abs_mul]
      have hmu := abs_moebiusReal_le_one d
      simpa using
        mul_le_mul_of_nonneg_right hmu
          (abs_nonneg (mertensEndpointCrossCongruenceFibre b d))

/-- Positivity of the exact reciprocal endpoint weight. -/
theorem reciprocalEndpointDrop_nonneg
    {b : ℕ} (hb : 0 < b) :
    0 ≤ (b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹ := by
  rw [sub_nonneg]
  have hbR : 0 < (b : ℝ) := by exact_mod_cast hb
  have hb1R : 0 < (((b + 1 : ℕ) : ℝ)) := by positivity
  exact
    (inv_le_inv₀ hb1R hbR).2
      (by exact_mod_cast (Nat.le_succ b))

/-- RH-facing weighted L1 majorant.  The factor eight is exact:
four from the inherited endpoint weight and two from the two oriented
cross-collision strata. -/
def weightedMertensEndpointCrossCongruenceL1Majorant
    (j : ℕ) : ℝ :=
  8 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
      mertensEndpointCrossCongruenceL1Mass b

theorem weightedMertensEndpointCrossCongruenceL1Majorant_nonneg
    (j : ℕ) :
    0 ≤ weightedMertensEndpointCrossCongruenceL1Majorant j := by
  unfold weightedMertensEndpointCrossCongruenceL1Majorant
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro b hb
  have hb' := Finset.mem_Ico.mp hb
  have hbpos : 0 < b := by
    have hx : 0 < 2 ^ j := by positivity
    omega
  exact mul_nonneg
    (reciprocalEndpointDrop_nonneg hbpos)
    (mertensEndpointCrossCongruenceL1Mass_nonneg b)

/-- The original signed weighted cross-collision contribution is bounded by
the congruence-fibre L1 majorant. -/
theorem weightedMertensEndpointCrossCollisionEnergy_le_congruenceL1Majorant
    (j : ℕ) :
    weightedMertensEndpointCrossCollisionEnergy j ≤
      weightedMertensEndpointCrossCongruenceL1Majorant j := by
  rw [weightedMertensEndpointCrossCollisionEnergy_eq_congruenceFibres]
  unfold weightedMertensEndpointCrossCollisionCongruenceFibreEnergy
    weightedMertensEndpointCrossCongruenceL1Majorant
  calc
    4 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          mertensEndpointCrossCollisionCongruenceFibreEnergy b ≤
      4 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          (2 * mertensEndpointCrossCongruenceL1Mass b) := by
      apply mul_le_mul_of_nonneg_left ?_ (by norm_num)
      apply Finset.sum_le_sum
      intro b hb
      have hb' := Finset.mem_Ico.mp hb
      have hbpos : 0 < b := by
        have hx : 0 < 2 ^ j := by positivity
        omega
      exact
        mul_le_mul_of_nonneg_left
          (mertensEndpointCrossCollisionCongruenceFibreEnergy_le_l1 b)
          (reciprocalEndpointDrop_nonneg hbpos)
    _ = 8 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          mertensEndpointCrossCongruenceL1Mass b := by
      ring

/-- Explicit all-scale arithmetic-progression supplier.  It requires
subpolynomial control only after each exact square-modulus fibre is formed. -/
def SubpolynomialWeightedMertensEndpointCrossCongruenceL1 : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensEndpointCrossCongruenceL1Majorant j ≤
        C * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The L1 congruence-fibre supplier gives the preceding signed congruence
cross-collision supplier. -/
theorem subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_l1
    (hL1 : SubpolynomialWeightedMertensEndpointCrossCongruenceL1) :
    SubpolynomialWeightedMertensEndpointCongruenceCrossCollision := by
  intro δ hδ
  obtain ⟨C, hC, hscale⟩ := hL1 δ hδ
  refine ⟨C, hC, ?_⟩
  intro j
  exact
    (weightedMertensEndpointCrossCollisionEnergy_le_congruenceL1Majorant j).trans
      (hscale j)

/-- Therefore the same L1 supplier also supplies the exact squarefree-midpoint
cross-collision interface from the preceding route. -/
theorem subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_congruenceL1
    (hL1 : SubpolynomialWeightedMertensEndpointCrossCongruenceL1) :
    SubpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision :=
  subpolynomialWeightedMertensEndpointCongruenceCrossCollision_iff_squarefreeMidpoint.mp
    (subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_l1 hL1)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_moebiusReal_le_one
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensEndpointCrossCollisionCongruenceFibreEnergy_le_l1
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensEndpointCrossCollisionEnergy_le_congruenceL1Majorant
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_l1
