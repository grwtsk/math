# self_eq_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:769d33bf-473a-8a9a-a911-b21ddd34a5d5",
  "kind": "theorem",
  "lexical_name": "self_eq_neg",
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
  "slug": "self-eq-neg--c866c93f9fdd06cacff08a9b",
  "source": {
    "blob": "62d340abd45db6f4ac8c04623a3f4201783ff816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 700,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant130c902b6fdf65fd757d3d8c36f889001418dd494751e15ba831ae35951c6db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c866c93f9fdd06cacff08a9b08f6a6f127fdb3a39c2af270dad467dd0f3d933c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant130c902b6fdf65fd757d3d8c36f889001418dd494751e15ba831ae35951c6db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:769d33bf-473a-8a9a-a911-b21ddd34a5d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 700–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem self_eq_neg {v : M} : v = -v ↔ v = 0 := by
  rw [← two_nsmul_eq_zero R M, two_smul, add_eq_zero_iff_eq_neg]
#align self_eq_neg self_eq_neg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant130c902b6fdf65fd757d3d8c36f889001418dd494751e15ba831ae35951c6db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant130c902b6fdf65fd757d3d8c36f889001418dd494751e15ba831ae35951c6db2.lean#L700).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62d340abd45db6f4ac8c04623a3f4201783ff816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
