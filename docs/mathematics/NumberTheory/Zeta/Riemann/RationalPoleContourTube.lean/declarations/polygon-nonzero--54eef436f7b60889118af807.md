# polygon_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:405744b6-e464-c061-acb7-d6dac9e01e96",
  "kind": "theorem",
  "lexical_name": "polygon_nonzero",
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
  "slug": "polygon-nonzero--54eef436f7b60889118af807",
  "source": {
    "blob": "ad9099397ecd96329db007f67ec1f3e5d58eddf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 162,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54eef436f7b60889118af8071c93eccd755f835f38910272d68bdb4aba221e56",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:405744b6-e464-c061-acb7-d6dac9e01e96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polygon_nonzero {n : ℕ} {vertices images : List Coordinates} {data : List EdgeData}
    (h : check n vertices data images = true) :
    ∀ z ∈ RationalPoleContour.carrier n images, z ≠ 0 := by
  rintro z ⟨i, t, ht, rfl⟩ hz
  have hv := (check_iff_valid _ _ _ _).mp h
  have hd := checked_edge hv.1 i.isLt
  have him := hv.2.2.2 i.val (Finset.mem_range.mpr i.isLt)
  have ha : ‖toComplex (pointAt images i.val) - toComplex (edgeAt data i.val).value.mid‖ ≤
      (imageRadius (edgeAt data i.val) : ℝ) := by
    simpa only [toComplex_sub] using (inBall_iff _ _).mp him.1
  have hb : ‖toComplex (pointAt images (i.val + 1)) - toComplex (edgeAt data i.val).value.mid‖ ≤
      (imageRadius (edgeAt data i.val) : ℝ) := by
    simpa only [toComplex_sub] using (inBall_iff _ _).mp him.2
  have hbound := PolygonTube.norm_blend_sub_le ha hb ht
  rw [hz, zero_sub, norm_neg] at hbound
  exact (not_le_of_gt (image_disk_avoids_zero hd.1)) hbound

end GRWTSK.RiemannHypothesis.RationalPoleContourTube
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9099397ecd96329db007f67ec1f3e5d58eddf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
