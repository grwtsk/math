/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.EntrywiseResidualMajorant
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoObservedStage

/-!
# Radius-two residuals with a diagonal error charge

Propagate the literal rectangular entry radii through the absolute
reconstruction. Weighted Cauchy--Schwarz gives a separate error price
for each retained head coordinate. Young's inequality and the existing
complete remote comparison then give the whole squared residual bound.
The paid lower matrix uses exactly this diagonal charge and has the
literal stage return as its consumer.

The physical shift is `-1/2`, the retained head is 64 modes, and the
trial/observation/remote cutoffs are 512/2048/8192. The scalar pole and
the signed remote mixed term retain their existing definitions. The
full literal entry comparison, matching reconstruction, actual `1/5`
high floor and paid lower sign remain explicit hypotheses. No concrete
radius packet, universal family or high floor is certified here.

This route and the Frobenius route share the same source comparisons
and remote theorem. Weighted Cauchy--Schwarz preserves coordinate
dependence but is not uniformly sharper. There is no new analytic
independence or novelty claim; independent analytic review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDiagonalResidual

open Matrix
open RadiusTwoCandidateEntries RadiusTwoObservedResidual
open RadiusTwoStageReturn (trialUpper)
open OddTrialResidualMatrix OddResidualSourceComparison OddInclusionWindow
open OddLiteralWindow OddWindowLowerAssembly OddSchurAccounting
open OddBorderedFiniteReturn OddRemoteAllowanceMatrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.Algebra.LinearAlgebra.EntrywiseResidualMajorant
open GRWTSK.LinearAlgebra.SchurObserver

/-- Each retained coordinate pays its propagated radius against the
sum of all propagated radii in the same observed row. -/
def observationCharge (radii : Matrix ResidualRows Trial ℝ) (X : Matrix Trial Head ℝ) :
    Matrix Head Head ℝ :=
  diagonalCharge (radii * Matrix.of (fun k l => |X k l|))

/-- All finite literal readout errors fit the diagonal charge. -/
theorem errorSq_le (centres radii : Matrix ResidualRows Trial ℝ)
    (hEntry : ∀ i j, |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i j -
      centres i j| ≤ radii i j)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) :
    (∑ i : ResidualRows,
      (literalAugmentedRow 512 2 (inclusionTrial (X.mulVec v ∘ Sum.inl))
        (X.mulVec v (Sum.inr ())) (-1/2) (65+i.val) - (centres * X).mulVec v i)^2) ≤
      quadratic (observationCharge radii X) v := by
  simpa only [← Matrix.mulVec_mulVec, literalTrialResidualMatrix_mulVec,
    observationCharge] using
    errorSq_le_quadratic (literalTrialResidualMatrix 2 (-1/2) 64 512 2048 * X)
      (centres * X) (radii * Matrix.of (fun k l => |X k l|)) v
      (literalTrialResidual_mul_entry_radius 2 (-1/2) X centres radii hEntry)

