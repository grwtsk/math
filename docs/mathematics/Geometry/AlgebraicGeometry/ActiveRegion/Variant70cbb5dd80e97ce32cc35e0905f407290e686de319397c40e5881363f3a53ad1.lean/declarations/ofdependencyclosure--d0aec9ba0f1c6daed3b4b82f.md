# ofDependencyClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f56a9acf1ad0f7ec7895fbf79dc814f954bd6757b9ec1e1e9c2c23ecddb7776",
  "kind": "def",
  "lexical_name": "ofDependencyClosure",
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
  "slug": "ofdependencyclosure--d0aec9ba0f1c6daed3b4b82f",
  "source": {
    "blob": "c149542422e1e393c991d726f7f710516dbb847e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 35,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0aec9ba0f1c6daed3b4b82fd26280cd1b9ab0f0ad0bce7a014b7fe15bbd29f9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f56a9acf1ad0f7ec7895fbf79dc814f954bd6757b9ec1e1e9c2c23ecddb7776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant70cbb5dd80e97ce32cc35e0905f407290e686de319397c40e5881363f3a53ad1.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c149542422e1e393c991d726f7f710516dbb847e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
