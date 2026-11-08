/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@bf343e1edff8dd4b0140baf6a6bbcda9bfe2a576.
Canonical workflow source: grwtsk/noeaaeue@
b9da9503cdd6e723dacd0dcb0de59fb3e633a567.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoLiteralHeadBudget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoDyadicReplay

/-!
# Exact head-only reconstruction for the radius-two Schur consumer

The existing radius-two source return is stated for a reconstruction

`X : Matrix Trial Head ℝ`

from the augmented 65-coordinate retained head into the augmented
513-coordinate trial.  Its premises separately ask that `X` reproduce every
retained physical coordinate and the pole, compare `trialUpper X` with the
literal bordered head, pay the complete observed and remote residual, and
supply the independent mode-64 high floor.

This module discharges the reconstruction and trial-comparison premises for the
canonical head-only choice.  It reuses `RadiusTwoDyadicReplay.extendMiddle` with
zero middle rows and dyadic exponent zero.  Thus the first 64 physical
coordinates and the pole are copied exactly, while modes 65 through 512 are
zero.  The existing exact overlap decomposition then proves

`quadratic (trialUpper reconstruction) v =
  quadratic RadiusTwoLiteralHeadCertificate.literalHead v`.

No source sign is inferred from this identity.  The head-only trial leaves the
complete residual uncompensated.  `residualCost` retains every observed row,
the propagated observation error, and the complete projected remote allowance.
The exact remaining finite sign is exposed as nonnegativity of

`residualSlack r = r • I - residualCost`.

A slack sign at rate `r`, together with `5 * r ≤ 1/20`, returns through the
repository-computed literal-head floor and the existing physical high-floor
normalization `1/5` to `OddLiteralCofinal.StageLower 1`.

The proof is a source-preserving typed adapter.  It is not independent of the
trial-overlap identity, the computed head LDL, or the whole-window Schur return.
It does not construct a residual-slack sign, the mode-64 high floor, any other
cofinal stage, RH, or Dirichlet GRH.  A hostile boundary is immediate: exact
head reconstruction does not imply that the omitted middle and remote
coordinates cost at most the available `1/20` margin.
-/

set_option autoImplicit false
noncomputable section

open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHeadOnlyReconstruction

open RadiusTwoCandidateEntries RadiusTwoCandidateBounds
open RadiusTwoTrialProjection RadiusTwoStageReturn
open RadiusTwoLiteralHeadCertificate RadiusTwoLiteralHeadReturn
open RadiusTwoLiteralHeadBudget RadiusTwoDyadicReplay
open GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- No correction is placed in physical modes 65 through 512. -/
def zeroMiddle : Matrix (Fin 448) Head ℤ := 0

/-- Exact rational head-only reconstruction, on dyadic grid `2^0`. -/
def reconstructionQ : Matrix Trial Head ℚ :=
  (extendMiddle 0 zeroMiddle).map (dyadic 0)

/-- Real reconstruction consumed by the literal radius-two Schur return. -/
def reconstruction : Matrix Trial Head ℝ :=
  reconstructionQ.map (Rat.castHom ℝ)

/-- Every retained physical coordinate and the pole are copied exactly. -/
theorem reconstruction_head (v : Head → ℝ) (i : Head) :
    reconstruction.mulVec v (headSlot i) = v i := by
  simpa only [reconstruction, reconstructionQ] using
    (extendMiddle_preservesHead 0 zeroMiddle v i)

/-- Exact physical-coordinate form expected by `stageLower_one_of_paidLower`. -/
theorem reconstruction_physical (v : Head → ℝ) (i : Fin 64) :
    reconstruction.mulVec v
        (.inl (Fin.castLE (by decide : 64 ≤ 512) i)) =
      v (.inl i) := by
  have hcast :
      Fin.castLE (by decide : 64 ≤ 512) i = Fin.castAdd 448 i := by
    apply Fin.ext
    rfl
  rw [hcast]
  simpa only [headSlot] using (reconstruction_head v (.inl i))

/-- Exact pole-coordinate form expected by `stageLower_one_of_paidLower`. -/
theorem reconstruction_pole (v : Head → ℝ) :
    reconstruction.mulVec v (.inr ()) = v (.inr ()) := by
  simpa only [headSlot] using (reconstruction_head v (.inr ()))

private theorem zeroMiddle_overlap_entry (k : Fin 448) (j : Head) :
    extendMiddle 0 zeroMiddle (overlapSlot k) j = 0 := by
  have hnot : ¬ (Fin.natAdd 64 k).val < 64 := by
    simp only [Fin.val_natAdd]
    omega
  simp [extendMiddle, overlapSlot, zeroMiddle, hnot]

/-- Every added middle coordinate of the head-only reconstruction is zero. -/
theorem reconstruction_overlap_entry (k : Fin 448) (j : Head) :
    reconstruction (overlapSlot k) j = 0 := by
  simp [reconstruction, reconstructionQ, zeroMiddle_overlap_entry, dyadic]

/-- The reconstructed trial vector vanishes on modes 65 through 512. -/
theorem reconstruction_overlap_zero (v : Head → ℝ) (k : Fin 448) :
    reconstruction.mulVec v (overlapSlot k) = 0 := by
  simp [Matrix.mulVec, dotProduct, reconstruction_overlap_entry]

