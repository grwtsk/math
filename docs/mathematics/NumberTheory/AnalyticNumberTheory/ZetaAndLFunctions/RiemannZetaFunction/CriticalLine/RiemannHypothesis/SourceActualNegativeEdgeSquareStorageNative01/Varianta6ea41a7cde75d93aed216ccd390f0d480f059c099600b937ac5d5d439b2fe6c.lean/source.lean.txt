import SourceActualNegativeEdgeMangoldt
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage

/-!
The true negative arithmetic edge block has a genuine physical L2 square
surplus on its selected closed inventory. Its independent baseline is retained;
the entire complementary storage/baseline account remains uncontrolled here.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeSquareStorage
open SourcePairing SourceMangoldtStorage SourceActualNegativeEdgeMangoldt
open SourceScaleL2Continuity SourceReflectionDuality
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit
noncomputable section

/-- The actual arithmetic baseline on this same genuine closed edge window. -/
def actualNegativeEdgeSquareBaseline (A : ℝ) : ℝ :=
  finiteMangoldtBaseline (actualNegativeEdgeWindow A)

/-- Genuine original-state translation squares retain their full normalization. -/
def actualNegativeEdgeSquareStorage (A : ℝ) : ℝ :=
  finiteMangoldtStorage (actualNegativeEdgeWindow A) (originalSourceState A)

/-- No coefficient, cross term, or baseline is dropped in this physical reconstruction. -/
theorem actualNegativeEdgeSquare_reconstruction {A : ℝ} (hA : 0 < A) :
    actualNegativeEdgeMangoldtBlock A =
      actualNegativeEdgeSquareBaseline A - actualNegativeEdgeSquareStorage A := by
  unfold actualNegativeEdgeMangoldtBlock actualNegativeEdgeSquareBaseline
    actualNegativeEdgeSquareStorage
  have h := finiteMangoldt_reconstruction (actualNegativeEdgeWindow A) (originalSourceState A)
  rw [originalSourceState_norm hA] at h
  simp only [one_pow, mul_one] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro n _
  rw [← sourceCorrelation_eq_inner hA]
  unfold closedPrimeWeight exponentialTest mangoldtCoefficient
  ring

/-- The selected physical surplus is truly exponentially large; other deficits remain signed. -/
theorem actualNegativeEdgeSquareSurplus_eventually_positive :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      actualNegativeEdgeConstant * Real.exp A / A ^ 9 ≤
        actualNegativeEdgeSquareStorage A - actualNegativeEdgeSquareBaseline A := by
  obtain ⟨R, hR, he⟩ := actualNegativeEdgeMangoldtBlock_eventually_negative
  refine ⟨R, hR, ?_⟩
  intro A hA
  have h := actualNegativeEdgeSquare_reconstruction (show 0 < A by linarith)
  have heA := he A hA
  rw [neg_mul, neg_div] at heA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeSquareStorage
