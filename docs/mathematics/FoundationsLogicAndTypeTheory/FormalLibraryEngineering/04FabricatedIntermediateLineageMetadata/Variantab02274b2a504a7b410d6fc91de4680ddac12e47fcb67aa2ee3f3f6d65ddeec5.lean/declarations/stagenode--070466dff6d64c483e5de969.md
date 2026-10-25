# stageNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfddb18151089282c12ce4923207b02a3220e2473a32cbdc89621558d85de46c",
  "kind": "def",
  "lexical_name": "stageNode",
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
  "slug": "stagenode--070466dff6d64c483e5de969",
  "source": {
    "blob": "7785f9852368ddab9c213c7b4494a2ad4819365d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/04FabricatedIntermediateLineageMetadata/Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:070466dff6d64c483e5de969d239f86d4e6deec23b6e51e45f938cdffde75ed6",
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

Occurrence: `declaration:cfddb18151089282c12ce4923207b02a3220e2473a32cbdc89621558d85de46c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stageNode : Stage → TransferNode
  | .source => {
      nodeArtifact := ⟨.roleTagged "cycle-5-lineage" 0 (v "source-node")⟩
      kind := .SourceTheorem
      theoryVersionArtifact := ⟨v "source-theory"⟩
      theoremArtifact := some ⟨v "source-theorem"⟩
      propositionArtifact := some ⟨v "source-proposition"⟩
      supportingArtifacts := []
    }
  | .middle => {
      nodeArtifact := ⟨.roleTagged "cycle-5-lineage" 1 (v "middle-node")⟩
      kind := .GenericIntermediate
      theoryVersionArtifact := ⟨fabricatedMiddleTheoryVersion⟩
      theoremArtifact := none
      propositionArtifact := some ⟨fabricatedMiddleProposition⟩
      supportingArtifacts := []
    }
  | .target => {
      nodeArtifact := ⟨.roleTagged "cycle-5-lineage" 2 (v "target-node")⟩
      kind := .TargetTheorem
      theoryVersionArtifact := ⟨v "target-theory"⟩
      theoremArtifact := some ⟨v "target-theorem"⟩
      propositionArtifact := some ⟨v "target-proposition"⟩
      supportingArtifacts := []
    }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/04FabricatedIntermediateLineageMetadata/Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/04FabricatedIntermediateLineageMetadata/Variantab02274b2a504a7b410d6fc91de4680ddac12e47fcb67aa2ee3f3f6d65ddeec5.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7785f9852368ddab9c213c7b4494a2ad4819365d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
