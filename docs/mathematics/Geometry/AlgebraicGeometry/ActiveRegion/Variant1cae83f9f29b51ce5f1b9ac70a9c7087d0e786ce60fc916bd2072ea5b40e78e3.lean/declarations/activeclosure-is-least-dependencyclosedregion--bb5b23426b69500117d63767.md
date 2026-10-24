# activeClosure_is_least_dependencyClosedRegion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:003df8a1-7b1d-91a0-9fc0-dfb20596ee7c",
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
  "slug": "activeclosure-is-least-dependencyclosedregion--bb5b23426b69500117d63767",
  "source": {
    "blob": "33183e42b0376ba2668725f376669af4ecef4373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 94,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb5b23426b69500117d63767c1ab8c8a016a18b4461a47b42b3360faae81d65a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:003df8a1-7b1d-91a0-9fc0-dfb20596ee7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–127.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33183e42b0376ba2668725f376669af4ecef4373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
