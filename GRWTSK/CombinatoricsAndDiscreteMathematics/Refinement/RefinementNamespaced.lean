-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CellPartitionCertificate.Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CellPartitionCertificate.Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Refinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.UniqueZero

/-!
# Atomic count-preserving cell refinement

A proposed subdivision has no committed effect.  Only a complete child
partition with every child count and an exact conservation proof can replace
its parent.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CellPartitionCertificate.Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968

namespace Mathematics.RHIsolation

open scoped BigOperators

universe uChild

set_option linter.checkUnivs false in
structure CellPartitionCertificate
    (xi : ℂ → ℂ)
    (parent : AnalyticCell) where
  Child : Type uChild
  childFintype : Fintype Child
  childDecEq : DecidableEq Child
  child : Child → AnalyticCell
  nonempty : Nonempty Child
  coversInterior :
    ∀ z,
      z ∈ parent.interior ↔
        ∃ index,
          z ∈ (child index).interior
  pairwiseDisjointInteriors :
    PairwiseDisjointInteriors child
  internalBoundariesZeroFree :
    ∀ index,
      BoundaryZeroFreeCertificate xi
        (child index)

attribute [instance]
  CellPartitionCertificate.childFintype
  CellPartitionCertificate.childDecEq

structure CountPreservingRefinement
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (parent : AnalyticCell) where
  refinementId : RefinementId
  parentCount :
    ArgumentPrincipleCertificate authority parent
  partition :
    CellPartitionCertificate xi parent
  childCount :
    ∀ index : partition.Child,
      ArgumentPrincipleCertificate authority
        (partition.child index)
  countConservation :
    parentCount.count =
      ∑ index : partition.Child,
        (childCount index).count
  cellDiameter : AnalyticCell → ℝ
  diameter_nonneg :
    ∀ cell, 0 ≤ cellDiameter cell
  geometricContraction :
    ∃ q : ℝ,
      0 < q ∧ q < 1 ∧
      ∀ index : partition.Child,
        cellDiameter (partition.child index) ≤
          q * cellDiameter parent

inductive RefinementDisposition
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    (authority :
      ArgumentPrincipleAuthority model xi xiPrime)
    (parent : AnalyticCell)
  | proposed
      (partition :
        CellPartitionCertificate xi parent)
  | committed
      (certificate :
        CountPreservingRefinement
          authority parent)

theorem countPreservingRefinement_sound
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {parent : AnalyticCell}
    (refinement :
      CountPreservingRefinement authority parent) :
    refinement.parentCount.count =
      ∑ index : refinement.partition.Child,
        (refinement.childCount index).count :=
  refinement.countConservation

theorem countPreservingRefinement_preserves_totalMass
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime}
    {parent : AnalyticCell}
    (refinement :
      CountPreservingRefinement authority parent) :
    (authority.divisor parent).count =
      ∑ index : refinement.partition.Child,
        (authority.divisor
          (refinement.partition.child index)).count := by
  rw [refinement.parentCount.countSound]
  calc
    refinement.parentCount.count =
        ∑ index : refinement.partition.Child,
          (refinement.childCount index).count :=
      refinement.countConservation
    _ =
        ∑ index : refinement.partition.Child,
          (authority.divisor
            (refinement.partition.child index)).count := by
      apply Finset.sum_congr rfl
      intro index _
      symm
      exact (refinement.childCount index).countSound

end Mathematics.RHIsolation
