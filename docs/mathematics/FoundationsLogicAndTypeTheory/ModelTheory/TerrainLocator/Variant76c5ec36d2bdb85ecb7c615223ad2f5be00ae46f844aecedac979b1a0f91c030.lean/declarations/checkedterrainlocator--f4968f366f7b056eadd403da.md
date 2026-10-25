# CheckedTerrainLocator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc4e6b6952e36e2a2f80866b6390661676b082e45ad437d8b6fd800584c5e51d",
  "kind": "structure",
  "lexical_name": "CheckedTerrainLocator",
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
  "slug": "checkedterrainlocator--f4968f366f7b056eadd403da",
  "source": {
    "blob": "89857581c9bf0841e21384a60c2e211711b5d2fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/TerrainLocator/Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4968f366f7b056eadd403da5e26c6762d9bf966e990e23b441313f14555a237",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/TerrainLocator/Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc4e6b6952e36e2a2f80866b6390661676b082e45ad437d8b6fd800584c5e51d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CheckedTerrainLocator
    (context : TerrainLocatorContext)
    (locator : TerrainLocator) : Type where
  snapshotMatches : locator.snapshotId = context.manifest.snapshotId
  primaryNodesNonempty : locator.primaryNodes.Nonempty
  primaryNodesResolve :
    ∀ nodeId ∈ locator.primaryNodes, context.manifest.HasNode nodeId
  cellFacesResolve :
    ∀ face ∈ locator.cellFaces, context.HasCellFace face
  reasoningChainResolves :
    context.OptionalReasoningChainValid locator.reasoningChain
  foldRouteResolves : ∀ foldId ∈ locator.foldRoute, context.HasFold foldId
  harmonicTubeResolves :
    TerrainLocatorContext.OptionalMember
      context.harmonicTubes locator.harmonicTube
  characterChannelResolves :
    TerrainLocatorContext.OptionalMember
      context.characterChannels locator.characterChannel
  operatorTraceResolves :
    TerrainLocatorContext.OptionalMember
      context.operatorTraces locator.operatorTrace

/--
Fail-closed locator validation.  Successful output carries every proposition
checked by the decision procedure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/TerrainLocator/Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/TerrainLocator/Variant76c5ec36d2bdb85ecb7c615223ad2f5be00ae46f844aecedac979b1a0f91c030.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89857581c9bf0841e21384a60c2e211711b5d2fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
