# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Upgrade.Variant4c8941ff6159d338a306e557c3ec2e6b744fd5ca435854991932039fb9ffbd77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c67cd0b50e00bbd7a64467104ecc0e2a0fda4060` · SHA-256 `6c739ce21da6c8dec8d97630130a27dbada6e6e1cd5564ebb4ec27305f3f7a49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UpgradeClass.Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.UpgradeClass.Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/System/Upgrade.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.System.Project
import Mathlib.Data.Set.Lattice

/-! # Upgrade classes and the least affected closure -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.UpgradeClass.Variant16f388f0551d7b3e48dab726379539ed6ca256a92388adf1db01f386c6bf8fac

namespace Mathematics.System

inductive UpgradeClass
  | refinementPreserving
  | equivalent
  | factor
  deriving DecidableEq, Repr

structure WorkspaceUpgrade where
  id : StableId
  workspaceId : WorkspaceId
  fromRevision : Nat
  toRevision : Nat
  kind : UpgradeClass
  changedProjects : Set ProjectId

namespace IncrementalBuild

variable {Project : Type*}

def DependencyClosed
    (dependsOn : Project → Project → Prop) (projects : Set Project) : Prop :=
  ∀ project dependency,
    dependsOn project dependency → projects dependency → projects project

/--
The affected set is characterized as the intersection of every
dependency-closed set containing the changed projects.
-/
def Affected
    (dependsOn : Project → Project → Prop)
    (changed : Set Project) : Set Project :=
  fun project ↦
    ∀ candidate : Set Project,
      changed ⊆ candidate →
      DependencyClosed dependsOn candidate →
      candidate project

theorem changed_subset_affected
    (dependsOn : Project → Project → Prop)
    (changed : Set Project) :
    changed ⊆ Affected dependsOn changed := by
  intro project hchanged candidate hcontains _
  exact hcontains hchanged

/-- `Affected` is contained in every closed superset of the change set. -/
theorem affected_least
    (dependsOn : Project → Project → Prop)
    (changed candidate : Set Project)
    (hcontains : changed ⊆ candidate)
    (hclosed : DependencyClosed dependsOn candidate) :
    Affected dependsOn changed ⊆ candidate := by
  intro project haffected
  exact haffected candidate hcontains hclosed

end IncrementalBuild

namespace WorkspaceUpgrade

/-- A tenant is unaffected exactly when its enabled project set is disjoint
from the affected closure. -/
def TenantUnaffected
    (enabled affected : Set ProjectId) : Prop :=
  Disjoint enabled affected

theorem tenant_unaffected_iff_disjoint
    (enabled affected : Set ProjectId) :
    TenantUnaffected enabled affected ↔ Disjoint enabled affected :=
  Iff.rfl

end WorkspaceUpgrade

end Mathematics.System
```
