# fabricatedMiddleGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45523b88134f0ce33da6071c8d4b4146220e43dca7a347f908263fcbdd79f9ea",
  "kind": "def",
  "lexical_name": "fabricatedMiddleGraph",
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
  "slug": "fabricatedmiddlegraph--47fa64d1346cb7cc270b8a6e",
  "source": {
    "blob": "7785f9852368ddab9c213c7b4494a2ad4819365d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/04FabricatedIntermediateLineageMetadata/Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47fa64d1346cb7cc270b8a6e6b4d1f4c5030004545e1c140014369471a03af0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/04FabricatedIntermediateLineageMetadata/Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45523b88134f0ce33da6071c8d4b4146220e43dca7a347f908263fcbdd79f9ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fabricatedMiddleGraph : TransferDependencyGraph where
  Node := Stage
  node := stageNode
  nodeInjective := by intro a b h; cases a <;> cases b <;> simp_all [stageNode]
  nodeArtifactInjective := by intro a b h; cases a <;> cases b <;> simp_all [stageNode]
  dependsOn := StageDependency
  edge := fun {_ _} dependency => match dependency with
    | .first => ⟨v "first-edge", .Preserves, v "first", v "first-evidence"⟩
    | .second => ⟨v "second-edge", .Preserves, v "second", v "second-evidence"⟩
  dependencyRank := fun | .source => 0 | .middle => 1 | .target => 2
  rankIncreases := by intro _ _ dependency; cases dependency <;> decide
  validationPolicy := ⟨v "policy", fun _ => True⟩
  validation := fun _ => ⟨v "result", True.intro⟩

/-!
The lineage contains only the two atomic artifact IDs.  Its composite
realization accepts the graph's fabricated middle version/proposition because
there is no expected middle theory or proposition in `TranslationLineage` to
which either value could be compared.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/04FabricatedIntermediateLineageMetadata/Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/04FabricatedIntermediateLineageMetadata/Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7785f9852368ddab9c213c7b4494a2ad4819365d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
