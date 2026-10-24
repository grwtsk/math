# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Refinement.Variant266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27a201609f53d73f6b0b1e45ff0e9d89634281d9` · SHA-256 `266a865b8bbdc92f786e5611f9c8e8f56d584735b05593a6b1844ac3d830c968`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.UniqueZero

/-!
# Atomic count-preserving cell refinement

A proposed subdivision has no committed effect.  Only a complete child
partition with every child count and an exact conservation proof can replace
its parent.
-/

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
```
