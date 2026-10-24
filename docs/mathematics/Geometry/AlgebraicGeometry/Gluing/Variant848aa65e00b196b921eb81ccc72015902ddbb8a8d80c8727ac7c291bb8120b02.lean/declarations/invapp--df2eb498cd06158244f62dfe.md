# ιInvApp_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93ddc106-6de8-cf09-3216-65b10ec99377",
  "kind": "theorem",
  "lexical_name": "ιInvApp_π",
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
  "slug": "invapp--df2eb498cd06158244f62dfe",
  "source": {
    "blob": "3073bc48c7f9bb8329cbd87b2290f3aa40e33f14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 421,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df2eb498cd06158244f62dfe6ae16fe5fd03f388a9731b8cc1e9a96f280408e7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93ddc106-6de8-cf09-3216-65b10ec99377`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ιInvApp_π {i : D.J} (U : Opens (D.U i).carrier) :
    ∃ eq, D.ιInvApp U ≫ D.diagramOverOpenπ U i = (D.U i).presheaf.map (eqToHom eq) := by
  fconstructor
  -- Porting note: I don't know what the magic was in Lean3 proof, it just skipped the proof of `eq`
  · congr; ext1; change _ = _ ⁻¹' (_ '' _); ext1 x
    simp only [SetLike.mem_coe, diagram_l, diagram_r, unop_op, Set.mem_preimage, Set.mem_image]
    refine ⟨fun h => ⟨_, h, rfl⟩, ?_⟩
    rintro ⟨y, h1, h2⟩
    convert h1 using 1
    delta ι Multicoequalizer.π at h2
    apply_fun (D.ι _).base
    · exact h2.symm
    · have := D.ι_gluedIso_inv (PresheafedSpace.forget _) i
      dsimp at this
      rw [←this, coe_comp]
      refine Function.Injective.comp ?_ (TopCat.GlueData.ι_injective D.toTopGlueData i)
      rw [←TopCat.mono_iff_injective]
      infer_instance
  delta ιInvApp
  rw [limit.lift_π]
  change D.opensImagePreimageMap i i U = _
  dsimp [opensImagePreimageMap]
  rw [congr_app (D.t_id _), id_c_app, ← Functor.map_comp]
  erw [IsOpenImmersion.inv_naturality_assoc, IsOpenImmersion.app_inv_app'_assoc]
  · simp only [eqToHom_op, eqToHom_trans, eqToHom_map (Functor.op _), ← Functor.map_comp]
    rfl
  · rw [Set.range_iff_surjective.mpr _]
    · simp
    · rw [← TopCat.epi_iff_surjective]
      infer_instance
#align algebraic_geometry.PresheafedSpace.glue_data.ι_inv_app_π AlgebraicGeometry.PresheafedSpace.GlueData.ιInvApp_π

/-- The `eqToHom` given by `ιInvApp_π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3073bc48c7f9bb8329cbd87b2290f3aa40e33f14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
