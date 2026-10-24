# mulDistribMulAction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0547252f93c91a973c0e466a0f1a0016b9d9266e344a58b0008f193cab492307",
  "kind": "instance",
  "lexical_name": "mulDistribMulAction'",
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
  "slug": "muldistribmulaction--06018357fd9e7c9114d35210",
  "source": {
    "blob": "c5f3ef8854ebb9f7c40255243e0833f27f95cead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 98,
    "path": "GRWTSK/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06018357fd9e7c9114d35210eb01d7bc4c9a0f5aa464de38d3b3237fd3d7b799",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0547252f93c91a973c0e466a0f1a0016b9d9266e344a58b0008f193cab492307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance mulDistribMulAction' [Monoid R] [Monoid M] [MulDistribMulAction R M] :
    MulDistribMulAction R (ULift M) :=
  { ULift.mulAction' with
    smul_one := fun _ => by
      ext
      simp [smul_one]
    smul_mul := fun _ _ _ => by
      ext
      simp [smul_mul'] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ULift/Variant5aa397d66e8b2098f20cb82a8c78687fdbcbc5cae3427ca5ce6fa64252e6c7fd.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f3ef8854ebb9f7c40255243e0833f27f95cead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
