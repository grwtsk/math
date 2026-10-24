# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Priority.Variant28b74474cbb8e55126372815705698bbbb164ef317ad7beee8b08a997edd5eb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3a61629d2e6fcec87a46318939e17963a2f6514` · SHA-256 `28b74474cbb8e55126372815705698bbbb164ef317ad7beee8b08a997edd5eb6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.RHIsolation.TraceCorrespondence

/-!
# Completeness-preserving spectral priority

A spectral policy may permute the unresolved list.  Its certificate proves
that membership is unchanged, so it has no pruning authority.
-/

namespace Mathematics.RHIsolation

universe uCell

structure SpectralPriorityPolicy
    (CellId : Type uCell) where
  priority : CellId → PriorityKey
  reorder : List CellId → List CellId
  permutation :
    ∀ frontier,
      (reorder frontier).Perm frontier
  advisoryOnly : Prop
  advisoryOnlyProof : advisoryOnly

def AnalyticFrontierComplete
    {CellId : Type uCell}
    [DecidableEq CellId]
    (unresolved : CellId → Prop)
    (frontier : List CellId)
    (currentlyProcessing : Finset CellId) :
    Prop :=
  ∀ cell,
    unresolved cell →
    cell ∈ frontier ∨
      cell ∈ currentlyProcessing

theorem spectralPriority_preserves_completeFrontier
    {CellId : Type uCell}
    [DecidableEq CellId]
    (unresolved : CellId → Prop)
    (frontier : List CellId)
    (currentlyProcessing : Finset CellId)
    (policy : SpectralPriorityPolicy CellId)
    (complete :
      AnalyticFrontierComplete
        unresolved frontier currentlyProcessing) :
    AnalyticFrontierComplete
      unresolved
      (policy.reorder frontier)
      currentlyProcessing := by
  intro cell cellUnresolved
  rcases complete cell cellUnresolved with
    inFrontier | inProcessing
  · left
    exact
      (policy.permutation frontier).mem_iff.mpr
        inFrontier
  · exact Or.inr inProcessing

theorem spectral_priority_preserves_analytic_frontier
    {CellId : Type uCell}
    [DecidableEq CellId]
    (unresolved : CellId → Prop)
    (frontier : List CellId)
    (currentlyProcessing : Finset CellId)
    (policy : SpectralPriorityPolicy CellId)
    (complete :
      AnalyticFrontierComplete
        unresolved frontier currentlyProcessing) :
    AnalyticFrontierComplete
      unresolved
      (policy.reorder frontier)
      currentlyProcessing :=
  spectralPriority_preserves_completeFrontier
    unresolved frontier currentlyProcessing
    policy complete

end Mathematics.RHIsolation
```
