# fullStageNodeArtifact_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50ded052-4fdb-71d9-7e02-7745d022825f",
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
  "slug": "fullstagenodeartifact-injective--68d0454136f9cf2bb8c4d2e3",
  "source": {
    "blob": "f52cb44ef4293b47f08c80fb785a9d8f6e197db7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 867,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68d0454136f9cf2bb8c4d2e36834345c6cbfcbd47ddc45d0083e25f7e7491989",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50ded052-4fdb-71d9-7e02-7745d022825f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 867–875.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean#L867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52cb44ef4293b47f08c80fb785a9d8f6e197db7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
