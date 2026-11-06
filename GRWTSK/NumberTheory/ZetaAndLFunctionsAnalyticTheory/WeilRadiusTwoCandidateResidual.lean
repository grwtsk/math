/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateEntries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddWindowLowerAssembly

/-!
# Complete residual bound for the radius-two reconstruction

The finite observation covers physical modes 65 through 2048. The
reconstruction propagates its entry radii before applying Young's
inequality. The complete remote allowance begins at mode 2049, with
signed leading terms through mode 8192 and split `1/8`. Both pieces use
the same reconstructed trial and the literal scalar pole coordinate.
Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateResidual

open Matrix
open RadiusTwoCandidateEntries OddResidualSourceComparison OddInclusionWindow
open OddRemoteAllowanceMatrix OddWindowLowerAssembly
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.LinearAlgebra.SchurObserver

/-- Finite residual centers after applying the reconstruction. -/
def observedResidualRows (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℝ) :
    Matrix ResidualRows Head ℝ :=
  (residualCenters bits t).map ((↑) : ℚ → ℝ) * X

/-- Squared entry radii of the reconstructed residual, charged in the head coordinates. -/
def residualObservationPrice (bits : ℕ) (t : ScalarTables) (X : Matrix Trial Head ℝ) : ℝ :=
  let E := (residualRadii bits t).map ((↑) : ℚ → ℝ)
  ∑ i : ResidualRows, ∑ j : Head, ((E * Matrix.of (fun k l => |X k l|)) i j) ^ 2

/-- Bound the complete literal residual above the retained 64 modes by the
observed Gram, the priced observation error, and the exact remote quadratic. -/
theorem wholeResidual_bound (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) (η : ℝ) (hη : 0 < η) :
    let x := inclusionTrial (X.mulVec v ∘ Sum.inl)
    let a := X.mulVec v (Sum.inr ())
    Summable (fun n : ℕ => (literalAugmentedRow 512 2 x a (-1 / 2) (65 + n)) ^ 2) ∧
      (∑' n : ℕ, (literalAugmentedRow 512 2 x a (-1 / 2) (65 + n)) ^ 2) ≤
        (1 + η) * quadratic (reconstructionGram (observedResidualRows bits t X)) v +
          (1 + η⁻¹) * (residualObservationPrice bits t X * ∑ j : Head, (v j) ^ 2) +
          quadratic (completeRemoteMatrix 512 2048 8192 2 (1 / 8)) (X.mulVec v) := by
  dsimp only
  let u := X.mulVec v ∘ Sum.inl
  let a := X.mulVec v (Sum.inr ())
  have hVec : Sum.elim u (fun _ : Unit => a) = X.mulVec v := by
    funext j
    rcases j with i | ⟨⟩ <;> rfl
  have hRemote := quadratic_completeRemoteMatrix 2048 8192 2 (1 / 8)
    (inclusionTrial u) u a (inclusionTrial_succ u)
  rw [hVec] at hRemote
  have hError := residualReconstructionErrorSq_le bits ht X v
  have hFinite := finiteResidualSquares_le_of_error (N := 64) (M := 512) (L := 2048)
    2 (inclusionTrial u) a (-1 / 2) η (residualObservationPrice bits t X * ∑ j : Head, (v j) ^ 2)
    hη ((observedResidualRows bits t X).mulVec v) (by
      simpa only [observedResidualRows, residualObservationPrice, u, a] using hError)
  obtain ⟨hSummable, hBound⟩ := literalAugmentedRow_high_bound
    (N := 64) (M := 512) (L := 2048) (J := 8192) (by decide) (by decide) (by decide) (by decide)
    2 (by norm_num) (inclusionTrial u) a (-1 / 2) (1 / 8) (by norm_num)
  refine ⟨hSummable, hBound.trans ?_⟩
  rw [← hRemote, reconstructionGram_quadratic]
  exact add_le_add hFinite le_rfl

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateResidual
