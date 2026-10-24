# norm_withLpEquiv_symm_crossProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9af6342-e2a1-9e9b-8aa7-fc897dc2af12",
  "kind": "theorem",
  "lexical_name": "norm_withLpEquiv_symm_crossProduct",
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
  "slug": "norm-withlpequiv-symm-crossproduct--8be600629e2a6c6b926912df",
  "source": {
    "blob": "58d25c143574f1d2aa918e05d879843336f9952d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8be600629e2a6c6b926912df4c1e4aff016cde02e657d23faecb395f622486bc",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9af6342-e2a1-9e9b-8aa7-fc897dc2af12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_withLpEquiv_symm_crossProduct (a b : Fin 3 → ℝ) :
    ‖(WithLp.equiv 2 (Fin 3 → ℝ)).symm (a ×₃ b)‖ =
    ‖(WithLp.equiv 2 (Fin 3 → ℝ)).symm a‖ * ‖(WithLp.equiv 2 (Fin 3 → ℝ)).symm b‖ *
      sin (angle ((WithLp.equiv 2 (Fin 3 → ℝ)).symm a) ((WithLp.equiv 2 (Fin 3 → ℝ)).symm b)) := by
  rw [← norm_withLpEquiv_crossProduct ((WithLp.equiv _ _).symm a) ((WithLp.equiv _ _).symm b)]
  simp

end InnerProductGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CrossProduct/Variant7e3be83db965697c42737cda61b66f45b1decfab23a7fa1d9ab47b52dcd4b2fc.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d25c143574f1d2aa918e05d879843336f9952d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
