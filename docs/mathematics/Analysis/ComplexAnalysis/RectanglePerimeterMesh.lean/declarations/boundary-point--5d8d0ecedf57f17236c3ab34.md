# boundary_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7da47506-6a39-36b3-dff2-ba3343f8235d",
  "kind": "theorem",
  "lexical_name": "boundary_point",
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
  "slug": "boundary-point--5d8d0ecedf57f17236c3ab34",
  "source": {
    "blob": "92704720d1436269c03efc01a2a20e9be857cf5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 116,
    "path": "GRWTSK/Analysis/Complex/RectanglePerimeterMesh.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d8d0ecedf57f17236c3ab34333c7d7dba8b6c0504bb626d3d8198ceea911d8b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7da47506-6a39-36b3-dff2-ba3343f8235d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_point (D : Rectangle) {z : ℂ} (hz : z ∈ D.boundary) :
    ∃ x ∈ Icc (0 : ℝ) 4, point D x = z := by
  have hseg (a b x : ℝ) (hx : x ∈ Icc a b) := RealPolygonClock.exists_blend hx
  rcases hz.2 with hl | hr | hb | ht
  · obtain ⟨u, hu⟩ := hseg D.bottom D.top z.im ⟨hz.1.2.2.1, hz.1.2.2.2⟩
    refine ⟨4-(u : ℝ), ⟨by linarith [u.2.2], by linarith [u.2.1]⟩, ?_⟩
    rw [point_cell D (j := 3) (by norm_num) (by
      norm_num; constructor <;> linarith [u.2.1, u.2.2])]
    apply Complex.ext
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul, hl]; ring
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul]
      dsimp [RealPolygonClock.blend] at hu
      nlinarith
  · obtain ⟨u, hu⟩ := hseg D.bottom D.top z.im ⟨hz.1.2.2.1, hz.1.2.2.2⟩
    refine ⟨1+(u : ℝ), ⟨by linarith [u.2.1], by linarith [u.2.2]⟩, ?_⟩
    rw [point_cell D (j := 1) (by norm_num) (by
      norm_num; constructor <;> linarith [u.2.1, u.2.2])]
    apply Complex.ext
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul, hr]; ring
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul]
      dsimp [RealPolygonClock.blend] at hu
      nlinarith
  · obtain ⟨u, hu⟩ := hseg D.left D.right z.re ⟨hz.1.1, hz.1.2.1⟩
    refine ⟨(u : ℝ), ⟨u.2.1, by linarith [u.2.2]⟩, ?_⟩
    rw [point_cell D (j := 0) (by norm_num) (by simpa using u.2)]
    apply Complex.ext
    · simpa [Rectangle.corners, PolygonTube.blend, Complex.real_smul,
        RealPolygonClock.blend] using hu
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul, hb]; ring
  · obtain ⟨u, hu⟩ := hseg D.left D.right z.re ⟨hz.1.1, hz.1.2.1⟩
    refine ⟨3-(u : ℝ), ⟨by linarith [u.2.2], by linarith [u.2.1]⟩, ?_⟩
    rw [point_cell D (j := 2) (by norm_num) (by
      norm_num; constructor <;> linarith [u.2.1, u.2.2])]
    apply Complex.ext
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul]
      dsimp [RealPolygonClock.blend] at hu
      nlinarith
    · simp [Rectangle.corners, PolygonTube.blend, Complex.real_smul, ht]; ring

/-- Absolute, unwrapped endpoint coordinates and every whole-cell side label. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectanglePerimeterMesh.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectanglePerimeterMesh.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92704720d1436269c03efc01a2a20e9be857cf5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
