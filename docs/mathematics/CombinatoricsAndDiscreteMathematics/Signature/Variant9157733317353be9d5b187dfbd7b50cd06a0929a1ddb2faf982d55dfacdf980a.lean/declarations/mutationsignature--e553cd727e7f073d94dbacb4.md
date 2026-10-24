# MutationSignature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddf15351235e2744618b19a1ac9a91dd81f22f06d6db45b51d720389f5b37ee0",
  "kind": "structure",
  "lexical_name": "MutationSignature",
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
  "slug": "mutationsignature--e553cd727e7f073d94dbacb4",
  "source": {
    "blob": "099605dcd2909ab92c5e6f638ddba482a4a9c1ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Signature/Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e553cd727e7f073d94dbacb460e5c25b88cd0a0923f9edc6bdd14aa2eb9e63c0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Signature/Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddf15351235e2744618b19a1ac9a91dd81f22f06d6db45b51d720389f5b37ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MutationSignature where
  signatureId : StableId
  mutationProgramId : StableId
  cone : Finset StableId
  frontier : Finset StableId
  boundaries : List BoundaryCrossing
  affectedStrata : StratumSet
  coordinates : StableId → Option MutationCoordinate
  detectorResponses : StableId → Option Bool
  unresolvedResidue : Finset StableId
  coverageDigest : Digest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Signature/Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Signature/Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `099605dcd2909ab92c5e6f638ddba482a4a9c1ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
