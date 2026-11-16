/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import Mathlib.MeasureTheory.Measure.SeparableMeasure
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveStageH1Continuity

/-! # Countable density on the native primitive Weil stage mass ball -/

set_option autoImplicit false
noncomputable section

open MeasureTheory

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation OddRootProjection

/-- Every stage mass ball contains the actual zero test. -/
private theorem stageMassTest_nonempty {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) : Nonempty (PrimitiveStageMassTest χ j) := by
  have hz : liftReal (0 : ℝ → ℝ) = 0 := by
    funext t
    simp [liftReal]
  have hcompact : HasCompactSupport (0 : ℝ → ℝ) := by simp [HasCompactSupport, tsupport]
  refine ⟨⟨0, ⟨by positivity, contDiff_const, hcompact, ?_, ?_, ?_, ?_⟩, ?_⟩⟩
  · intro t
    simp
  · rw [hz]; exact MemLp.zero
  · intro t _
    simp [liftReal]
  · have hg : gammaCorrectionDensity (gammaParity χ) (0 : ℝ → ℂ) = 0 := by
      funext r
      simp [gammaCorrectionDensity, energy]
    rw [hz, hg]
    exact integrable_zero _ _ _
  · rw [hz]
    simp [energy]

/-- The native mass ball admits a dense sequence under the product L²
topology pulled back from its test and derivative. The sequence is obtained
by classical choice from separability. -/
theorem exists_dense_primitiveStageMassTest_sequence {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (j : ℕ) :
    ∃ encode : ℕ → PrimitiveStageMassTest χ j,
      @DenseRange (PrimitiveStageMassTest χ j) (primitiveStageH1Topology χ j) ℕ encode := by
  have : Fact ((1 : ENNReal) ≤ 2) := ⟨by norm_num⟩
  have : Fact ((2 : ENNReal) ≠ ⊤) := ⟨by norm_num⟩
  let _ := primitiveStageH1Topology χ j
  have : @SecondCountableTopology (PrimitiveStageMassTest χ j) (primitiveStageH1Topology χ j) := by
    unfold primitiveStageH1Topology
    exact TopologicalSpace.secondCountableTopology_induced _ _ _
  have := stageMassTest_nonempty χ j
  exact TopologicalSpace.exists_dense_seq (PrimitiveStageMassTest χ j)

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
