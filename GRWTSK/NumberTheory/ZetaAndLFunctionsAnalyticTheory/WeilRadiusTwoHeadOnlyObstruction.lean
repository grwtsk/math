/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoHeadOnlyReconstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRemoteAllowanceMatrix
import Mathlib.Tactic.NativeDecide

/-!
# The exact head-only radius-two trial cannot pay its residual budget

Source baseline: `grwtsk/math@dbcff22f6d97843b181cde775fba49b18b91ac53`.
Canonical workflow source: `grwtsk/noeaaeue@152a0d745469989a65d57f3ac36ee4c75b00db9f`.

The preceding head-only reconstruction copies the literal 64 physical sine
coordinates and the scalar pole coordinate, and sets physical modes 65 through
512 to zero.  Its reconstructed trial quadratic is therefore exactly the
literal bordered-head quadratic.  The remaining sufficient condition was a
`RadiusTwoLiteralHeadBudget.Budget`, spending the repository-computed head floor
`1/20` between trial loss and the complete residual numerator divided by the
independent high floor `1/5`.

This module proves a hostile result for that particular reconstruction.  Test
the complete residual cost on the actual scalar pole basis vector.  The observed
residual Gram already contains all 1984 pole-column rows, modes 65 through 2048.
Using the repository's own 40-bit rational pole intervals, an exact rational
`native_decide` statement gives

`17/1000 < (33/32) * poleObservedEnergy`.

The propagated observation-error payment is nonnegative.  The complete remote
allowance is positive semidefinite by the existing source theorem, so neither can
cancel this lower bound.  Hence the complete residual cost in the pole direction
is strictly larger than `17/1000`.

Any budget for the head-only reconstruction must have nonnegative trial loss,
because the trial and literal head are equal.  Its residual comparison then
forces residual loss above `17/1000`.  This contradicts

`trialLoss + 5 * residualLoss <= 1/20`.

Thus no budget of the existing type exists for the head-only reconstruction, and
no residual-slack rate satisfying `5*r <= 1/20` can pass.  This is a
source-preserving obstruction to one certificate route.  It is NOT a negative
value of the original Weil form, does not refute a reconstruction with nonzero
middle coordinates, and does not prove or disprove `StageLower 1`, RH, or
Dirichlet GRH.

The primary route is the exact rational pole-column calculation plus positivity
of the already-paid error and remote matrices.  It is not independent of the
repository interval definitions or the complete-remote PSD theorem.  The hostile
boundary is specific: changing the reconstruction changes both the trial loss
and residual matrix, so this result cannot be transported by matching dimensions
or coordinate labels.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
noncomputable section

open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHeadOnlyObstruction

open RadiusTwoCandidateEntries RadiusTwoCandidateResidual
open RadiusTwoGammaPoleObservations RadiusTwoPaidLowerBounds
open RadiusTwoStageReturn RadiusTwoLiteralHeadReturn
open RadiusTwoLiteralHeadBudget RadiusTwoHeadOnlyReconstruction
open RadiusTwoDyadicReplay OddRemoteAllowanceMatrix
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- The actual auxiliary pole coordinate in the augmented retained head. -/
abbrev pole : Head := Sum.inr ()

/-- Unit vector in the actual pole coordinate, not a physical sine vector. -/
def poleVector : Head → ℝ := fun i => if i = pole then 1 else 0

theorem poleVector_mass : (∑ i, poleVector i ^ 2) = 1 := by
  classical
  rw [Fintype.sum_sum_type]
  simp [poleVector, pole]

theorem headMass_poleVector : headMass poleVector = 1 := by
  simpa only [headMass] using poleVector_mass

/-- Midpoint of the repository's outward pole interval at one physical mode. -/
def poleCenter (n : ℕ) : ℚ :=
  ((poleBounds observationBits n).1 + (poleBounds observationBits n).2) / 2

/-- The residual pole entry is definitionally the repository pole interval. -/
theorem residualCenter_pole (i : ResidualRows) :
    residualCenters observationBits scalarTables i pole =
      poleCenter (64 + 1 + i.val) := by
  rfl

/-- Exact rational squared pole-column mass in all observed rows 65 through 2048. -/
def poleObservedEnergy : ℚ :=
  ∑ i : ResidualRows, poleCenter (64 + 1 + i.val) ^ 2

/-- Exact finite arithmetic on the repository pole intervals.

This is intentionally a closed rational proposition.  It does not evaluate a
real transcendental source outside the already proved interval enclosures. -/
set_option maxHeartbeats 0 in
theorem paid_pole_energy_gt_seventeen_thousandths :
    (17 / 1000 : ℚ) < (33 / 32 : ℚ) * poleObservedEnergy := by
  native_decide

/-- The rational reconstruction column of the pole is the corresponding basis
column; all physical rows are zero. -/
theorem reconstructionQ_pole_column (i : Trial) :
    reconstructionQ i pole =
      if i = (Sum.inr () : Trial) then 1 else 0 := by
  classical
  rcases i with i | u
  · by_cases hi : i.val < 64
    · simp [reconstructionQ, pole, extendMiddle, zeroMiddle, hi, dyadic]
    · simp [reconstructionQ, pole, extendMiddle, zeroMiddle, hi, dyadic]
  · rcases u with ⟨⟩
    simp [reconstructionQ, pole, extendMiddle, dyadic]

/-- The same basis-column identity after realization over the reals. -/
theorem reconstruction_pole_column (i : Trial) :
    reconstruction i pole =
      if i = (Sum.inr () : Trial) then 1 else 0 := by
  change ((reconstructionQ i pole : ℚ) : ℝ) = _
  rw [reconstructionQ_pole_column]
  split_ifs <;> norm_num

/-- Rational observed residual rows restrict to the original pole column. -/
theorem observedRows_pole (i : ResidualRows) :
    observedRows observationBits scalarTables reconstructionQ i pole =
      poleCenter (64 + 1 + i.val) := by
  classical
  unfold observedRows
  simp only [Matrix.mul_apply]
  rw [Fintype.sum_sum_type]
  simp [reconstructionQ_pole_column, pole, residualCenter_pole]

/-- The real observed residual used by the whole-window consumer has exactly the
same pole column. -/
theorem observedResidualRows_pole (i : ResidualRows) :
    observedResidualRows observationBits scalarTables reconstruction i pole =
      (poleCenter (64 + 1 + i.val) : ℝ) := by
  change observedResidualRows observationBits scalarTables
      (reconstructionQ.map (Rat.castHom ℝ)) i pole = _
  rw [← observedRows_cast observationBits scalarTables reconstructionQ]
  simp only [Matrix.map_apply, observedRows_pole, Rat.coe_castHom]

private theorem mulVec_pole {ι : Type*} [Fintype ι]
    (A : Matrix ι Head ℝ) (i : ι) :
    A.mulVec poleVector i = A i pole := by
  classical
  simp only [Matrix.mulVec, dotProduct]
  rw [Fintype.sum_sum_type]
  simp [poleVector, pole]

/-- The Gram part of the residual cost has the exact rational pole mass. -/
theorem observedGram_pole :
    quadratic
      (reconstructionGram
        (observedResidualRows observationBits scalarTables reconstruction))
      poleVector = (poleObservedEnergy : ℝ) := by
  rw [reconstructionGram_quadratic]
  simp_rw [mulVec_pole, observedResidualRows_pole]
  push_cast [poleObservedEnergy]

private theorem observationPrice_nonneg :
    0 ≤ residualObservationPrice observationBits scalarTables reconstruction := by
  unfold residualObservationPrice
  exact Finset.sum_nonneg (fun i _ =>
    Finset.sum_nonneg (fun j _ => sq_nonneg _))

