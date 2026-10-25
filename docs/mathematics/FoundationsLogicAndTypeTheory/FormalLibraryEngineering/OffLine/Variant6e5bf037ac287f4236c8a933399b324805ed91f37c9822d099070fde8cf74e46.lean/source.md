# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OffLine.Variant6e5bf037ac287f4236c8a933399b324805ed91f37c9822d099070fde8cf74e46

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7deec47d0110294fa466b4422e76e07a45596808` · SHA-256 `c23b0e4d5e897d46a642bb9a29457d16afe31b8a5480ea957ef12d5116008282`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OffCriticalLineCell.Variant4337ceb203ac3371f8bd34ca0c516e9cc1d3815f5432d5fcda1361714a575669","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4337ceb203ac3371f8bd34ca0c516e9cc1d3815f5432d5fcda1361714a575669","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OffCriticalLineCell.Variant4337ceb203ac3371f8bd34ca0c516e9cc1d3815f5432d5fcda1361714a575669","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4337ceb203ac3371f8bd34ca0c516e9cc1d3815f5432d5fcda1361714a575669","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/OffLine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Symmetry
import Mathlib.Tactic.Linarith

/-!
# Quantitative off-critical-line cells

A positive divisor count in a cell uniformly separated from the critical line
is a certified finite-height counterexample, not a heuristic warning.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OffCriticalLineCell.Variant4337ceb203ac3371f8bd34ca0c516e9cc1d3815f5432d5fcda1361714a575669

namespace Mathematics.RHIsolation

structure OffCriticalLineCell
    (cell : AnalyticCell) where
  separation : ℝ
  separation_pos : 0 < separation
  separated :
    ∀ z ∈ cell.carrier,
      separation ≤ |z.re - (1 : ℝ) / 2|

structure CertifiedOffLineZero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime) where
  cell : AnalyticCell
  offLine : OffCriticalLineCell cell
  count :
    ArgumentPrincipleCertificate authority cell
  positiveCount : 0 < count.count

theorem positive_count_in_offLineCell_gives_offLineZero
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (certificate :
      CertifiedOffLineZero authority) :
    ∃ z,
      z ∈ certificate.cell.interior ∧
      xi z = 0 ∧
      z.re ≠ (1 : ℝ) / 2 := by
  have divisorPositive :
      0 <
        (authority.divisor
          certificate.cell).count := by
    rw [certificate.count.countSound]
    exact certificate.positiveCount
  obtain ⟨z, zMem, zZero⟩ :=
    (authority.divisor certificate.cell)
      |>.exists_zero_of_count_pos divisorPositive
  refine ⟨z, zMem, zZero, ?_⟩
  intro onLine
  have inCarrier :
      z ∈ certificate.cell.carrier :=
    certificate.cell.interior_subset zMem
  have separated :=
    certificate.offLine.separated z inCarrier
  rw [onLine] at separated
  norm_num at separated
  linarith [certificate.offLine.separation_pos]

theorem certifiedOffLineZero_refutes_finiteHeightRH
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    (certificate :
      CertifiedOffLineZero authority) :
    ∃ z,
      z ∈ certificate.cell.interior ∧
      xi z = 0 ∧
      z.re ≠ (1 : ℝ) / 2 :=
  positive_count_in_offLineCell_gives_offLineZero
    certificate

end Mathematics.RHIsolation
```