/-- The diagonal finite charge and the complete remote quadratic bound
the full residual from mode 65 onward. -/
theorem wholeResidual_bound (centres radii : Matrix ResidualRows Trial ℝ)
    (hEntry : ∀ i j, |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i j -
      centres i j| ≤ radii i j)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) (η : ℝ) (hη : 0 < η) :
    let x := inclusionTrial (X.mulVec v ∘ Sum.inl)
    let a := X.mulVec v (Sum.inr ())
    Summable (fun n : ℕ => (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ∧
      (∑' n : ℕ, (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ≤
        (1+η) * quadratic (reconstructionGram (centres * X)) v +
          (1+η⁻¹) * quadratic (observationCharge radii X) v +
          quadratic (completeRemoteMatrix 512 2048 8192 2 (1/8)) (X.mulVec v) := by
  dsimp only
  let u := X.mulVec v ∘ Sum.inl
  let a := X.mulVec v (Sum.inr ())
  have hVec : Sum.elim u (fun _ : Unit => a) = X.mulVec v := by
    funext j
    rcases j with i | ⟨⟩ <;> rfl
  have hRemote := quadratic_completeRemoteMatrix 2048 8192 2 (1/8)
    (inclusionTrial u) u a (inclusionTrial_succ u)
  rw [hVec] at hRemote
  have hFinite := finiteResidualSquares_le_of_error (N := 64) (M := 512) (L := 2048)
    2 (inclusionTrial u) a (-1/2) η (quadratic (observationCharge radii X) v)
    hη ((centres * X).mulVec v) (errorSq_le centres radii hEntry X v)
  obtain ⟨hSummable, hBound⟩ := literalAugmentedRow_high_bound
    (N := 64) (M := 512) (L := 2048) (J := 8192) (by decide) (by decide) (by decide) (by decide)
    2 (by norm_num) (inclusionTrial u) a (-1/2) (1/8) (by norm_num)
  refine ⟨hSummable, hBound.trans ?_⟩
  rw [← hRemote, reconstructionGram_quadratic]
  exact add_le_add hFinite le_rfl

/-- The literal trial upper minus the observed, diagonal-error and
remote charges at high floor `1/5`. -/
def paidLower (centres radii : Matrix ResidualRows Trial ℝ) (X : Matrix Trial Head ℝ) :
    Matrix Head Head ℝ :=
  assembleLowerMatrix (trialUpper X) (reconstructionGram (centres * X))
    ((1 + (1 / 32 : ℝ)⁻¹) • observationCharge radii X +
      congruence X (completeRemoteMatrix 512 2048 8192 2 (1 / 8)))
    0 (1 / 5) (1 + 1 / 32)

theorem quadratic_paidLower (centres radii : Matrix ResidualRows Trial ℝ)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) :
    quadratic (paidLower centres radii X) v = quadratic (trialUpper X) v -
      ((1 + 1 / 32) * quadratic (reconstructionGram (centres * X)) v +
        (1 + (1 / 32 : ℝ)⁻¹) * quadratic (observationCharge radii X) v +
        quadratic (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) (X.mulVec v)) / (1 / 5) := by
  simp only [paidLower, quadratic_assembleLowerMatrix, quadratic_add, quadratic_smul,
    quadratic_congruence, zero_mul, sub_zero, add_assoc]

/-- The diagonal-error paid sign, matching reconstruction and actual
whole high floor return the radius-two literal odd stage. -/
theorem stageLower_one_of_paidLower (centres radii : Matrix ResidualRows Trial ℝ)
    (hEntry : ∀ i j, |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i j -
      centres i j| ≤ radii i j)
    (X : Matrix Trial Head ℝ)
    (hhead : ∀ (v : Head → ℝ) (i : Fin 64),
      X.mulVec v (.inl (Fin.castLE (by decide : 64 ≤ 512) i)) = v (.inl i))
    (hpole : ∀ v : Head → ℝ, X.mulVec v (.inr ()) = v (.inr ()))
    (hfloor : HighFloor 2 (-1 / 2) (1 / 5) 64)
    (hpositive : ∀ v : Head → ℝ, 0 ≤ quadratic (paidLower centres radii X) v) :
    OddLiteralCofinal.StageLower 1 := by
  let head (u : Fin 64 → ℝ) (a : ℝ) : Head → ℝ := Sum.elim u (fun _ => a)
  let trial (u : Fin 64 → ℝ) (a : ℝ) : ℕ → ℝ :=
    inclusionTrial (X.mulVec (head u a) ∘ Sum.inl)
  have hvec (u : Fin 64 → ℝ) (a : ℝ) :
      Sum.elim (fun i : Fin 512 => trial u a (i.val + 1)) (fun _ : Unit => a) =
        X.mulVec (head u a) := by
    funext j
    rcases j with i | ⟨⟩
    · exact inclusionTrial_succ _ i
    · exact (hpole (head u a)).symm
  intro f hf hfm hfo hfs henergy
  rw [Nat.cast_one, show (1 : ℝ) + 1 = 2 by norm_num] at hfs ⊢
  rw [pow_one, ← neg_div]
  refine shiftedOddWeilEnergy_nonneg_of_assembledLower (N := 64) (M := 512)
    (L := 2048) (J := 8192) (by decide) (by decide) (by decide) (by decide)
    2 (by norm_num) (-1 / 2) (1 / 8) (1 / 5) (1 / 32) 0
    (by norm_num) (by norm_num) (by norm_num) hfloor trial ?_
    (trialUpper X) (observationCharge radii X)
    (congruence X (completeRemoteMatrix 512 2048 8192 2 (1 / 8)))
    (centres * X) ?_ ?_ ?_ hpositive hf hfm hfo hfs henergy
  · intro u a i
    exact (inclusionTrial_succ _ (Fin.castLE (by decide : 64 ≤ 512) i)).trans
      (hhead (head u a) i)
  · intro u a
    dsimp only
    rw [shiftedOddBorderedEnergy_finiteSine_eq_quadratic 2 (by norm_num), hvec,
      trialUpper, quadratic_congruence, sub_self, abs_zero, zero_mul]
  · intro u a
    simpa only [trial, head, hpole, Sum.elim_inr] using
      errorSq_le centres radii hEntry X (head u a)
  · intro u a
    rw [quadratic_congruence, ← hvec u a,
      quadratic_completeRemoteMatrix 2048 8192 2 (1 / 8) (trial u a)
        (fun i : Fin 512 => trial u a (i.val + 1)) a (fun _ => rfl)]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoDiagonalResidual
