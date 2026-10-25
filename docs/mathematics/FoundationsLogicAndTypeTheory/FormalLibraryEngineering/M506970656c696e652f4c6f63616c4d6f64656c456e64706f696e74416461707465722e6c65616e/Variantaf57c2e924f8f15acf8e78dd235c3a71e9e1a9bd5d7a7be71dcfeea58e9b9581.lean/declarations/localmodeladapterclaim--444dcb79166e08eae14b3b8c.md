# localModelAdapterClaim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abb8adf5d42297d126545d38c92b32e641996a706848fde8dcc739a31fe84a26",
  "kind": "def",
  "lexical_name": "localModelAdapterClaim",
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
  "slug": "localmodeladapterclaim--444dcb79166e08eae14b3b8c",
  "source": {
    "blob": "51e40de9e0dde7fcffff8d5ddacea9a6cd36cdac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:444dcb79166e08eae14b3b8c9d9c809857ddd3f565e5f22f62c9ae8721dff30c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abb8adf5d42297d126545d38c92b32e641996a706848fde8dcc739a31fe84a26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def localModelAdapterClaim : LocalModelClaim :=
  { requestTag := .discover
    responseTag := .pipelineRequest
    endpointHint := .authorityOrRefusalEndpoint
    status := .candidate_generalization
    checkedProofImported := false
    externalHypothesesDischarged := false
    discoveryPipelineOwned := true
    compactificationPipelineOwned := true
    classificationPipelineOwned := true
    theoremExportPermissionRefused := true }

/-- Direct authority requests from the model are recorded as refused overclaims. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f4c6f63616c4d6f64656c456e64706f696e74416461707465722e6c65616e/Variantaf57c2e924f8f15acf8e78dd235c3a71e9e1a9bd5d7a7be71dcfeea58e9b9581.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51e40de9e0dde7fcffff8d5ddacea9a6cd36cdac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
