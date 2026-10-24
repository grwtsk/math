# Y_ne_negY_of_Y_ne'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e0f1852-80c8-a97a-42e4-891a29f773c1",
  "kind": "lemma",
  "lexical_name": "Y_ne_negY_of_Y_ne'",
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
  "slug": "y-ne-negy-of-y-ne--176ed5bf81e050da143a6a87",
  "source": {
    "blob": "4a8f4c270e03d36756a9c4a314108d1ece1e23f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 149,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:176ed5bf81e050da143a6a87bd402a363fe9b28be3a5424648f18351685f763d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e0f1852-80c8-a97a-42e4-891a29f773c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Y_ne_negY_of_Y_ne' [NoZeroDivisors R] {P Q : Fin 3 → R} (hP : W'.Equation P)
    (hQ : W'.Equation Q) (hx : P x * Q z ^ 2 = Q x * P z ^ 2)
    (hy : P y * Q z ^ 3 ≠ W'.negY Q * P z ^ 3) : P y ≠ W'.negY P := by
  have hy' : P y * Q z ^ 3 - Q y * P z ^ 3 = 0 :=
    (mul_eq_zero.mp <| Y_sub_Y_mul_Y_sub_negY hP hQ hx).resolve_right <| sub_ne_zero_of_ne hy
  contrapose! hy
  linear_combination (norm := ring1) Y_sub_Y_add_Y_sub_negY hx + Q z ^ 3 * hy - hy'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8f4c270e03d36756a9c4a314108d1ece1e23f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
