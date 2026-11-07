/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPhysicalGrid

/-!
# Whole radius-two residual bound from entry enclosures

The centre matrix is multiplied by the reconstruction. Entry radii
are multiplied by its entrywise absolute value. The sum of their
squares bounds the error on every retained head vector. The complete
remote quadratic then covers the modes after the last observed row.
This version accepts the observed arrays through their literal entry
comparisons. It preserves the shift on the trial-overlap diagonal
and the signed pole through the literal matrix.

The full entry comparison is a premise. This theorem concerns the
residual bound and leaves the high-complement floor and the lower
sign to their separate checks. Independent mathematical review is
pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoObservedResidual

open Matrix
open RadiusTwoCandidateEntries OddTrialResidualMatrix OddResidualSourceComparison
open OddInclusionWindow OddRemoteAllowanceMatrix OddWindowLowerAssembly
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver
open RadiusTwoPhysicalGrid (trialSlot)

private def column : Trial → Fin 513
  | .inl j => Fin.castLE (by decide) j
  | .inr () => 512

private theorem trialSlot_column (j : Trial) : trialSlot (column j) = j := by
  rcases j with j | ⟨⟩
  · simp [trialSlot, column, j.isLt]
  · rfl

/-- Decode a frozen centre or radius matrix, keeping the last stored lane
as the scalar pole. -/
def decodeGrid (digits : Matrix ResidualRows (Fin 513) ℤ) :
    Matrix ResidualRows Trial ℝ :=
  fun i j => (digits i (column j) : ℝ)/2^45

/-- An entry check on the stored lanes gives the literal entry enclosure
on the physical trial and pole coordinates. -/
theorem entryEnclosures_of_grid
    (centres radii : Matrix ResidualRows (Fin 513) ℤ) (i : ResidualRows)
    (checked : ∀ j, |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i (trialSlot j) -
      (centres i j : ℝ)/2^45| ≤ (radii i j : ℝ)/2^45) :
    ∀ j, |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i j -
      decodeGrid centres i j| ≤ decodeGrid radii i j := by
  intro j
  simpa only [decodeGrid, trialSlot_column] using checked (column j)

/-- Squared propagated entry radii in the retained head coordinates. -/
def observationPrice (radii : Matrix ResidualRows Trial ℝ) (X : Matrix Trial Head ℝ) : ℝ :=
  ∑ i : ResidualRows, ∑ j : Head, ((radii * Matrix.of (fun k l => |X k l|)) i j)^2

/-- The whole literal residual is bounded by the observed Gram, the
propagated finite error, and the exact complete remote quadratic. -/
theorem wholeResidual_bound_of_entries
    (centres radii : Matrix ResidualRows Trial ℝ)
    (hEntry : ∀ i j, |literalTrialResidualMatrix 2 (-1/2) 64 512 2048 i j - centres i j| ≤
      radii i j)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) (η : ℝ) (hη : 0 < η) :
    let x := inclusionTrial (X.mulVec v ∘ Sum.inl)
    let a := X.mulVec v (Sum.inr ())
    Summable (fun n : ℕ => (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ∧
      (∑' n : ℕ, (literalAugmentedRow 512 2 x a (-1/2) (65+n))^2) ≤
        (1+η) * quadratic (reconstructionGram (centres * X)) v +
          (1+η⁻¹) * (observationPrice radii X * ∑ j : Head, (v j)^2) +
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
  have hError := literalTrialResidualErrorSq_reconstruction_le 2 (-1/2)
    (N := 64) (M := 512) (L := 2048) X (centres * X)
    (radii * Matrix.of (fun k l => |X k l|)) v
    (literalTrialResidual_mul_entry_radius 2 (-1/2) X centres radii hEntry)
  have hFinite := finiteResidualSquares_le_of_error (N := 64) (M := 512) (L := 2048)
    2 (inclusionTrial u) a (-1/2) η (observationPrice radii X * ∑ j : Head, (v j)^2)
    hη ((centres * X).mulVec v) (by simpa only [observationPrice, u, a] using hError)
  obtain ⟨hSummable, hBound⟩ := literalAugmentedRow_high_bound
    (N := 64) (M := 512) (L := 2048) (J := 8192) (by decide) (by decide) (by decide) (by decide)
    2 (by norm_num) (inclusionTrial u) a (-1/2) (1/8) (by norm_num)
  refine ⟨hSummable, hBound.trans ?_⟩
  rw [← hRemote, reconstructionGram_quadratic]
  exact add_le_add hFinite le_rfl

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoObservedResidual
