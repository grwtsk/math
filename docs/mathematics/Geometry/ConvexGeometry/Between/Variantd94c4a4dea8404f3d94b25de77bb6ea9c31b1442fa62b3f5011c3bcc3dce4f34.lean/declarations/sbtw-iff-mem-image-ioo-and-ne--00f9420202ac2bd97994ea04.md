# sbtw_iff_mem_image_Ioo_and_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4c8c0ff-b45a-dfd5-6ebe-036804da8813",
  "kind": "theorem",
  "lexical_name": "sbtw_iff_mem_image_Ioo_and_ne",
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
  "slug": "sbtw-iff-mem-image-ioo-and-ne--00f9420202ac2bd97994ea04",
  "source": {
    "blob": "0f5ed38000e915ffae35dabc0c1d8ab94a74909b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 314,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00f9420202ac2bd97994ea0491dafb4960b667ad1d1726db0460e6212e5cb7c4",
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

Occurrence: `result:f4c8c0ff-b45a-dfd5-6ebe-036804da8813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sbtw_iff_mem_image_Ioo_and_ne [NoZeroSMulDivisors R V] {x y z : P} :
    Sbtw R x y z ↔ y ∈ lineMap x z '' Set.Ioo (0 : R) 1 ∧ x ≠ z := by
  refine ⟨fun h => ⟨h.mem_image_Ioo, h.left_ne_right⟩, fun h => ?_⟩
  rcases h with ⟨⟨t, ht, rfl⟩, hxz⟩
  refine ⟨⟨t, Set.mem_Icc_of_Ioo ht, rfl⟩, ?_⟩
  rw [lineMap_apply, ← @vsub_ne_zero V, ← @vsub_ne_zero V _ _ _ _ z, vadd_vsub_assoc, vsub_self,
    vadd_vsub_assoc, ← neg_vsub_eq_vsub_rev z x, ← @neg_one_smul R, ← add_smul, ← sub_eq_add_neg]
  simp [smul_ne_zero, sub_eq_zero, ht.1.ne.symm, ht.2.ne, hxz.symm]

variable (R)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variantd94c4a4dea8404f3d94b25de77bb6ea9c31b1442fa62b3f5011c3bcc3dce4f34.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f5ed38000e915ffae35dabc0c1d8ab94a74909b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
