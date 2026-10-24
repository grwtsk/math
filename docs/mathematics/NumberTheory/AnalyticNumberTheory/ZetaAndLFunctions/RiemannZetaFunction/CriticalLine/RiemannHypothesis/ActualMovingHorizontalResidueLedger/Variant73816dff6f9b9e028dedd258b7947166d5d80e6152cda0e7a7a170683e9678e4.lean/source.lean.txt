-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualInitialMellinEqBilateral.Varianta5f0b1cae1613b8fdafaf528fb823f86cb55854df9ca730728885fd1ae02d819","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5f0b1cae1613b8fdafaf528fb823f86cb55854df9ca730728885fd1ae02d819","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualInitialMellinEqBilateral.Varianta5f0b1cae1613b8fdafaf528fb823f86cb55854df9ca730728885fd1ae02d819","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a5f0b1cae1613b8fdafaf528fb823f86cb55854df9ca730728885fd1ae02d819","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/ActualMovingHorizontalResidueLedger.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCompletedHorizontalIntegrability

/-!
One genuine selected growing good height supplies the entire actual rectangle
residue ledger, both actual finite horizontal L1 integrals and their uniform
A⁻⁹ budgets. The source's own double pole zeros remove 0 and 1. Every crossed
nontrivial-zero multiplicity and completed-zeta factor remains.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualInitialMellinEqBilateral.Varianta5f0b1cae1613b8fdafaf528fb823f86cb55854df9ca730728885fd1ae02d819

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualMovingHorizontalResidueLedger
open MeasureTheory Set Complex Topology Filter
open Zeta23 Zeta23.WeilEF
open SourcePairing ActualCorrelationOppositeHalf SourceActualBumpTransform
open SourceActualInitialPrimeContour SourceActualInitialPrimeLineL1
open SourceActualPrimeBumpDictionary SourceActualBumpMellinLineBudget
open SourceActualBumpMovingHeight SourceActualGoodHeightContour
open ActualMovingHorizontalCompletedBudget ActualCompletedHorizontalIntegrability
noncomputable section

/-- Both literal actual Mellin conventions identify by their fixed source bump dictionary. -/
theorem actual_initialMellin_eq_bilateral {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    actualInitialPrimeMellin A s = actualBilateralCorrelationTransform A (s-1/2) := by
  rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA,
    actualBilateralCorrelationTransform_eq_bump hA]
  rfl

/-- The same selected R retains every actual residue and controls both genuine horizontals. -/
theorem actual_source_same_goodheight_full_ledger_and_horizontal_budget :
    ∃ Cg : ℝ, 0 < Cg ∧ ∃ K : ℝ, 0 < K ∧
      ∀ A c : ℝ, 1 ≤ A → 1 < c → c ≤ 3/2 →
      ∃ R : ℝ, max 7 (actualBumpMovingHeight A c) ≤ R ∧
        R < max 7 (actualBumpMovingHeight A c)+2 ∧
        (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
          riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
            Cg*(Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2) ∧
        (∀ y : ℝ, (y = R ∨ y = -R) →
          IntervalIntegrable (fun x : ℝ => actualInitialPrimeMellin A ((x : ℂ)+y*I)*
            logDeriv completedRiemannZeta ((x : ℂ)+y*I)) volume (1-c) c) ∧
        (∀ y : ℝ, (y = R ∨ y = -R) →
          ‖HIntegral (fun s => actualInitialPrimeMellin A s*
              logDeriv completedRiemannZeta s) (1-c) c y‖ ≤
            actualUniformHorizontalSourceConstant K c/A^9) ∧
        ‖actualInitialPrimeTwoTail A c R‖ ≤ actualBumpMovingTailConstant c/A^9 ∧
        ∃ Z : Finset ℂ,
          (Z : Set ℂ) = {ρ : ℂ | IsNontrivialZero ρ ∧ -R < ρ.im ∧ ρ.im < R} ∧
          RectangleIntegral' (fun s => actualInitialPrimeMellin A s*
            logDeriv completedRiemannZeta s)
              ((1-c : ℝ)-(R : ℂ)*I) ((c : ℂ)+(R : ℂ)*I) =
              ∑ ρ ∈ Z, (zeroMult ρ : ℂ)*actualInitialPrimeMellin A ρ := by
  obtain ⟨Cg,hCg,K,hK,hbound⟩ := actual_source_growing_horizontal_uniform_budget
  refine ⟨Cg,hCg,K,hK,?_⟩
  intro A c hA hc hc2
  obtain ⟨R,hlow,hupp,hgood,horiz⟩ := hbound A c hA hc hc2
  have h7 : 7 ≤ R := (le_max_left _ _).trans hlow
  have hbase : actualBumpMovingHeight A c ≤ R := (le_max_right _ _).trans hlow
  have hcomplete := completedZeta_ne_zero_on_horizontals hc hc2
    (fun s him hr1 hr2 => (hgood s him hr1 hr2).1)
  obtain ⟨Z,hZ,hrect⟩ := rectangle_identity
    (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) hc hc2 h7 hcomplete
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hrect
  have hzero := actualInitialPrimeMellin_poles_zero A hA
  rw [hzero.1,hzero.2,sub_zero,sub_zero] at hrect
  refine ⟨R,hlow,hupp,hgood,?_,?_,
    actualInitialPrimeTwoTail_above_movingHeight_norm_le A c R hA hc hbase,Z,hZ,hrect⟩
  · intro y hy
    simp_rw [actual_initialMellin_eq_bilateral hA]
    exact actual_completed_horizontal_intervalIntegrable A c R y hA hc hc2 h7
      (fun s him hr1 hr2 => (hgood s him hr1 hr2).1) hy
  · intro y hy
    simp_rw [actual_initialMellin_eq_bilateral hA]
    exact horiz y hy

end
end FormalResearch.RiemannHypothesis.ActualMovingHorizontalResidueLedger
