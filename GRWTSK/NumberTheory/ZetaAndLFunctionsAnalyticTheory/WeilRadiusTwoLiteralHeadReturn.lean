/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

Source base: grwtsk/math@99260df2d2f9e248526532f52a0ab91c76b38fff.
Canonical workflow source: grwtsk/noeaaeue@
f0ffcbe416d7059429272602446e925a5546aff8.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoLiteralHeadCertificate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoStageReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoTrialProjection

/-!
# Return the literal radius-two head certificate through the paid residual

The existing literal-head certificate supplies the exact lower floor

`(1 / 20) * ‖v‖² ≤ quadratic literalHead v`

on the unchanged carrier `Fin 64 ⊕ Unit`.  The whole-window Schur return,
however, consumes the reconstructed trial upper after paying all observed,
observation-error and remote residual terms through the proved high floor
`1 / 5`.

This module exposes that missing typed port without hiding either premise.
`paidResidualCost` is exactly the numerator already present in
`RadiusTwoStageReturn.quadratic_paidLower`.  If a reconstruction has trial
quadratic at least the literal head and its complete paid residual is at most
`1 / 100` of the retained augmented head mass, then division by the high
floor multiplies
that residual by five, using exactly the available `1 / 20` head margin.
The existing whole-window theorem then returns `OddLiteralCofinal.StageLower 1`.

The comparison between `literalHead` and `trialUpper X`, the residual budget,
the scalar-table soundness and the high-complement floor remain separate
premises.  A positive finite head by itself does not control the mixed or
remote blocks.  Conversely, a residual estimate without the literal source
enclosures does not establish the head sign.  No concrete packet, high floor,
cofinal family, RH or Dirichlet GRH is asserted here.

The proof is the direct Schur arithmetic route.  It is not independent of the
existing stage-return theorem or the literal-head LDL argument.  A hostile
boundary is immediate: replacing `1 / 100` by a larger unproved allowance can
consume the whole `1 / 20` head floor, and dropping the trial comparison permits
an arbitrary reconstructed low block.
-/

set_option autoImplicit false
noncomputable section

open Matrix
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoLiteralHeadReturn

open RadiusTwoCandidateEntries RadiusTwoCandidateResidual
open RadiusTwoStageReturn RadiusTwoTrialProjection
open OddRemoteAllowanceMatrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.LinearAlgebra.SchurObserver

/-- The complete residual numerator already charged by the radius-two Schur
return.  It retains every observed row, the propagated observation error and
the complete projected remote allowance. -/
def paidResidualCost (bits : ℕ) (t : ScalarTables)
    (X : Matrix Trial Head ℝ) : Matrix Head Head ℝ :=
  (1 + (1 / 32 : ℝ)) •
      reconstructionGram (observedResidualRows bits t X) +
    (1 + (1 / 32 : ℝ)⁻¹) •
      (residualObservationPrice bits t X • 1) +
    congruence X (completeRemoteMatrix 512 2048 8192 2 (1 / 8))

theorem quadratic_paidResidualCost (bits : ℕ) (t : ScalarTables)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) :
    quadratic (paidResidualCost bits t X) v =
      (1 + (1 / 32 : ℝ)) *
          quadratic (reconstructionGram (observedResidualRows bits t X)) v +
        (1 + (1 / 32 : ℝ)⁻¹) *
          (residualObservationPrice bits t X * ∑ i, (v i) ^ 2) +
        quadratic (completeRemoteMatrix 512 2048 8192 2 (1 / 8))
          (X.mulVec v) := by
  have hmass : quadratic (1 : Matrix Head Head ℝ) v = ∑ i, (v i) ^ 2 := by
    simp only [quadratic, Matrix.one_mulVec, dotProduct, pow_two]
  simp only [paidResidualCost, quadratic_add, quadratic_smul,
    quadratic_congruence, hmass]

/-- The existing paid lower matrix is the reconstructed trial upper minus the
complete residual cost divided by the independently proved high floor. -/
theorem quadratic_paidLower_eq_trial_sub_cost (bits : ℕ)
    (t : ScalarTables) (X : Matrix Trial Head ℝ) (v : Head → ℝ) :
    quadratic (paidLower bits t X) v =
      quadratic (trialUpper X) v -
        quadratic (paidResidualCost bits t X) v / (1 / 5 : ℝ) := by
  rw [quadratic_paidLower, quadratic_paidResidualCost]

theorem one_hundredth_over_one_fifth :
    (1 / 100 : ℝ) / (1 / 5 : ℝ) = 1 / 20 := by
  norm_num

/-- A source-valid literal-head packet and a fully paid `1 / 100` residual
budget make the existing radius-two paid lower matrix nonnegative.

`htrial` is a genuine source-comparison premise: it must compare the actual
reconstructed trial quadratic with the exact literal 64-mode bordered source.
It is not inferred from carrier dimensions or matching coordinate labels. -/
theorem paidLower_nonnegative_of_literalHead
    (p : RadiusTwoLiteralHeadCertificate.Data)
    (ha : RadiusTwoLiteralHeadCertificate.Accepted p)
    (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℝ)
    (htrial : ∀ v : Head → ℝ,
      quadratic RadiusTwoLiteralHeadCertificate.literalHead v ≤
        quadratic (trialUpper X) v)
    (hcost : ∀ v : Head → ℝ,
      quadratic (paidResidualCost bits t X) v ≤
        (1 / 100 : ℝ) * ∑ i, (v i) ^ 2)
    (v : Head → ℝ) :
    0 ≤ quadratic (paidLower bits t X) v := by
  have hhead :=
    RadiusTwoLiteralHeadCertificate.literal_head_ge_one_twentieth p ha v
  have hcost' :
      quadratic (paidResidualCost bits t X) v / (1 / 5 : ℝ) ≤
        (1 / 20 : ℝ) * ∑ i, (v i) ^ 2 := by
    calc
      quadratic (paidResidualCost bits t X) v / (1 / 5 : ℝ) =
          5 * quadratic (paidResidualCost bits t X) v := by ring
      _ ≤ 5 * ((1 / 100 : ℝ) * ∑ i, (v i) ^ 2) := by
        exact mul_le_mul_of_nonneg_left (hcost v) (by norm_num)
      _ = (1 / 20 : ℝ) * ∑ i, (v i) ^ 2 := by ring
  rw [quadratic_paidLower_eq_trial_sub_cost]
  exact sub_nonneg.mpr (hcost'.trans (hhead.trans (htrial v)))

/-- Exact return to the cofinal stage-one proposition.

All source, reconstruction, residual and high-complement obligations remain
visible.  In particular this theorem does not construct the literal-head
packet, the trial comparison, the `1 / 100` residual bound or the `1 / 5`
high floor. -/
theorem stageLower_one_of_literalHead
    (p : RadiusTwoLiteralHeadCertificate.Data)
    (ha : RadiusTwoLiteralHeadCertificate.Accepted p)
    (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (X : Matrix Trial Head ℝ)
    (hhead : ∀ (v : Head → ℝ) (i : Fin 64),
      X.mulVec v (.inl (Fin.castLE (by decide : 64 ≤ 512) i)) =
        v (.inl i))
    (hpole : ∀ v : Head → ℝ, X.mulVec v (.inr ()) = v (.inr ()))
    (hfloor : OddLiteralWindow.HighFloor 2 (-1 / 2) (1 / 5) 64)
    (htrial : ∀ v : Head → ℝ,
      quadratic RadiusTwoLiteralHeadCertificate.literalHead v ≤
        quadratic (trialUpper X) v)
    (hcost : ∀ v : Head → ℝ,
      quadratic (paidResidualCost bits t X) v ≤
        (1 / 100 : ℝ) * ∑ i, (v i) ^ 2) :
    OddLiteralCofinal.StageLower 1 := by
  apply stageLower_one_of_paidLower bits ht X hhead hpole hfloor
  intro v
  exact paidLower_nonnegative_of_literalHead p ha bits t X htrial hcost v

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoLiteralHeadReturn
