/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ApproximateCertificateCoverage
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimitiveWitnessNormalization

/-!
# Dense certificate coverage on the native primitive Weil stage
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

open SourcePrimeCorrelation
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates
open GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

/-- A dense dictionary in the admissible mass ball suffices if the exact
stage defect is continuous in the supplied topology and the checker covers
every code and accuracy for that defect. The character and window are fixed
in the judgment. Neither a dictionary nor a checker is constructed here. -/
theorem primitiveStageLower_of_dense_mass_certificates
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (j : ℕ) :
    let Test := { f : ℝ → ℝ // Admissible χ ((j : ℝ) + 1) f ∧ energy (liftReal f) ≤ 1 }
    let defect := fun f : Test =>
      primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f.val) +
        ((1 / 2 : ℝ) ^ j) * energy (liftReal f.val)
    ∀ [TopologicalSpace Test] {Code Certificate : Type*} (encode : Code → Test),
      DenseRange encode → Continuous defect →
      ∀ checker : CertificateChecker Unit Certificate (Code × ℕ)
        (lowerBoundMeaning (fun _ d => defect (encode d)) (fun k => (1 / 2 : ℝ) ^ k)),
        (∀ (d : Code) (k : ℕ), ∃ c : Certificate, checker.Accepts () c (d, k)) →
        PrimitiveStageLower χ hp hn j := by
  intro Test defect topology Code Certificate encode hdense hcontinuous checker hcovered
  have hnonnegative : ∀ f : Test, 0 ≤ defect f :=
    dense_nonneg_of_complete_coverage (fun _ : Unit => defect) encode
      (fun k => (1 / 2 : ℝ) ^ k) checker () hdense hcontinuous
      dyadic_errors_arbitrarily_small hcovered
  apply (primitiveStageLower_iff_mass_le_one χ hp hn j).mpr
  intro f hf hmass
  have hdefect := hnonnegative ⟨f, hf, hmass⟩
  change 0 ≤ primitiveArithmeticValue χ hp hn ((j : ℝ) + 1) (liftReal f) +
    ((1 / 2 : ℝ) ^ j) * energy (liftReal f) at hdefect
  rw [neg_mul]
  linarith

end GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain
