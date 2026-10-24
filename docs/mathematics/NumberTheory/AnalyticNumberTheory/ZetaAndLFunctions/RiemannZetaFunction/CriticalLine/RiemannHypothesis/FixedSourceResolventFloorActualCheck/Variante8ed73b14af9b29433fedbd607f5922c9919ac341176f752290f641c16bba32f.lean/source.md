# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FixedSourceResolventFloorActualCheck.Variante8ed73b14af9b29433fedbd607f5922c9919ac341176f752290f641c16bba32f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6801ba42cbb656179f84d174b6bc0639d8b3a40` · SHA-256 `cda1e4d64e6bb84b4169099df9f1a83deb913cf8a490f372c4286c10bea03fb7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMassKernelOverlapLe.Variant9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceMassKernelOverlapLe.Variant9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-operator/FixedSourceResolventFloorActualCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdjointExponential
import FormalResearch.RiemannHypothesis.SourceComparison.SourceResolventTruncation
import FormalResearch.RiemannHypothesis.SourceComparison.PositiveResolventKernel

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMassKernelOverlapLe.Variant9e9c50cc27c1cf6cc705c1e5b9285fd9f923527d01bac187ae22c172af5229d4

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential
open PositiveResolventKernel SourceResolventTruncation

/-- An actual adjoint-kernel vector contributes its full reference overlap to every source mass. -/
theorem sourceMass_kernel_overlap_le (u : H) (hu : u ≠ 0)
    (hTu : sourceOperator.adjoint u = 0) (α : ℝ) (hα : 0 < α) :
    ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 ≤ sourceMass α := by
  apply kernel_witness_regularizedMass_le sourceEnergy sourceEnergy_isPositive α hα
    referenceVector u hu
  rw [sourceEnergy_apply, hTu, map_zero]

/-- Every original occurrence to the right gives the exact positive overlap floor, at all rates. -/
theorem occurrence_sourceMass_floor (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hcoefficient, _⟩ := occurrence_reference_visible_kernel o ho
  rw [← hcoefficient]
  exact sourceMass_kernel_overlap_le u hu hTu α hα

/-- An actual off-line zero to the right supplies one strictly positive floor for all parameters. -/
theorem nontrivial_sourceMass_uniform_positive_floor (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ c : ℝ, 0 < c ∧ ∀ α : ℝ, 0 < α → c ≤ sourceMass α := by
  obtain ⟨u, hu, hTu, hc⟩ := nontrivial_reference_visible_kernel ρ hρ hρre
  refine ⟨‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2, hc, ?_⟩
  intro α hα
  exact sourceMass_kernel_overlap_le u hu hTu α hα

end FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

namespace FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential

open PositiveResolventKernel SourceResolventTruncation

example (u : H) (hu : u ≠ 0)
    (hTu : sourceOperator.adjoint u = 0) (α : ℝ) (hα : 0 < α) :
    ‖inner ℂ referenceVector u‖ ^ 2 / ‖u‖ ^ 2 ≤ sourceMass α := sourceMass_kernel_overlap_le u hu hTu α hα

example (o : ZeroObject.ZeroOccurrence)
    (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤ sourceMass α := occurrence_sourceMass_floor o ho α hα

example (ρ : ℂ)
    (hρ : FormalResearch.RiemannHypothesis.NontrivialZetaZero ρ) (hρre : 1 / 2 < ρ.re) :
    ∃ c : ℝ, 0 < c ∧ ∀ α : ℝ, 0 < α → c ≤ sourceMass α := nontrivial_sourceMass_uniform_positive_floor ρ hρ hρre

example (o : ZeroObject.ZeroOccurrence) (ho : 0 < (ZeroObject.shiftedValue o).re) (α : ℝ) (hα : 0 < α) :
    2 * (ZeroObject.shiftedValue o).re / ‖1 + ZeroObject.shiftedValue o‖ ^ 2 ≤
      α * (inner ℂ referenceVector
        (Ring.inverse (sourceOperator.comp sourceOperator.adjoint +
          (α : ℂ) • (1 : H →L[ℂ] H)) referenceVector)).re :=
  occurrence_sourceMass_floor o ho α hα

end FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor


set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.sourceMass_kernel_overlap_le
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.occurrence_sourceMass_floor
#check @FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
#print FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor.nontrivial_sourceMass_uniform_positive_floor
```
