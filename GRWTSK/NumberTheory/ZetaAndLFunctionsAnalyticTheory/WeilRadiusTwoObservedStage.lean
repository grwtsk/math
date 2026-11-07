/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoObservedResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoStageReturn

/-!
# Radius-two stage return from observed entry enclosures

An entrywise enclosure of the literal rectangular residual matrix pays
its propagated reconstruction error. Young's inequality combines that
error with the observed Gram. The complete remote quadratic keeps the
signed mixed term and infinite remainder. The finite paid matrix uses
these same three charges and the literal shifted trial upper form.

The literal Schur return then supplies stage one after minimizing the
scalar pole. The reconstruction must preserve the head and pole, the
actual high-complement floor must be proved, and the finite paid matrix
must have nonnegative quadratic form. These remain explicit premises.
The checked frozen-grid decoder supplies the entry enclosures directly.
Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoObservedStage

open Matrix
open RadiusTwoCandidateEntries RadiusTwoObservedResidual
open RadiusTwoStageReturn (trialUpper)
open OddInclusionWindow OddLiteralWindow OddWindowLowerAssembly
open OddSchurAccounting OddBorderedFiniteReturn OddRemoteAllowanceMatrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.LinearAlgebra.SchurObserver

/-- The lower matrix for the radius-two candidate, with the observed
error split `1/32`, the remote split `1/8` and the floor price `1/5`. -/
def paidLower (centres radii : Matrix ResidualRows Trial ℝ) (X : Matrix Trial Head ℝ) :
    Matrix Head Head ℝ :=
  assembleLowerMatrix (trialUpper X) (reconstructionGram (centres * X))
    ((1 + (1 / 32 : ℝ)⁻¹) • (observationPrice radii X • 1) +
      congruence X (completeRemoteMatrix 512 2048 8192 2 (1 / 8)))
    0 (1 / 5) (1 + 1 / 32)

/-- Canonical scalar-table observations recover the same paid lower matrix. -/
theorem paidLower_of_tables (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℝ) :
    paidLower ((residualCenters bits t).map ((↑) : ℚ → ℝ))
      ((residualRadii bits t).map ((↑) : ℚ → ℝ)) X =
      RadiusTwoStageReturn.paidLower bits t X :=
  rfl

/-- The finite comparison charges the same observed, error and remote
terms as the whole-residual bound. -/
theorem quadratic_paidLower (centres radii : Matrix ResidualRows Trial ℝ) (X : Matrix Trial Head ℝ)
    (v : Head → ℝ) :
    quadratic (paidLower centres radii X) v = quadratic (trialUpper X) v -
      ((1 + 1 / 32) * quadratic (reconstructionGram (centres * X)) v +
        (1 + (1 / 32 : ℝ)⁻¹) * (observationPrice radii X * ∑ i, (v i) ^ 2) +
        quadratic (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) (X.mulVec v)) / (1 / 5) := by
  have hmass : quadratic (1 : Matrix Head Head ℝ) v = ∑ i, (v i) ^ 2 := by
    simp only [quadratic, Matrix.one_mulVec, dotProduct, pow_two]
  simp only [paidLower, quadratic_assembleLowerMatrix, quadratic_add, quadratic_smul,
    quadratic_congruence, hmass, zero_mul, sub_zero, add_assoc]

/-- A matching reconstruction, the actual whole high floor and the finite
paid lower sign imply the literal radius-two stage. -/
theorem stageLower_one_of_paidLower (centres radii : Matrix ResidualRows Trial ℝ)
    (hEntry : ∀ i j, |OddTrialResidualMatrix.literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i j -
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
    (trialUpper X) (observationPrice radii X • 1)
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
    have herror := OddTrialResidualMatrix.literalTrialResidualErrorSq_reconstruction_le
      2 (-1/2) (N := 64) (M := 512) (L := 2048) X (centres * X)
      (radii * Matrix.of (fun k l => |X k l|)) (head u a)
      (OddTrialResidualMatrix.literalTrialResidual_mul_entry_radius 2 (-1/2)
        X centres radii hEntry)
    dsimp only
    rw [quadratic_smul]
    simpa only [trial, head, hpole, Sum.elim_inr, observationPrice,
      quadratic, Matrix.one_mulVec, dotProduct, pow_two] using herror
  · intro u a
    rw [quadratic_congruence, ← hvec u a,
      quadratic_completeRemoteMatrix 2048 8192 2 (1 / 8) (trial u a)
        (fun i : Fin 512 => trial u a (i.val + 1)) a (fun _ => rfl)]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoObservedStage
