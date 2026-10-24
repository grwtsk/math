# tangentBundleCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e834fa04913d553a8183974292254650c0362d5304935a3c6fb48ef2044bc871",
  "kind": "def",
  "lexical_name": "tangentBundleCore",
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
  "slug": "tangentbundlecore--69e32a7b6a16f05832ebbcaa",
  "source": {
    "blob": "01c1c4ba331ffb253513292547acb94c281ae8f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 95,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant9b83a7693819f7e8ab775d8a2c77c94e5be4348eb47ef7e62aef98cd6e15aad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69e32a7b6a16f05832ebbcaa4af2da0dd2dd79c349a344ac70fa7045cbd86643",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variant9b83a7693819f7e8ab775d8a2c77c94e5be4348eb47ef7e62aef98cd6e15aad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e834fa04913d553a8183974292254650c0362d5304935a3c6fb48ef2044bc871`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tangentBundleCore : VectorBundleCore 𝕜 M E (atlas H M) where
  baseSet i := i.1.source
  isOpen_baseSet i := i.1.open_source
  indexAt := achart H
  mem_baseSet_at := mem_chart_source H
  coordChange i j x :=
    fderivWithin 𝕜 (j.1.extend I ∘ (i.1.extend I).symm) (range I) (i.1.extend I x)
  coordChange_self i x hx v := by
    rw [Filter.EventuallyEq.fderivWithin_eq, fderivWithin_fun_id, ContinuousLinearMap.id_apply]
    · exact I.uniqueDiffWithinAt_image
    · filter_upwards [i.1.extend_target_mem_nhdsWithin hx] with y hy
      exact (i.1.extend I).right_inv hy
    · simp_rw [Function.comp_apply, i.1.extend_left_inv hx]
  continuousOn_coordChange i j := by
    have : IsManifold I (0 + 1) M := by simpa
    refine (contDiffOn_fderiv_coord_change (n := 0) i j).continuousOn.comp
      (i.1.continuousOn_extend.mono ?_) ?_
    · rw [i.1.extend_source]; exact inter_subset_left
    exact mapsTo_iff_image_subset.2 (i.1.extend_image_source_inter j.1).subset
  coordChange_comp := by
    have : IsManifold I (0 + 1) M := by simpa
    rintro i j k x ⟨⟨hxi, hxj⟩, hxk⟩ v
    rw [fderivWithin_fderivWithin, Filter.EventuallyEq.fderivWithin_eq]
    · have := i.1.extend_preimage_mem_nhds (I := I) hxi (j.1.extend_source_mem_nhds (I := I) hxj)
      filter_upwards [nhdsWithin_le_nhds this] with y hy
      simp_rw [Function.comp_apply, (j.1.extend I).left_inv hy]
    · simp_rw [Function.comp_apply, i.1.extend_left_inv hxi, j.1.extend_left_inv hxj]
    · exact (I.contDiffWithinAt_extendCoordChange' (subset_maximalAtlas j.2)
        (subset_maximalAtlas k.2) hxj hxk).differentiableWithinAt one_ne_zero
    · exact (I.contDiffWithinAt_extendCoordChange' (subset_maximalAtlas i.2)
        (subset_maximalAtlas j.2) hxi hxj).differentiableWithinAt one_ne_zero
    · intro x _; exact mem_range_self _
    · exact I.uniqueDiffWithinAt_image
    · rw [Function.comp_apply, i.1.extend_left_inv hxi]

/-- `simp`-normal form is `tangentBundleCore_localTriv_baseSet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variant9b83a7693819f7e8ab775d8a2c77c94e5be4348eb47ef7e62aef98cd6e15aad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant9b83a7693819f7e8ab775d8a2c77c94e5be4348eb47ef7e62aef98cd6e15aad9.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c1c4ba331ffb253513292547acb94c281ae8f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
