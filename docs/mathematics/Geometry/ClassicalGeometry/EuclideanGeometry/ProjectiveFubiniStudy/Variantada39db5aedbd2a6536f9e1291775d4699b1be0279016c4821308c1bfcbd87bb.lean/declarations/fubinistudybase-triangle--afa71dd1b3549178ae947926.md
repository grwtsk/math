# fubiniStudyBase_triangle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56eaf12d-33b1-1541-7161-62be74da403c",
  "kind": "theorem",
  "lexical_name": "fubiniStudyBase_triangle",
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
  "slug": "fubinistudybase-triangle--afa71dd1b3549178ae947926",
  "source": {
    "blob": "4207bbba730394f2666283dd79c9bc3e3b0175af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 270,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afa71dd1b3549178ae947926b7d2f5a80e57a0992305afd9d056ddf8154c984e",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56eaf12d-33b1-1541-7161-62be74da403c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fubiniStudyBase_triangle (x y z : H) (hx : x ≠ 0) (hz : z ≠ 0) :
    fubiniStudyBase x z ≤ fubiniStudyBase x y + fubiniStudyBase y z := by
  by_cases hxy : inner ℂ x y = 0
  · have hhalf : fubiniStudyBase x y = Real.pi / 2 := by
      simp [fubiniStudyBase, hxy]
    linarith [fubiniStudyBase_le_pi_div_two x z, fubiniStudyBase_nonneg y z]
  by_cases hyz : inner ℂ y z = 0
  · have hhalf : fubiniStudyBase y z = Real.pi / 2 := by
      simp [fubiniStudyBase, hyz]
    linarith [fubiniStudyBase_le_pi_div_two x z, fubiniStudyBase_nonneg x y]
  letI : InnerProductSpace ℝ H := InnerProductSpace.rclikeToReal ℂ H
  calc
    fubiniStudyBase x z ≤
        InnerProductGeometry.angle (alignLeft x y) (alignRight y z) :=
      fubiniStudyBase_le_angle_align x y z hx hz hxy hyz
    _ ≤ InnerProductGeometry.angle (alignLeft x y) y +
        InnerProductGeometry.angle y (alignRight y z) :=
      InnerProductGeometry.angle_le_angle_add_angle _ _ _
    _ = fubiniStudyBase x y + fubiniStudyBase y z := by
      rw [angle_alignLeft x y hxy, angle_alignRight y z hyz]

/-- Nonzero scaling of the left representative leaves the ray angle unchanged. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ProjectiveFubiniStudy/Variantada39db5aedbd2a6536f9e1291775d4699b1be0279016c4821308c1bfcbd87bb.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4207bbba730394f2666283dd79c9bc3e3b0175af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
