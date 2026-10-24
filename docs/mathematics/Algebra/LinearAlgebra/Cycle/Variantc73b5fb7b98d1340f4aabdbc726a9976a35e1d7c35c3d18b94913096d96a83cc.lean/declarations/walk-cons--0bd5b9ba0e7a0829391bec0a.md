# walk_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7543ebb-a056-d386-20ca-40707c090ae9",
  "kind": "theorem",
  "lexical_name": "walk_cons",
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
  "slug": "walk-cons--0bd5b9ba0e7a0829391bec0a",
  "source": {
    "blob": "0f41e16e11e05306e64804e1434b2cb50c21f54e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bd5b9ba0e7a0829391bec0ad72f14c7de6e2006bd6d113b9237626c9f3a9144",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7543ebb-a056-d386-20ca-40707c090ae9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem walk_cons {n : Nat}
    {A : Matrix n n}
    {source next target : Fin n}
    {rest : List (Fin n)}
    (hedge : Matrix.Edge A source next)
    (hrest : Matrix.IsWalkFrom A next rest target) :
    Matrix.IsWalkFrom A source (next :: rest) target :=
  ⟨hedge, hrest⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f41e16e11e05306e64804e1434b2cb50c21f54e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
