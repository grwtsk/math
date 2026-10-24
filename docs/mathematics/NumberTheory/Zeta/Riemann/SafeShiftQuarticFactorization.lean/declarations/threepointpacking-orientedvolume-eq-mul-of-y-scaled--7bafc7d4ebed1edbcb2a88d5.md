# ThreePointPacking.orientedVolume_eq_mul_of_y_scaled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dc496b7-e359-81d0-377a-9a67af22e7d6",
  "kind": "theorem",
  "lexical_name": "ThreePointPacking.orientedVolume_eq_mul_of_y_scaled",
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
  "slug": "threepointpacking-orientedvolume-eq-mul-of-y-scaled--7bafc7d4ebed1edbcb2a88d5",
  "source": {
    "blob": "86148978d941a50d17081bdfc31b60b3f5298b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bafc7d4ebed1edbcb2a88d56759e07e2a7311db0c21a26221ed3336a6d9f8e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dc496b7-e359-81d0-377a-9a67af22e7d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ThreePointPacking.orientedVolume_eq_mul_of_y_scaled
    (p q : ThreePointPacking) (c : ℝ)
    (hx0 : p.first.x = q.first.x)
    (hx1 : p.second.x = q.second.x)
    (hx2 : p.third.x = q.third.x)
    (hy0 : p.first.y = c * q.first.y)
    (hy1 : p.second.y = c * q.second.y)
    (hy2 : p.third.y = c * q.third.y) :
    p.orientedVolume = c * q.orientedVolume := by
  unfold orientedVolume edge01 edge12 PackingPoint.sub
  rw [hx0, hx1, hx2, hy0, hy1, hy2]
  ring

/-- The axial oriented area has an exact a^2 factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86148978d941a50d17081bdfc31b60b3f5298b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
