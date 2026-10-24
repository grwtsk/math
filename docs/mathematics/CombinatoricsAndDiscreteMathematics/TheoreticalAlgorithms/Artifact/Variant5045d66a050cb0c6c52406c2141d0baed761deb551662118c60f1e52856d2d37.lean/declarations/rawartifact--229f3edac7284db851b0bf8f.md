# RawArtifact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7b069baff221474c10795603e0e0ac0aec9eb915709d493b0a4fede88b06e39",
  "kind": "structure",
  "lexical_name": "RawArtifact",
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
  "slug": "rawartifact--229f3edac7284db851b0bf8f",
  "source": {
    "blob": "496bb8fe7189dfe5d0aa79854f164a76d4fc9241",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 33,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant5045d66a050cb0c6c52406c2141d0baed761deb551662118c60f1e52856d2d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:229f3edac7284db851b0bf8f9b2773d828ecf4fcf5b6bb2362119a09a6e49b69",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant5045d66a050cb0c6c52406c2141d0baed761deb551662118c60f1e52856d2d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7b069baff221474c10795603e0e0ac0aec9eb915709d493b0a4fede88b06e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RawArtifact where
  artifactId : ArtifactId
  address : SourceObjectAddress
  storageObjectId : StableId
  kind : ArtifactKind
  byteCount : Nat
  executable : Bool
  mediaType : String
  license : LicenseRecord
  sourceBytes : Array UInt8
  storedBytes : Array UInt8
  stored_bytes_round_trip : storedBytes = sourceBytes
  byte_count_exact : byteCount = sourceBytes.size
  storedBytesDigest : Digest
  stored_bytes_exact : storedBytesDigest = address.contentDigest
  captureDigest : Digest
  deriving DecidableEq, Repr

/-- Semantic opacity is represented explicitly rather than as omission. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant5045d66a050cb0c6c52406c2141d0baed761deb551662118c60f1e52856d2d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Artifact/Variant5045d66a050cb0c6c52406c2141d0baed761deb551662118c60f1e52856d2d37.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `496bb8fe7189dfe5d0aa79854f164a76d4fc9241` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