private theorem remote_quadratic_nonneg :
    0 ≤ quadratic (completeRemoteMatrix 512 2048 8192 2 (1 / 8))
      (reconstruction.mulVec poleVector) := by
  have h := completeRemoteMatrix_posSemidef
    (M := 512) (L := 2048) (by decide) 8192 2 (1 / 8)
      (by norm_num) (by norm_num)
  simpa [quadratic] using
    h.dotProduct_mulVec_nonneg (reconstruction.mulVec poleVector)

/-- The complete paid residual is bounded below by its observed pole Gram.
The propagated observation error and complete remote matrix are retained and
used only through their proved nonnegativity. -/
theorem residualCost_pole_lower :
    ((((33 / 32 : ℚ) * poleObservedEnergy : ℚ)) : ℝ) ≤
      quadratic residualCost poleVector := by
  have hp := observationPrice_nonneg
  have hr := remote_quadratic_nonneg
  calc
    ((((33 / 32 : ℚ) * poleObservedEnergy : ℚ)) : ℝ) =
        (33 / 32 : ℝ) * (poleObservedEnergy : ℝ) := by norm_num
    _ ≤ (33 / 32 : ℝ) * (poleObservedEnergy : ℝ) +
          33 * (residualObservationPrice observationBits scalarTables reconstruction * 1) +
          quadratic (completeRemoteMatrix 512 2048 8192 2 (1 / 8))
            (reconstruction.mulVec poleVector) := by
      nlinarith
    _ = quadratic residualCost poleVector := by
      unfold residualCost
      rw [quadratic_paidResidualCost, observedGram_pole, poleVector_mass]
      norm_num

/-- Quantitative hostile direction for the head-only residual allowance. -/
theorem residualCost_pole_gt_seventeen_thousandths :
    (17 / 1000 : ℝ) < quadratic residualCost poleVector := by
  have hfinite :
      (17 / 1000 : ℝ) <
        ((((33 / 32 : ℚ) * poleObservedEnergy : ℚ)) : ℝ) := by
    exact_mod_cast paid_pole_energy_gt_seventeen_thousandths
  exact hfinite.trans_le residualCost_pole_lower

/-- No quantitative budget consumed by `stageLower_one_of_budget` exists for the
head-only reconstruction.

The structure does not declare either loss nonnegative.  Here nonnegativity of
the trial loss follows from the exact trial equality, while the pole test forces
the residual loss above `17/1000`; these derived facts contradict the stored
total payment inequality. -/
theorem no_headOnly_budget :
    ¬ Nonempty (Budget observationBits scalarTables reconstruction) := by
  rintro ⟨b⟩
  have htrial : 0 ≤ b.trialLoss := by
    have h := b.trialComparison poleVector
    rw [quadratic_trialUpper_eq_literalHead, headMass_poleVector] at h
    simpa only [sub_self, mul_one] using h
  have hresidual : (17 / 1000 : ℝ) < b.residualLoss := by
    have h := b.residualComparison poleVector
    rw [headMass_poleVector] at h
    simpa only [mul_one] using
      residualCost_pole_gt_seventeen_thousandths.trans_le h
  have htotal := b.total
  nlinarith

/-- Equivalent direct obstruction to every residual-slack supplier with enough
margin to spend the computed head floor. -/
theorem no_admissible_residualSlack :
    ¬ ∃ r : ℝ,
      (∀ v : Head → ℝ, 0 ≤ quadratic (residualSlack r) v) ∧
        5 * r ≤ (1 / 20 : ℝ) := by
  rintro ⟨r, hslack, htotal⟩
  exact no_headOnly_budget ⟨budgetOfResidualSlack r hslack htotal⟩

/-- In particular, the former `1/100` residual-slack target is impossible for
the exact head-only reconstruction. -/
theorem oneHundredth_residualSlack_not_nonnegative :
    ¬ ∀ v : Head → ℝ,
      0 ≤ quadratic (residualSlack (1 / 100 : ℝ)) v := by
  intro h
  exact no_admissible_residualSlack ⟨1 / 100, h, by norm_num⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHeadOnlyObstruction
