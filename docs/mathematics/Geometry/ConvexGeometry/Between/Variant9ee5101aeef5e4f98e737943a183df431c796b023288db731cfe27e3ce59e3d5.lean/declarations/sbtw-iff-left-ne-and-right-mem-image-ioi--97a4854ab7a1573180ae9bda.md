# sbtw_iff_left_ne_and_right_mem_image_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a2d5138-20cc-8c5d-61bc-900e19d51b67",
  "kind": "theorem",
  "lexical_name": "sbtw_iff_left_ne_and_right_mem_image_Ioi",
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
  "slug": "sbtw-iff-left-ne-and-right-mem-image-ioi--97a4854ab7a1573180ae9bda",
  "source": {
    "blob": "90cfcc91c41b613890812a3b0e00c15321c159a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 731,
    "line": 710,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97a4854ab7a1573180ae9bda4d16ff0532424b9374e78061f965286b7dae2515",
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

Occurrence: `result:8a2d5138-20cc-8c5d-61bc-900e19d51b67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 710–731.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sbtw_iff_left_ne_and_right_mem_image_Ioi {x y z : P} :
    Sbtw R x y z ↔ x ≠ y ∧ z ∈ lineMap x y '' Set.Ioi (1 : R) := by
  refine' ⟨fun h => ⟨h.left_ne, _⟩, fun h => _⟩
  · obtain ⟨r, ⟨hr, rfl⟩⟩ := h.wbtw.right_mem_image_Ici_of_left_ne h.left_ne
    rw [Set.mem_Ici] at hr
    rcases hr.lt_or_eq with (hrlt | rfl)
    · exact Set.mem_image_of_mem _ hrlt
    · exfalso
      simp at h
  · rcases h with ⟨hne, r, hr, rfl⟩
    rw [Set.mem_Ioi] at hr
    refine'
      ⟨wbtw_iff_left_eq_or_right_mem_image_Ici.2
          (Or.inr (Set.mem_image_of_mem _ (Set.mem_of_mem_of_subset hr Set.Ioi_subset_Ici_self))),
        hne.symm, _⟩
    rw [lineMap_apply, ← @vsub_ne_zero V, vsub_vadd_eq_vsub_sub]
    nth_rw 1 [← one_smul R (y -ᵥ x)]
    rw [← sub_smul, smul_ne_zero_iff, vsub_ne_zero, sub_ne_zero]
    exact ⟨hr.ne, hne.symm⟩
set_option linter.uppercaseLean3 false in
#align sbtw_iff_left_ne_and_right_mem_image_IoI sbtw_iff_left_ne_and_right_mem_image_Ioi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean#L710).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cfcc91c41b613890812a3b0e00c15321c159a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
