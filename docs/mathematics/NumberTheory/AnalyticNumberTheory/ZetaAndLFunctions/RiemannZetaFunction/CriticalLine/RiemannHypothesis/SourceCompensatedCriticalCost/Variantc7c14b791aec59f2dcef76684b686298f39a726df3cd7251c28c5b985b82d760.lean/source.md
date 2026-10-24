# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompensatedCriticalCost.Variantc7c14b791aec59f2dcef76684b686298f39a726df3cd7251c28c5b985b82d760

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `130e78e68e4aab0d793714975d7c6fb14645af76` · SHA-256 `85eec6875b557c9d2c88c57c1bf2bb192aaaa76673122e9709e04942a3d3ebe7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AtomicCosineReadout.Variant7d1245909b45757cfdb69f42f5617e2feef79ba136164d6464b79447df8c139c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d1245909b45757cfdb69f42f5617e2feef79ba136164d6464b79447df8c139c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AtomicCosineReadout.Variant7d1245909b45757cfdb69f42f5617e2feef79ba136164d6464b79447df8c139c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7d1245909b45757cfdb69f42f5617e2feef79ba136164d6464b79447df8c139c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies-sibling-replay/SourceCompensatedCriticalCost.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRationalFiniteHead
import FormalResearch.RiemannHypothesis.SourceMangoldtNorm

/-!
Quantitative positive spectral cost for the complete rational critical operator.
Every prime power and the continuous compensator are retained. The recurrence
premise is an explicit analytic input, not an axiom or an arithmetic witness.
Direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AtomicCosineReadout.Variant7d1245909b45757cfdb69f42f5617e2feef79ba136164d6464b79447df8c139c

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCompensatedCriticalCost
open MeasureTheory Set
open SourceMangoldtInteraction SourceMangoldtStorage SourceMangoldtNorm
open SourceNativeDirichlet SourceNativeDirichletMoments
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent
noncomputable section

def atomicCosineReadout (A ξ : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    mangoldtCoefficient n * Real.cos (ξ * Real.log n)

def continuousCriticalSymbol (A ξ : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..2 * A, Real.exp (u / 2) * Real.cos (ξ * u)

def constantCriticalCompensator : ℝ := rightLineMajorant 2 - dirichletMoment 1

/-- The positive and negative critical spectral contributions are kept together. -/
def compensatedCriticalSymbol (A ξ : ℝ) : ℝ :=
  atomicCosineReadout A ξ - constantCriticalCompensator -
    dirichletMoment 1 * continuousCriticalSymbol A ξ

/-- Exact arithmetic phase loss plus the actual continuous spectral cost. -/
def alignmentCost (A ξ : ℝ) : ℝ :=
  mangoldtBaseline A - atomicCosineReadout A ξ +
    dirichletMoment 1 * |continuousCriticalSymbol A ξ|

theorem atomicCosineReadout_le_mass (A ξ : ℝ) :
    atomicCosineReadout A ξ ≤ mangoldtBaseline A := by
  unfold atomicCosineReadout mangoldtBaseline finiteMangoldtBaseline
  apply Finset.sum_le_sum
  intro n _
  exact mul_le_of_le_one_right (mangoldtCoefficient_nonneg n) (Real.cos_le_one _)

theorem alignmentCost_nonneg (A ξ : ℝ) : 0 ≤ alignmentCost A ξ := by
  exact add_nonneg (sub_nonneg.mpr (atomicCosineReadout_le_mass A ξ))
    (mul_nonneg (dirichletMoment_nonneg 1) (abs_nonneg _))

theorem compensatedCriticalSymbol_lower (A ξ : ℝ) :
    mangoldtBaseline A - constantCriticalCompensator - alignmentCost A ξ ≤
      compensatedCriticalSymbol A ξ := by
  have h := mul_le_mul_of_nonneg_left (le_abs_self (continuousCriticalSymbol A ξ))
    (dirichletMoment_nonneg 1)
  unfold alignmentCost compensatedCriticalSymbol
  linarith

theorem actual_mass_lower {A : ℝ} (hA : 1 ≤ A) :
    2 * A - Real.log 2 - 1 ≤ mangoldtBaseline A := by
  rw [← mangoldtInteraction_norm_eq_mass]
  exact mangoldtInteraction_norm_lower hA

theorem actual_compensated_cost_lower {A ξ : ℝ} (hA : 1 ≤ A) :
    2 * A - Real.log 2 - 1 - constantCriticalCompensator - alignmentCost A ξ ≤
      compensatedCriticalSymbol A ξ := by
  have hm := actual_mass_lower hA
  have hs := compensatedCriticalSymbol_lower A ξ
  linarith

/-- An explicit finite-frequency recurrence/continuous-decay proposition, not an axiom. -/
def CriticalAlignmentReturn : Prop :=
  ∀ A : ℝ, 1 ≤ A → ∀ ε : ℝ, 0 < ε →
    ∃ ξ : ℝ, alignmentCost A ξ ≤ ε

/-- A bound on all unit-vector frequencies is stronger than the actual-source readout. -/
def UniformPositiveCriticalSymbolBudget : Prop :=
  ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → ∀ ξ : ℝ, compensatedCriticalSymbol A ξ ≤ D

theorem no_uniform_positive_symbol_budget (hret : CriticalAlignmentReturn) :
    ¬ UniformPositiveCriticalSymbolBudget := by
  rintro ⟨D, _, R, hR, hbudget⟩
  let A : ℝ := max R (D + constantCriticalCompensator + Real.log 2 + 3)
  have hAR : R ≤ A := le_max_left _ _
  have hA : 1 ≤ A := hR.trans hAR
  have hAD : D + constantCriticalCompensator + Real.log 2 + 3 ≤ A := le_max_right _ _
  obtain ⟨ξ, hξ⟩ := hret A hA 1 (by norm_num)
  have hl := actual_compensated_cost_lower (ξ := ξ) hA
  have hu := hbudget A hAR ξ
  linarith

end
end FormalResearch.RiemannHypothesis.SourceCompensatedCriticalCost
```
