# chart_image_preimage_eq_overlap_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff633880-3c10-0c19-71b4-d82520d2593c",
  "kind": "theorem",
  "lexical_name": "chart_image_preimage_eq_overlap_image",
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
  "slug": "chart-image-preimage-eq-overlap-image--84c4e67c5dc17acf776c7a76",
  "source": {
    "blob": "604c2149f382a2c9b57475ee7c1815a0f146084b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 39,
    "path": "GRWTSK/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84c4e67c5dc17acf776c7a769c853f591496790be7103f3d44920bc868992a71",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff633880-3c10-0c19-71b4-d82520d2593c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chart_image_preimage_eq_overlap_image (I J : Fin k ↪o Fin n)
    (V : Set (NormalizedPivotFrame I)) :
    normalizedPivotPlane J ⁻¹' (normalizedPivotPlane I '' V) =
      Subtype.val '' ((fun B : NormalizedPivotOverlap J I =>
        (normalizedOverlapChange J I B).val) ⁻¹' V) := by
  ext B
  constructor
  · rintro ⟨C, hC, hCB⟩
    have hBI : columnMinor B.val I ≠ 0 :=
      (representedPlane_mem_intrinsicPivotDomain_iff
        ⟨B.val, normalizedPivotFrame_rank J B⟩ I).mp ⟨C, hCB⟩
    let D : NormalizedPivotOverlap J I := ⟨B, hBI⟩
    refine ⟨D, ?_, rfl⟩
    have he : (normalizedOverlapChange J I D).val = C :=
      normalizedPivotPlane_injective I ((normalizedOverlapChange_plane J I D).trans hCB.symm)
    change (normalizedOverlapChange J I D).val ∈ V
    rw [he]
    exact hC
  · rintro ⟨D, hD, rfl⟩
    exact ⟨(normalizedOverlapChange J I D).val, hD, normalizedOverlapChange_plane J I D⟩

/-- Every normalized pivot chart sends actual open subsets to intrinsic open subsets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotChartTopology/Variant716d72b6fdfa5e067adaa11cd019c32bf574a5aebf214cbe14c9b56a293916c7.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `604c2149f382a2c9b57475ee7c1815a0f146084b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
