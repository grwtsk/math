# properPartitionsThreeExplicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1520043181f53736db88e691910fada49a207ca7367fa7dd2f2c01eff260c9eb",
  "kind": "def",
  "lexical_name": "properPartitionsThreeExplicit",
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
  "slug": "properpartitionsthreeexplicit--7c668b665b3b87f42686081f",
  "source": {
    "blob": "b0dd6d8530ec4c050bce86a4c136231ce0c9e8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 106,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variantd986a6901c2ddb51b4dd7c3d2fdd996e27266db0bfce568fac48677ce001569d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c668b665b3b87f42686081fcb758130c7fae21140794721f07bce31d251dd6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variantd986a6901c2ddb51b4dd7c3d2fdd996e27266db0bfce568fac48677ce001569d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1520043181f53736db88e691910fada49a207ca7367fa7dd2f2c01eff260c9eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def properPartitionsThreeExplicit :
    Finset (DirectionPartition 3) :=
  {(⊥ : DirectionPartition 3),
    pairPartition01_2,
    pairPartition02_1,
    pairPartition12_0}

/-- The explicit four-element list is exactly the proper-partition finset at
order three.  This is a closed finite combinatorial statement checked by the
kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variantd986a6901c2ddb51b4dd7c3d2fdd996e27266db0bfce568fac48677ce001569d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/3bb7a6a591da285a869156853f993fe86ee8464a4db3d1ae71db85930492787dOrderThreeRecurs/Variantd986a6901c2ddb51b4dd7c3d2fdd996e27266db0bfce568fac48677ce001569d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0dd6d8530ec4c050bce86a4c136231ce0c9e8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
