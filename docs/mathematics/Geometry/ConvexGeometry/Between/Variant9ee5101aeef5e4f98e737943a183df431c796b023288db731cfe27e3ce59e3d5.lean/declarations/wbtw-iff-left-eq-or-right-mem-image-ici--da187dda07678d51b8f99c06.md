# wbtw_iff_left_eq_or_right_mem_image_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b67178fa-453a-76d5-4cc8-f80b26dbd792",
  "kind": "theorem",
  "lexical_name": "wbtw_iff_left_eq_or_right_mem_image_Ici",
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
  "slug": "wbtw-iff-left-eq-or-right-mem-image-ici--da187dda07678d51b8f99c06",
  "source": {
    "blob": "90cfcc91c41b613890812a3b0e00c15321c159a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 681,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da187dda07678d51b8f99c067672e8a4036a83ef99effc52e229587181cef5c6",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b67178fa-453a-76d5-4cc8-f80b26dbd792`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wbtw_iff_left_eq_or_right_mem_image_Ici {x y z : P} :
    Wbtw R x y z ↔ x = y ∨ z ∈ lineMap x y '' Set.Ici (1 : R) := by
  refine' ⟨fun h => _, fun h => _⟩
  · rcases h with ⟨r, ⟨hr0, hr1⟩, rfl⟩
    rcases hr0.lt_or_eq with (hr0' | rfl)
    · rw [Set.mem_image]
      refine' Or.inr ⟨r⁻¹, one_le_inv hr0' hr1, _⟩
      simp only [lineMap_apply, smul_smul, vadd_vsub]
      rw [inv_mul_cancel hr0'.ne', one_smul, vsub_vadd]
    · simp
  · rcases h with (rfl | ⟨r, ⟨hr, rfl⟩⟩)
    · exact wbtw_self_left _ _ _
    · rw [Set.mem_Ici] at hr
      refine' ⟨r⁻¹, ⟨inv_nonneg.2 (zero_le_one.trans hr), inv_le_one hr⟩, _⟩
      simp only [lineMap_apply, smul_smul, vadd_vsub]
      rw [inv_mul_cancel (one_pos.trans_le hr).ne', one_smul, vsub_vadd]
#align wbtw_iff_left_eq_or_right_mem_image_Ici wbtw_iff_left_eq_or_right_mem_image_Ici

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cfcc91c41b613890812a3b0e00c15321c159a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
