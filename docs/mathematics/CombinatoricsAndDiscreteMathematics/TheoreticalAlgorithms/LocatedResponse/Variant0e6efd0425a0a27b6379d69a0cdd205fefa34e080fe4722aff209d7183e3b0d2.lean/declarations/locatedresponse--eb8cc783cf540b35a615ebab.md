# LocatedResponse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:359f8baf73d409c64bfe5d7398de57ebebbe9999f9203285e13b37680ead6183",
  "kind": "structure",
  "lexical_name": "LocatedResponse",
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
  "slug": "locatedresponse--eb8cc783cf540b35a615ebab",
  "source": {
    "blob": "4c8c3bd029be0e76f0777b01087af61927fa45de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LocatedResponse/Variant0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb8cc783cf540b35a615ebaba59d5a0c35b00f50425ad3b2c19deb68685c1395",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LocatedResponse/Variant0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:359f8baf73d409c64bfe5d7398de57ebebbe9999f9203285e13b37680ead6183`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocatedResponse where
  responseId : StableId
  oracleId : OracleId
  jurisdictionId : StableId
  pointUniverseId : StableId
  projectId : ProjectId
  versionId : StableId
  snapshotId : StableId
  queryDigest : Digest
  expression : String
  location : ResponseLocation
  unknownBranchIds : List StableId
  authority : NavigationAuthority
  responseDigest : Digest
  deriving DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LocatedResponse/Variant0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LocatedResponse/Variant0e6efd0425a0a27b6379d69a0cdd205fefa34e080fe4722aff209d7183e3b0d2.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c8c3bd029be0e76f0777b01087af61927fa45de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
