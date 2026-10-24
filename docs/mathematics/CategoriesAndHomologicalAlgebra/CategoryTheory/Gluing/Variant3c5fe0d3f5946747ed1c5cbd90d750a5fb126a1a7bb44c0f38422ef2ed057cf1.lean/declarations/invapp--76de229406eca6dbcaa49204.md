# π_ιInvApp_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6047d905-85c9-9cca-76eb-c5cb28f20c3d",
  "kind": "theorem",
  "lexical_name": "π_ιInvApp_π",
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
  "slug": "invapp--76de229406eca6dbcaa49204",
  "source": {
    "blob": "5b22faf6e74743307c51f730cca92f28fd647146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 439,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76de229406eca6dbcaa49204c67b56a8540812a6354a8f07de0251199779e4e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6047d905-85c9-9cca-76eb-c5cb28f20c3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem π_ιInvApp_π (i j : D.J) (U : Opens (D.U i).carrier) :
    D.diagramOverOpenπ U i ≫ D.ιInvAppπEqMap U ≫ D.ιInvApp U ≫ D.diagramOverOpenπ U j =
      D.diagramOverOpenπ U j := by
  rw [← @cancel_mono
          (f := (componentwiseDiagram 𝖣.diagram.multispan _).map
            (Quiver.Hom.op (WalkingMultispan.Hom.snd (i, j))) ≫ 𝟙 _) ..]
  · simp_rw [Category.assoc]
    rw [limit.w_assoc]
    erw [limit.lift_π_assoc]
    rw [Category.comp_id, Category.comp_id]
    change _ ≫ _ ≫ (_ ≫ _) ≫ _ = _
    rw [congr_app (D.t_id _), id_c_app]
    simp_rw [Category.assoc]
    rw [← Functor.map_comp_assoc]
    -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11224): change `rw` to `erw`
    erw [IsOpenImmersion.inv_naturality_assoc]
    erw [IsOpenImmersion.app_invApp_assoc]
    iterate 3 rw [← Functor.map_comp_assoc]
    rw [NatTrans.naturality_assoc]
    erw [← (D.V (i, j)).presheaf.map_comp]
    convert!
      limit.w (componentwiseDiagram 𝖣.diagram.multispan _)
        (Quiver.Hom.op (WalkingMultispan.Hom.fst (i, j)))
  · rw [Category.comp_id]
    apply +allowSynthFailures mono_comp
    change Mono ((_ ≫ D.f j i).c.app _)
    rw [comp_c_app]
    apply +allowSynthFailures mono_comp
    · erw [D.ι_image_preimage_eq i j U]
      infer_instance
    · have : IsIso (D.t i j).c := by apply c_isIso_of_iso
      infer_instance

set_option backward.isDefEq.respectTransparency.types false in
/-- `ιInvApp` is the inverse of `D.ι i` on `U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b22faf6e74743307c51f730cca92f28fd647146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