/-- Any exact-head reconstruction with zero overlap coordinates has exactly the
literal 65-coordinate trial quadratic. -/
theorem quadratic_trialUpper_eq_literalHead_of_overlap_zero
    (X : Matrix Trial Head ℝ)
    (hhead : ∀ (v : Head → ℝ) (i : Head),
      X.mulVec v (headSlot i) = v i)
    (hoverlap : ∀ (v : Head → ℝ) (k : Fin 448),
      X.mulVec v (overlapSlot k) = 0)
    (v : Head → ℝ) :
    quadratic (trialUpper X) v =
      quadratic RadiusTwoLiteralHeadCertificate.literalHead v := by
  have h := quadratic_trialUpper_eq_overlap X v (hhead v)
  dsimp only at h
  simpa only [hoverlap v, zero_mul, Finset.sum_zero, zero_add, add_zero] using h

/-- The canonical head-only reconstruction has zero trial loss. -/
theorem quadratic_trialUpper_eq_literalHead (v : Head → ℝ) :
    quadratic (trialUpper reconstruction) v =
      quadratic RadiusTwoLiteralHeadCertificate.literalHead v :=
  quadratic_trialUpper_eq_literalHead_of_overlap_zero reconstruction
    reconstruction_head reconstruction_overlap_zero v

/-- Repository observation precision used by the computed literal-head packet. -/
def observationBits : ℕ := 40

/-- Repository gamma-series depth used by the computed literal-head packet. -/
def gammaTerms : ℕ := 2048

/-- Source-valid scalar tables on the same radius-two observation recipe. -/
def scalarTables : ScalarTables :=
  tables observationBits gammaTerms

theorem scalarTables_sound : scalarTables.Sound := by
  exact tables_sound observationBits (K := gammaTerms)
    (by norm_num [gammaTerms])

/-- Complete residual numerator for the exact head-only reconstruction. -/
def residualCost : Matrix Head Head ℝ :=
  paidResidualCost observationBits scalarTables reconstruction

/-- Finite residual upper-sign target at allowance `r`. -/
def residualSlack (r : ℝ) : Matrix Head Head ℝ :=
  r • 1 - residualCost

theorem quadratic_residualSlack (r : ℝ) (v : Head → ℝ) :
    quadratic (residualSlack r) v =
      r * headMass v - quadratic residualCost v := by
  have hmass :
      quadratic (1 : Matrix Head Head ℝ) v = headMass v := by
    simp only [quadratic, Matrix.one_mulVec, dotProduct, headMass, pow_two]
  simp only [residualSlack, quadratic, Matrix.sub_mulVec,
    Matrix.smul_mulVec, Matrix.one_mulVec, dotProduct_sub,
    dotProduct_smul, smul_eq_mul, hmass]

/-- The residual upper bound is exactly a finite lower sign on the same
augmented head carrier. -/
theorem residualComparison_iff_slack_nonnegative (r : ℝ) :
    (∀ v : Head → ℝ,
      quadratic residualCost v ≤ r * headMass v) ↔
    (∀ v : Head → ℝ,
      0 ≤ quadratic (residualSlack r) v) := by
  constructor
  · intro h v
    rw [quadratic_residualSlack]
    exact sub_nonneg.mpr (h v)
  · intro h v
    have hv := h v
    rw [quadratic_residualSlack] at hv
    exact sub_nonneg.mp hv

/-- Construct the stage-one split budget from a passing residual-slack sign.
The trial-loss field is proved to be exactly zero rather than assumed. -/
def budgetOfResidualSlack (r : ℝ)
    (hslack : ∀ v : Head → ℝ,
      0 ≤ quadratic (residualSlack r) v)
    (htotal : 5 * r ≤ (1 / 20 : ℝ)) :
    Budget observationBits scalarTables reconstruction where
  trialLoss := 0
  residualLoss := r
  trialComparison := by
    intro v
    rw [quadratic_trialUpper_eq_literalHead]
    simp
  residualComparison :=
    (residualComparison_iff_slack_nonnegative r).2 hslack
  total := by
    simpa only [zero_add] using htotal

/-- Exact stage-one return from the finite residual-slack sign and the
independent mode-64 high floor. -/
theorem stageLower_one_of_residualSlack
    (r : ℝ)
    (hslack : ∀ v : Head → ℝ,
      0 ≤ quadratic (residualSlack r) v)
    (htotal : 5 * r ≤ (1 / 20 : ℝ))
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64) :
    OddLiteralCofinal.StageLower 1 := by
  exact stageLower_one_of_budget observationBits scalarTables_sound
    reconstruction reconstruction_physical reconstruction_pole hfloor
    (budgetOfResidualSlack r hslack htotal)

/-- The former `1/100` allocation is now one explicit finite sign target,
with no separate reconstruction or trial-comparison premise. -/
theorem stageLower_one_of_oneHundredthResidualSlack
    (hslack : ∀ v : Head → ℝ,
      0 ≤ quadratic (residualSlack (1 / 100 : ℝ)) v)
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64) :
    OddLiteralCofinal.StageLower 1 := by
  exact stageLower_one_of_residualSlack (1 / 100) hslack
    (by norm_num) hfloor

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHeadOnlyReconstruction
