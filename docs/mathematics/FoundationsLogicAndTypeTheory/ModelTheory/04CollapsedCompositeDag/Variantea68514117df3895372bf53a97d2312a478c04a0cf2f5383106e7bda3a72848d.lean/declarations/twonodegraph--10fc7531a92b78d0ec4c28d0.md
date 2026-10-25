# twoNodeGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79506be1527ced3b9a452fead1fa30ce697b18b74b5a31a4b218bfdcae8d3120",
  "kind": "def",
  "lexical_name": "twoNodeGraph",
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
  "slug": "twonodegraph--10fc7531a92b78d0ec4c28d0",
  "source": {
    "blob": "f5a144f118d84d6b455b9d0b5eedf04ae6e1945b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/04CollapsedCompositeDag/Variantea68514117df3895372bf53a97d2312a478c04a0cf2f5383106e7bda3a72848d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10fc7531a92b78d0ec4c28d017f959aea10e97ee3fbd0df191d118fdad85fc5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/04CollapsedCompositeDag/Variantea68514117df3895372bf53a97d2312a478c04a0cf2f5383106e7bda3a72848d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79506be1527ced3b9a452fead1fa30ce697b18b74b5a31a4b218bfdcae8d3120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoNodeGraph : TransferDependencyGraph where
  Node := TwoNode
  node := graphNode
  nodeInjective := by intro a b h; cases a <;> cases b <;> simp_all [graphNode]
  nodeArtifactInjective := by intro a b h; cases a <;> cases b <;> simp_all [graphNode]
  dependsOn := OnlyDependency
  edge := fun {_ _} dependency => match dependency with
    | .edge => ⟨v "summary-edge", .Preserves, composed.artifact,
        composedPreservation.evidenceArtifact⟩
  dependencyRank := fun | .source => 0 | .target => 1
  rankIncreases := by intro _ _ dependency; cases dependency; decide
  validationPolicy := ⟨v "policy", fun _ => True⟩
  validation := fun _ => ⟨v "result", True.intro⟩

/-- A composite lineage is accepted in a derivation whose DAG has only endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/04CollapsedCompositeDag/Variantea68514117df3895372bf53a97d2312a478c04a0cf2f5383106e7bda3a72848d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/04CollapsedCompositeDag/Variantea68514117df3895372bf53a97d2312a478c04a0cf2f5383106e7bda3a72848d.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5a144f118d84d6b455b9d0b5eedf04ae6e1945b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
