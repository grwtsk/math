# tangentBundleCore.isSmooth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d97435d9d649efef2542c23428aecce02242fde8bc43b2d302901918d6b138d4",
  "kind": "instance",
  "lexical_name": "tangentBundleCore.isSmooth",
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
  "slug": "tangentbundlecore-issmooth--0832b5fbcab1448c8ff8915c",
  "source": {
    "blob": "5d06efd071cf7ec8889d7ad4244e87e21b413d48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 313,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0832b5fbcab1448c8ff8915c46d28aa1f955d9dee2f7c9ce610f4a41e082cff4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d97435d9d649efef2542c23428aecce02242fde8bc43b2d302901918d6b138d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tangentBundleCore.isSmooth : (tangentBundleCore I M).IsSmooth I := by
  refine' ⟨fun i j => _⟩
  rw [SmoothOn, contMDiffOn_iff_source_of_mem_maximalAtlas (subset_maximalAtlas I i.2),
    contMDiffOn_iff_contDiffOn]
  refine' ((contDiffOn_fderiv_coord_change I i j).congr fun x hx => _).mono _
  · rw [LocalEquiv.trans_source'] at hx
    simp_rw [Function.comp_apply, tangentBundleCore_coordChange, (i.1.extend I).right_inv hx.1]
  · exact (i.1.extend_image_source_inter j.1 I).subset
  · apply inter_subset_left
#align tangent_bundle_core.is_smooth tangentBundleCore.isSmooth

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d06efd071cf7ec8889d7ad4244e87e21b413d48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
