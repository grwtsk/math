# image_eq_inter_preimage_of_subset_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e080a2f-cee5-5964-ea65-91a412ab8e44",
  "kind": "theorem",
  "lexical_name": "image_eq_inter_preimage_of_subset_support",
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
  "slug": "image-eq-inter-preimage-of-subset-support--38b2f41d0affaa250fb75190",
  "source": {
    "blob": "bd0b41c6fb435d8a47431b66915b362933ad48d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 148,
    "path": "GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant5660eb716f13719337074801e7e77bc855f1a55793c3aa1179708058600b75ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38b2f41d0affaa250fb7519066c1cde7cc035355e0d2dc7dcca7925e3340bf2d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/BumpFunction/Variant5660eb716f13719337074801e7e77bc855f1a55793c3aa1179708058600b75ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e080a2f-cee5-5964-ea65-91a412ab8e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_eq_inter_preimage_of_subset_support {s : Set M} (hs : s ⊆ support f) :
    extChartAt I c '' s =
      closedBall (extChartAt I c c) f.rOut ∩ range I ∩ (extChartAt I c).symm ⁻¹' s := by
  rw [support_eq_inter_preimage, subset_inter_iff, ← extChartAt_source I, ← image_subset_iff] at hs
  obtain ⟨hse, hsf⟩ := hs
  apply Subset.antisymm
  · refine subset_inter (subset_inter (hsf.trans ball_subset_closedBall) ?_) ?_
    · rintro _ ⟨x, -, rfl⟩; exact mem_range_self _
    · rw [(extChartAt I c).image_eq_target_inter_inv_preimage hse]
      exact inter_subset_right
  · refine Subset.trans (inter_subset_inter_left _ f.closedBall_subset) ?_
    rw [(extChartAt I c).image_eq_target_inter_inv_preimage hse]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/BumpFunction/Variant5660eb716f13719337074801e7e77bc855f1a55793c3aa1179708058600b75ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant5660eb716f13719337074801e7e77bc855f1a55793c3aa1179708058600b75ce.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd0b41c6fb435d8a47431b66915b362933ad48d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
