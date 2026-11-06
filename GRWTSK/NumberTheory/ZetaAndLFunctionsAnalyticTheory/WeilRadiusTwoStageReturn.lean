/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralCofinal

/-!
# Conditional whole-window return at radius two

The finite trial and the complete remote allowance use the same
congruence by the reconstruction. The observed residual Gram pays
every row through 2048, including the physical overlap shift, and the
identity matrix charges the propagated observation error. The source
return uses the existing literal Schur theorem and minimizes the scalar
pole. At radius two and shift `-1/2` it gives the cofinal predicate at
index one, conditional on the whole high floor and the finite lower
sign. Independent analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoStageReturn

open Matrix
open RadiusTwoCandidateEntries RadiusTwoCandidateResidual
open OddInclusionWindow OddLiteralWindow OddWindowLowerAssembly
open OddSchurAccounting OddBorderedFiniteReturn OddRemoteAllowanceMatrix
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.FiniteLowerAssembly
open GRWTSK.LinearAlgebra.SchurObserver

/-- The exact finite trial form at the physical shift `-1/2`. -/
def trialUpper (X : Matrix Trial Head ℝ) : Matrix Head Head ℝ :=
  congruence X (shiftedBlock (borderedSourceMatrix 2 512) poleShiftMetric (-1 / 2))

/-- The lower matrix for the radius-two candidate, with the observed
error split `1/32`, the remote split `1/8` and the floor price `1/5`. -/
def paidLower (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℝ) : Matrix Head Head ℝ :=
  assembleLowerMatrix (trialUpper X) (reconstructionGram (observedResidualRows bits t X))
    ((1 + (1 / 32 : ℝ)⁻¹) • (residualObservationPrice bits t X • 1) +
      congruence X (completeRemoteMatrix 512 2048 8192 2 (1 / 8)))
    0 (1 / 5) (1 + 1 / 32)

/-- The finite comparison charges the same observed, error and remote
terms as the whole-residual bound. -/
theorem quadratic_paidLower (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℝ)
    (v : Head → ℝ) :
    quadratic (paidLower bits t X) v = quadratic (trialUpper X) v -
      ((1 + 1 / 32) * quadratic (reconstructionGram (observedResidualRows bits t X)) v +
        (1 + (1 / 32 : ℝ)⁻¹) * (residualObservationPrice bits t X * ∑ i, (v i) ^ 2) +
        quadratic (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) (X.mulVec v)) / (1 / 5) := by
  have hmass : quadratic (1 : Matrix Head Head ℝ) v = ∑ i, (v i) ^ 2 := by
    simp only [quadratic, Matrix.one_mulVec, dotProduct, pow_two]
  simp only [paidLower, quadratic_assembleLowerMatrix, quadratic_add, quadratic_smul,
    quadratic_congruence, hmass, zero_mul, sub_zero, add_assoc]

/-- A matching reconstruction, the actual whole high floor and the finite
paid lower sign imply the literal radius-two stage. -/
theorem stageLower_one_of_paidLower (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (X : Matrix Trial Head ℝ)
    (hhead : ∀ (v : Head → ℝ) (i : Fin 64),
      X.mulVec v (.inl (Fin.castLE (by decide : 64 ≤ 512) i)) = v (.inl i))
    (hpole : ∀ v : Head → ℝ, X.mulVec v (.inr ()) = v (.inr ()))
    (hfloor : HighFloor 2 (-1 / 2) (1 / 5) 64)
    (hpositive : ∀ v : Head → ℝ, 0 ≤ quadratic (paidLower bits t X) v) :
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
    (trialUpper X) (residualObservationPrice bits t X • 1)
    (congruence X (completeRemoteMatrix 512 2048 8192 2 (1 / 8)))
    (observedResidualRows bits t X) ?_ ?_ ?_ hpositive hf hfm hfo hfs henergy
  · intro u a i
    exact (inclusionTrial_succ _ (Fin.castLE (by decide : 64 ≤ 512) i)).trans
      (hhead (head u a) i)
  · intro u a
    dsimp only
    rw [shiftedOddBorderedEnergy_finiteSine_eq_quadratic 2 (by norm_num), hvec,
      trialUpper, quadratic_congruence, sub_self, abs_zero, zero_mul]
  · intro u a
    have herror := residualReconstructionErrorSq_le bits ht X (head u a)
    dsimp only
    rw [quadratic_smul]
    simpa only [trial, head, hpole, Sum.elim_inr, observedResidualRows, residualObservationPrice,
      quadratic, Matrix.one_mulVec, dotProduct, pow_two] using herror
  · intro u a
    rw [quadratic_congruence, ← hvec u a,
      quadratic_completeRemoteMatrix 2048 8192 2 (1 / 8) (trial u a)
        (fun i : Fin 512 => trial u a (i.val + 1)) a (fun _ => rfl)]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoStageReturn
