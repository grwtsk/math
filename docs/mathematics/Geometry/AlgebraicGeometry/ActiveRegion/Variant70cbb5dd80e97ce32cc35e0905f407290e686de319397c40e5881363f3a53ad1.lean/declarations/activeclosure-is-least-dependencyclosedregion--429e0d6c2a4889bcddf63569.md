# activeClosure_is_least_dependencyClosedRegion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c149542422e1e393c991d726f7f710516dbb847e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:599619d1-9257-bfa7-384b-72c46604e4a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fbfa865-e484-224e-9059-7f20f5d5d47a",
  "kind": "theorem",
  "lexical_name": "activeClosure_is_least_dependencyClosedRegion",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "activeclosure-is-least-dependencyclosedregion--429e0d6c2a4889bcddf63569",
  "source": {
    "blob": "c149542422e1e393c991d726f7f710516dbb847e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 86,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:429e0d6c2a4889bcddf63569b277af11451071991f05a990276b5d8dcad7b0aa",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fbfa865-e484-224e-9059-7f20f5d5d47a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c149542422e1e393c991d726f7f710516dbb847e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
