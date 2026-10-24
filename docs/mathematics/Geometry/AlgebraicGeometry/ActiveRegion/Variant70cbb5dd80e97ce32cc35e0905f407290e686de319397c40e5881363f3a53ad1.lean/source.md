# Complete source: GRWTSK.Geometry.AlgebraicGeometry.ActiveRegion.Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c149542422e1e393c991d726f7f710516dbb847e` · SHA-256 `70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.WorldModel.Registry
import Mathlib.Data.Set.Finite.Basic

/-!
# Exact finite active regions

The active region is a finite set of graph slots with exactly one selected
version per slot. Dependency closure is reused from `DAF.DependencyGraph`.
Omissions are explicit and each omitted dependency must carry an obligation.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- A finite, pinned attention region in one model registry. -/
structure ActiveModelRegion (registry : WorldModelRegistry) where
  activeModels : Finset registry.ModelId
  selectedVersion :
    ∀ modelId, modelId ∈ activeModels → WorldModelVersionId
  selectedVersion_registered :
    ∀ modelId (member : modelId ∈ activeModels),
      selectedVersion modelId member = registry.Version modelId
  requiredDependencies : Finset registry.ModelId
  closedUnderRequiredDependencies :
    ∀ {modelId}, modelId ∈ activeModels →
      registry.dependencyGraph.dependsOn modelId ⊆ activeModels
  omittedDependencies : Finset registry.ModelId
  omitted_are_required : omittedDependencies ⊆ requiredDependencies
  omissionObligation :
    ∀ modelId, modelId ∈ omittedDependencies → ObligationRecord
  attentionIdentity : ArtifactIdentity

namespace ActiveModelRegion

/-- Dependency-closed region generated from finite roots. -/
def ofDependencyClosure
    (registry : WorldModelRegistry)
    (roots : Finset registry.ModelId)
    (selectedVersion :
      ∀ modelId,
        modelId ∈ registry.dependencyGraph.depClosure roots →
        WorldModelVersionId)
    (selectedVersion_registered :
      ∀ modelId
        (member : modelId ∈ registry.dependencyGraph.depClosure roots),
        selectedVersion modelId member = registry.Version modelId)
    (attentionIdentity : ArtifactIdentity) :
    ActiveModelRegion registry where
  activeModels := registry.dependencyGraph.depClosure roots
  selectedVersion := selectedVersion
  selectedVersion_registered := selectedVersion_registered
  requiredDependencies :=
    (registry.dependencyGraph.depClosure roots).biUnion
      registry.dependencyGraph.dependsOn
  closedUnderRequiredDependencies := by
    intro modelId hmodel dependency hdependency
    exact registry.dependencyGraph.dependency_mem_depClosure hmodel hdependency
  omittedDependencies := ∅
  omitted_are_required := by simp
  omissionObligation := by
    intro modelId hmodel
    exact False.elim (by simpa using hmodel)
  attentionIdentity := attentionIdentity

/-- Every active model has exactly one selected version. -/
theorem selectedVersion_unique
    {registry : WorldModelRegistry}
    (region : ActiveModelRegion registry)
    {modelId : registry.ModelId}
    (first second : modelId ∈ region.activeModels) :
    region.selectedVersion modelId first =
      region.selectedVersion modelId second := by
  have : first = second := Subsingleton.elim _ _
  cases this
  rfl

/-- The active region is finite by its `Finset` representation. -/
theorem finite
    {registry : WorldModelRegistry}
    (region : ActiveModelRegion registry) :
    Set.Finite {modelId | modelId ∈ region.activeModels} :=
  Set.finite_mem_finset region.activeModels

/--
The dependency closure is the least finite dependency-closed active region.
-/
theorem activeClosure_is_least_dependencyClosedRegion
    (registry : WorldModelRegistry)
    (roots : Finset registry.ModelId)
    (selectedVersion :
      ∀ modelId,
        modelId ∈ registry.dependencyGraph.depClosure roots →
        WorldModelVersionId)
    (selectedVersion_registered :
      ∀ modelId
        (member : modelId ∈ registry.dependencyGraph.depClosure roots),
        selectedVersion modelId member = registry.Version modelId)
    (attentionIdentity : ArtifactIdentity) :
    let region := ofDependencyClosure
      registry roots selectedVersion selectedVersion_registered attentionIdentity
    roots ⊆ region.activeModels ∧
    (∀ {modelId}, modelId ∈ region.activeModels →
      registry.dependencyGraph.dependsOn modelId ⊆ region.activeModels) ∧
    region.omittedDependencies = ∅ ∧
    ∀ other : ActiveModelRegion registry,
      roots ⊆ other.activeModels →
      (∀ {modelId}, modelId ∈ other.activeModels →
        registry.dependencyGraph.dependsOn modelId ⊆ other.activeModels) →
      region.activeModels ⊆ other.activeModels := by
  dsimp [ofDependencyClosure]
  refine ⟨?_, ?_, rfl, ?_⟩
  · intro modelId hmodel
    exact registry.dependencyGraph.root_mem_depClosure hmodel
  · intro modelId hmodel
    intro dependency hdependency
    exact registry.dependencyGraph.dependency_mem_depClosure hmodel hdependency
  · intro other hroots hclosed
    exact registry.dependencyGraph.depClosure_minimal hroots hclosed

/-- Certificate pinned to exactly one attention identity. -/
structure Certificate
    {registry : WorldModelRegistry}
    (region : ActiveModelRegion registry) where
  attentionIdentity : ArtifactIdentity

/-- A region accepts a certificate only at the same attention identity. -/
def Certificate.Accepted
    {registry : WorldModelRegistry}
    {region : ActiveModelRegion registry}
    (certificate : Certificate region) : Prop :=
  certificate.attentionIdentity = region.attentionIdentity

/-- Stale attention certificates are rejected. -/
theorem Certificate.rejected_of_stale
    {registry : WorldModelRegistry}
    {region : ActiveModelRegion registry}
    (certificate : Certificate region)
    (stale : certificate.attentionIdentity ≠ region.attentionIdentity) :
    ¬ certificate.Accepted :=
  stale

/--
An explicit digest scheme may certify sensitivity to selected-version changes.
No such result is inferred from an ordinary opaque hash.
-/
structure VersionSensitiveAttention
    (registry : WorldModelRegistry) where
  identity :
    (models : Finset registry.ModelId) →
    (∀ id, id ∈ models → WorldModelVersionId) → ArtifactIdentity
  sensitive :
    ∀ models first second,
      (∃ id, ∃ member : id ∈ models,
        first id member ≠ second id member) →
      identity models first ≠ identity models second

/-- Under a declared sensitivity capability, any selected-version change changes identity. -/
theorem attention_changes_of_selectedVersion_change
    {registry : WorldModelRegistry}
    (scheme : VersionSensitiveAttention registry)
    (models : Finset registry.ModelId)
    (first second :
      ∀ id, id ∈ models → WorldModelVersionId)
    (changed : ∃ id, ∃ member : id ∈ models,
      first id member ≠ second id member) :
    scheme.identity models first ≠ scheme.identity models second :=
  scheme.sensitive models first second changed

end ActiveModelRegion

end Surface.ContinuousAssurance.WorldModel
```
