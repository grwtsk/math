# Collinear.sbtw_of_dist_eq_of_dist_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e69e356-d14d-b699-301b-984a5c4fe2e2",
  "kind": "theorem",
  "lexical_name": "Collinear.sbtw_of_dist_eq_of_dist_lt",
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
  "slug": "collinear-sbtw-of-dist-eq-of-dist-lt--9c87bf2354251627ea2581f2",
  "source": {
    "blob": "c865d37a730e5b142b22f9f5def2cdd9c80e45c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c87bf2354251627ea2581f249d25896fd25a35001f3c2d7944bc39252d73896",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e69e356-d14d-b699-301b-984a5c4fe2e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Collinear.sbtw_of_dist_eq_of_dist_lt {p p₁ p₂ p₃ : P} {r : ℝ}
    (h : Collinear ℝ ({p₁, p₂, p₃} : Set P)) (hp₁ : dist p₁ p = r) (hp₂ : dist p₂ p < r)
    (hp₃ : dist p₃ p = r) (hp₁p₃ : p₁ ≠ p₃) : Sbtw ℝ p₁ p₂ p₃ := by
  refine' ⟨h.wbtw_of_dist_eq_of_dist_le hp₁ hp₂.le hp₃ hp₁p₃, _, _⟩
  · rintro rfl
    exact hp₂.ne hp₁
  · rintro rfl
    exact hp₂.ne hp₃
#align collinear.sbtw_of_dist_eq_of_dist_lt Collinear.sbtw_of_dist_eq_of_dist_lt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianta1981f9c35dd7198cae69fb32d0b2b7074ac93e5976d166a5397aaaa862544b4.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c865d37a730e5b142b22f9f5def2cdd9c80e45c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
