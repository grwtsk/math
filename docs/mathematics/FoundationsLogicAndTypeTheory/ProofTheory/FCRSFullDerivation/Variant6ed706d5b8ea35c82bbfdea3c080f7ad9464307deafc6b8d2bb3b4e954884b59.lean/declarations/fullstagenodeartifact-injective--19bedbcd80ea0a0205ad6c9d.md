# fullStageNodeArtifact_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57bcae1bd79f4d23b65d15215540e9dee9c84c53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 859,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d39a5e0c-9bb2-8354-910a-b8ec5a0ef5a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:926e3525-6fea-6755-b281-d65aefaab8d8",
  "kind": "theorem",
  "lexical_name": "fullStageNodeArtifact_injective",
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
  "slug": "fullstagenodeartifact-injective--19bedbcd80ea0a0205ad6c9d",
  "source": {
    "blob": "57bcae1bd79f4d23b65d15215540e9dee9c84c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 867,
    "line": 859,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19bedbcd80ea0a0205ad6c9dd18dca0f57105d0c1ef9b232875d71a2a1133eb8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:926e3525-6fea-6755-b281-d65aefaab8d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 859–867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullStageNodeArtifact_injective (derivation : NativeDerivation) :
    Function.Injective (fun stage =>
      (fullStageNode derivation stage).nodeArtifact) := by
  intro left right equality
  apply FullTTAStage.identityCode_injective
  have identityEquality := congrArg TypedVersionId.identity equality
  exact (VersionId.roleTagged.inj identityEquality).2.1

/-- Every projected edge names the exact bridge and evidence used at that stage. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean#L859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bcae1bd79f4d23b65d15215540e9dee9c84c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
