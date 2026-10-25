# endpointGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:455dd4092268366dc5b69afea53ae3c2f771ea46aecf1aa5240238aa5021d418",
  "kind": "def",
  "lexical_name": "endpointGraph",
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
  "slug": "endpointgraph--3f94d0afce7768636a201d54",
  "source": {
    "blob": "3643a374005a85b6a2e028901e32a20890f1918e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f94d0afce7768636a201d5411b620c02861c9ab7b6a867c8b6efb44e9d7fae2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:455dd4092268366dc5b69afea53ae3c2f771ea46aecf1aa5240238aa5021d418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def endpointGraph : TransferDependencyGraph where
  Node := TwoNode
  node := graphNode
  nodeInjective := by intro a b h; cases a <;> cases b <;> simp_all [graphNode]
  nodeArtifactInjective := by intro a b h; cases a <;> cases b <;> simp_all [graphNode]
  dependsOn := EndpointDependency
  edge := fun {_ _} dependency => match dependency with
    | .summary => ⟨v "summary-edge", .Preserves, composed.artifact,
        composedPreservation.evidenceArtifact⟩
    | .firstComponent => ⟨v "first-edge", .Preserves, first.artifact,
        firstPreservation.evidenceArtifact⟩
    | .secondComponent => ⟨v "second-edge", .Preserves, second.artifact,
        secondPreservation.evidenceArtifact⟩
  dependencyRank := fun | .source => 0 | .target => 1
  rankIncreases := by intro _ _ dependency; cases dependency <;> decide
  validationPolicy := ⟨v "policy", fun _ => True⟩
  validation := fun _ => ⟨v "result", True.intro⟩

/-!
All atomic artifacts occur on edges, but there is still no middle node, middle
theory version, or middle proposition.  Thus occurrence coverage does not
enforce the required intermediate provenance model.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/03EndpointOnlyLineage/Variant1a44ff03a1f95d6c05ae6181f492f1c2ae7acc88dd984ecd7a88d0e4b9d8cef3.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3643a374005a85b6a2e028901e32a20890f1918e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
