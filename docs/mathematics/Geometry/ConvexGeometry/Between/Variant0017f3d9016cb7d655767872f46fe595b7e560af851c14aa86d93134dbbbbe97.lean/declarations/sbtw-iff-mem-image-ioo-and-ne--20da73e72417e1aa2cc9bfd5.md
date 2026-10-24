# sbtw_iff_mem_image_Ioo_and_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:026a0e92-e19f-0f4e-e10a-4550403bb4f5",
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
  "slug": "sbtw-iff-mem-image-ioo-and-ne--20da73e72417e1aa2cc9bfd5",
  "source": {
    "blob": "355f6d168937263c79e43098d714e32961142d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 492,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20da73e72417e1aa2cc9bfd54afba28f001990d16f3c72e38d4e8bb3875b48ac",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:026a0e92-e19f-0f4e-e10a-4550403bb4f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sbtw_iff_mem_image_Ioo_and_ne :
    Sbtw R x y z ↔ y ∈ lineMap x z '' Set.Ioo (0 : R) 1 ∧ x ≠ z := by
  refine ⟨fun h => ⟨h.mem_image_Ioo, h.left_ne_right⟩, fun h => ?_⟩
  rcases h with ⟨⟨t, ht, rfl⟩, hxz⟩
  refine ⟨⟨t, Set.mem_Icc_of_Ioo ht, rfl⟩, ?_⟩
  rw [lineMap_apply, ← @vsub_ne_zero V, ← @vsub_ne_zero V _ _ _ _ z, vadd_vsub_assoc, vsub_self,
    vadd_vsub_assoc, ← neg_vsub_eq_vsub_rev z x, ← @neg_one_smul R, ← add_smul, ← sub_eq_add_neg]
  simp [sub_eq_zero, ht.1.ne.symm, ht.2.ne, hxz.symm]

variable (R z) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant0017f3d9016cb7d655767872f46fe595b7e560af851c14aa86d93134dbbbbe97.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `355f6d168937263c79e43098d714e32961142d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
