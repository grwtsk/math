# edge_deformation_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f9ae3ad-34fc-57fb-3c4d-895096811ccd",
  "kind": "theorem",
  "lexical_name": "edge_deformation_nonzero",
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
  "slug": "edge-deformation-nonzero--d450752cf9dbabfcac11548e",
  "source": {
    "blob": "ad9099397ecd96329db007f67ec1f3e5d58eddf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d450752cf9dbabfcac11548ec4f89321cc40b87dbf6d0429c2085542bd3ae724",
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

Occurrence: `result:8f9ae3ad-34fc-57fb-3c4d-895096811ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edge_deformation_nonzero {n i : ℕ} {vertices images : List Coordinates}
    {data : List EdgeData} (h : check n vertices data images = true)
    (he : Enclosures n data) (hi : i < n) {t lam : ℝ}
    (ht : t ∈ Icc (0 : ℝ) 1) (hlam : lam ∈ Icc (0 : ℝ) 1) :
    PolygonTube.deformation poleNormalizedZeta
      (toComplex (pointAt vertices i)) (toComplex (pointAt vertices (i + 1)))
      (toComplex (pointAt images i)) (toComplex (pointAt images (i + 1))) t lam ≠ 0 := by
  have hv := (check_iff_valid _ _ _ _).mp h
  have hd := checked_edge hv.1 hi
  have him := hv.2.2.2 i (Finset.mem_range.mpr hi)
  apply PolygonTube.deformation_nonzero
    (c := toComplex (edgeAt data i).value.mid) (r := (imageRadius (edgeAt data i) : ℝ))
  · intro q hq
    exact source_image_bound hd.1 (he i (Finset.mem_range.mpr hi)) (edge_covered hd hq)
  · simpa only [toComplex_sub] using (inBall_iff _ _).mp him.1
  · simpa only [toComplex_sub] using (inBall_iff _ _).mp him.2
  · exact image_disk_avoids_zero hd.1
  · exact ht
  · exact hlam

/-- The actual source is entire, so every deformation cell is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContourTube.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9099397ecd96329db007f67ec1f3e5d58eddf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
