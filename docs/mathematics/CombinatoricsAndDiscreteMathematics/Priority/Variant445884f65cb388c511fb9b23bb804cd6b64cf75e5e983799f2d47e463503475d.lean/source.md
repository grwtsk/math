# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Priority.Variant445884f65cb388c511fb9b23bb804cd6b64cf75e5e983799f2d47e463503475d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e338144ded2544cb00b4d99146e475ab2b6c9f03` · SHA-256 `837cd69cbbdc320592ff609642577ef7af84de048b3a706898f50d60a1f3c990`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SpectralPriorityPolicy.Variant28b74474cbb8e55126372815705698bbbb164ef317ad7beee8b08a997edd5eb6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"28b74474cbb8e55126372815705698bbbb164ef317ad7beee8b08a997edd5eb6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SpectralPriorityPolicy.Variant28b74474cbb8e55126372815705698bbbb164ef317ad7beee8b08a997edd5eb6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"28b74474cbb8e55126372815705698bbbb164ef317ad7beee8b08a997edd5eb6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Priority.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.TraceCorrespondence

/-!
# Completeness-preserving spectral priority

A spectral policy may permute the unresolved list.  Its certificate proves
that membership is unchanged, so it has no pruning authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SpectralPriorityPolicy.Variant28b74474cbb8e55126372815705698bbbb164ef317ad7beee8b08a997edd5eb6

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
