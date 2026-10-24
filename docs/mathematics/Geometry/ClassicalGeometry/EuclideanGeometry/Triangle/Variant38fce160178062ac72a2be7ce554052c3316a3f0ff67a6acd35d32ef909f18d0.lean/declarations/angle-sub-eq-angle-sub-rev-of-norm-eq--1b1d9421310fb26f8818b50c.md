# angle_sub_eq_angle_sub_rev_of_norm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01bb94c3-8d18-633a-34f8-d8d1c96226b7",
  "kind": "theorem",
  "lexical_name": "angle_sub_eq_angle_sub_rev_of_norm_eq",
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
  "slug": "angle-sub-eq-angle-sub-rev-of-norm-eq--1b1d9421310fb26f8818b50c",
  "source": {
    "blob": "9f5af3e36fc48a921dd30654ba14f7f7c74e37c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 71,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b1d9421310fb26f8818b50c02195fc13ca3ee2d1a176cba25218a5788c50f82",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01bb94c3-8d18-633a-34f8-d8d1c96226b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_sub_eq_angle_sub_rev_of_norm_eq {x y : V} (h : ‖x‖ = ‖y‖) :
    angle x (x - y) = angle y (y - x) := by
  refine Real.injOn_cos ⟨angle_nonneg _ _, angle_le_pi _ _⟩ ⟨angle_nonneg _ _, angle_le_pi _ _⟩ ?_
  rw [cos_angle, cos_angle, h, ← neg_sub, norm_neg, neg_sub, inner_sub_right, inner_sub_right,
    real_inner_self_eq_norm_mul_norm, real_inner_self_eq_norm_mul_norm, h, real_inner_comm x y]

/-- **Converse of pons asinorum**, vector angle form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5af3e36fc48a921dd30654ba14f7f7c74e37c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
