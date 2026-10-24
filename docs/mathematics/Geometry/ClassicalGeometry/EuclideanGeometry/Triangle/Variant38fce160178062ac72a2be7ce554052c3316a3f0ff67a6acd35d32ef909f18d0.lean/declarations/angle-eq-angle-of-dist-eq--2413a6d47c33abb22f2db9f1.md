# angle_eq_angle_of_dist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee426491-78b5-b872-3651-b42e01dda7db",
  "kind": "theorem",
  "lexical_name": "angle_eq_angle_of_dist_eq",
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
  "slug": "angle-eq-angle-of-dist-eq--2413a6d47c33abb22f2db9f1",
  "source": {
    "blob": "9f5af3e36fc48a921dd30654ba14f7f7c74e37c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 274,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2413a6d47c33abb22f2db9f1fe5f9993dc1300a8fbd5e5c451a775f3964eebdc",
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

Occurrence: `result:ee426491-78b5-b872-3651-b42e01dda7db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angle_eq_angle_of_dist_eq {p₁ p₂ p₃ : P} (h : dist p₁ p₂ = dist p₁ p₃) :
    ∠ p₁ p₂ p₃ = ∠ p₁ p₃ p₂ := by
  rw [dist_eq_norm_vsub V p₁ p₂, dist_eq_norm_vsub V p₁ p₃] at h
  unfold angle
  convert angle_sub_eq_angle_sub_rev_of_norm_eq h
  · exact (vsub_sub_vsub_cancel_left p₃ p₂ p₁).symm
  · exact (vsub_sub_vsub_cancel_left p₂ p₃ p₁).symm

/-- Converse of pons asinorum, angle-at-point form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Triangle/Variant38fce160178062ac72a2be7ce554052c3316a3f0ff67a6acd35d32ef909f18d0.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f5af3e36fc48a921dd30654ba14f7f7c74e37c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
