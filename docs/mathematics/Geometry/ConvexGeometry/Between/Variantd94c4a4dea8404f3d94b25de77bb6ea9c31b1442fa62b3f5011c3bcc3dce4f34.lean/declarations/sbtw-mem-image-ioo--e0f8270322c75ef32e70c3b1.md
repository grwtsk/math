# Sbtw.mem_image_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59bc468f-d7d5-f708-a208-1b1f2ad5948a",
  "kind": "theorem",
  "lexical_name": "Sbtw.mem_image_Ioo",
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
  "slug": "sbtw-mem-image-ioo--e0f8270322c75ef32e70c3b1",
  "source": {
    "blob": "0f5ed38000e915ffae35dabc0c1d8ab94a74909b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 253,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0f8270322c75ef32e70c3b16ed0584081167253e283a380c3b0e4f1ca6ae470",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59bc468f-d7d5-f708-a208-1b1f2ad5948a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Sbtw.mem_image_Ioo {x y z : P} (h : Sbtw R x y z) :
    y ∈ lineMap x z '' Set.Ioo (0 : R) 1 := by
  rcases h with ⟨⟨t, ht, rfl⟩, hyx, hyz⟩
  rcases Set.eq_endpoints_or_mem_Ioo_of_mem_Icc ht with (rfl | rfl | ho)
  · exfalso
    exact hyx (lineMap_apply_zero _ _)
  · exfalso
    exact hyz (lineMap_apply_one _ _)
  · exact ⟨t, ho, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5ed38000e915ffae35dabc0c1d8ab94a74909b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
