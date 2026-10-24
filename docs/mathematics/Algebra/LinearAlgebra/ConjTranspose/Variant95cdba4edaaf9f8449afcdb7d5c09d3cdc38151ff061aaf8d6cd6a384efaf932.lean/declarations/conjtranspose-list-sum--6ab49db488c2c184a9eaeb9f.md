# conjTranspose_list_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e8fa7ea-b0d2-fe94-4143-c4770dba93ee",
  "kind": "theorem",
  "lexical_name": "conjTranspose_list_sum",
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
  "slug": "conjtranspose-list-sum--6ab49db488c2c184a9eaeb9f",
  "source": {
    "blob": "8a3306a72ecfc3a22b6df2e1a5f8fb0b98464058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 332,
    "path": "GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant95cdba4edaaf9f8449afcdb7d5c09d3cdc38151ff061aaf8d6cd6a384efaf932.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ab49db488c2c184a9eaeb9f52477e3ed94d2b6a0a7da4d513ee686e5f602ef6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ConjTranspose/Variant95cdba4edaaf9f8449afcdb7d5c09d3cdc38151ff061aaf8d6cd6a384efaf932.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e8fa7ea-b0d2-fe94-4143-c4770dba93ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjTranspose_list_sum [AddMonoid α] [StarAddMonoid α] (l : List (Matrix m n α)) :
    l.sumᴴ = (l.map conjTranspose).sum :=
  map_list_sum (conjTransposeAddEquiv m n α) l

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ConjTranspose/Variant95cdba4edaaf9f8449afcdb7d5c09d3cdc38151ff061aaf8d6cd6a384efaf932.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant95cdba4edaaf9f8449afcdb7d5c09d3cdc38151ff061aaf8d6cd6a384efaf932.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a3306a72ecfc3a22b6df2e1a5f8fb0b98464058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
