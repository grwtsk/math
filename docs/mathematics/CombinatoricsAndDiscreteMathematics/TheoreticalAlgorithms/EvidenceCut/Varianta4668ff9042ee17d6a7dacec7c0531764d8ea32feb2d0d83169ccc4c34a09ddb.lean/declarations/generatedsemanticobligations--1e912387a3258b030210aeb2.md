# GeneratedSemanticObligations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3ee0362dec76d49061f091f6a9059a4b7ea35c32afdb59ced2a603f13319d3a",
  "kind": "structure",
  "lexical_name": "GeneratedSemanticObligations",
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
  "slug": "generatedsemanticobligations--1e912387a3258b030210aeb2",
  "source": {
    "blob": "317f4e564bdbe671f0f60a3c64462bffd84f70e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 17,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e912387a3258b030210aeb2d495283a44732674db92c253caaa4e04a524d006",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3ee0362dec76d49061f091f6a9059a4b7ea35c32afdb59ced2a603f13319d3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GeneratedSemanticObligations
    (text : TextCarrier) where
  generatorId : StableId
  generator_id_valid : generatorId.Valid
  sourceDigest : Digest
  source_digest_exact :
    sourceDigest = text.sourceDigest
  snapshot : SnapshotId
  sourceUnknowns : List SemanticTokenUnknownKind
  obligations : List StableId
  obligation_count_exact :
    obligations.length = sourceUnknowns.length
  obligation_identities_nodup :
    obligations.Nodup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EvidenceCut/Varianta4668ff9042ee17d6a7dacec7c0531764d8ea32feb2d0d83169ccc4c34a09ddb.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `317f4e564bdbe671f0f60a3c64462bffd84f70e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
