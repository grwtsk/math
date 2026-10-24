# Collinear.wbtw_or_wbtw_or_wbtw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:296435f5-f9a6-d18e-0e69-fbc44bdce45b",
  "kind": "theorem",
  "lexical_name": "Collinear.wbtw_or_wbtw_or_wbtw",
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
  "slug": "collinear-wbtw-or-wbtw-or-wbtw--8b3aa34f3f89ca5db2a61cf0",
  "source": {
    "blob": "90cfcc91c41b613890812a3b0e00c15321c159a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 891,
    "line": 867,
    "path": "GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b3aa34f3f89ca5db2a61cf06454662bd1eaf2ab6f6b57ccaafcdd10dc64240b",
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

Occurrence: `result:296435f5-f9a6-d18e-0e69-fbc44bdce45b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 867–891.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Collinear.wbtw_or_wbtw_or_wbtw {x y z : P} (h : Collinear R ({x, y, z} : Set P)) :
    Wbtw R x y z ∨ Wbtw R y z x ∨ Wbtw R z x y := by
  rw [collinear_iff_of_mem (Set.mem_insert _ _)] at h
  rcases h with ⟨v, h⟩
  simp_rw [Set.mem_insert_iff, Set.mem_singleton_iff] at h
  have hy := h y (Or.inr (Or.inl rfl))
  have hz := h z (Or.inr (Or.inr rfl))
  rcases hy with ⟨ty, rfl⟩
  rcases hz with ⟨tz, rfl⟩
  rcases lt_trichotomy ty 0 with (hy0 | rfl | hy0)
  · rcases lt_trichotomy tz 0 with (hz0 | rfl | hz0)
    · rw [wbtw_comm (z := x)]
      rw [← or_assoc]
      exact Or.inl (wbtw_or_wbtw_smul_vadd_of_nonpos _ _ hy0.le hz0.le)
    · simp
    · exact Or.inr (Or.inr (wbtw_smul_vadd_smul_vadd_of_nonneg_of_nonpos _ _ hz0.le hy0.le))
  · simp
  · rcases lt_trichotomy tz 0 with (hz0 | rfl | hz0)
    · refine' Or.inr (Or.inr (wbtw_smul_vadd_smul_vadd_of_nonpos_of_nonneg _ _ hz0.le hy0.le))
    · simp
    · rw [wbtw_comm (z := x)]
      rw [← or_assoc]
      exact Or.inl (wbtw_or_wbtw_smul_vadd_of_nonneg _ _ hy0.le hz0.le)
#align collinear.wbtw_or_wbtw_or_wbtw Collinear.wbtw_or_wbtw_or_wbtw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Between/Variant9ee5101aeef5e4f98e737943a183df431c796b023288db731cfe27e3ce59e3d5.lean#L867).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90cfcc91c41b613890812a3b0e00c15321c159a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
