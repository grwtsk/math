# vComp_iff_of_equivalences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c04d5ff3-2748-445d-65da-ff9bd2f214ff",
  "kind": "lemma",
  "lexical_name": "vComp_iff_of_equivalences",
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
  "slug": "vcomp-iff-of-equivalences--5e4d9ed7cb4d8e4189876513",
  "source": {
    "blob": "54675ad8b7a54670e4c6509148c6dda621ee4b60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e4d9ed7cb4d8e4189876513b623408613c6c4673f54a7b8f149ecc04a855cdb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c04d5ff3-2748-445d-65da-ff9bd2f214ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma vComp_iff_of_equivalences (eL : C₂ ≌ C₃) (eR : D₂ ≌ D₃)
    (w' : H₂ ⋙ eR.functor ≅ eL.functor ⋙ H₃) :
    (w ≫ᵥ w'.hom).GuitartExact ↔ w.GuitartExact := by
  constructor
  · intro hww'
    letI : CatCommSq H₂ eL.functor eR.functor H₃ := ⟨w'⟩
    have hw' : CatCommSq.iso H₂ eL.functor eR.functor H₃ = w' := rfl
    letI : CatCommSq H₃ eL.inverse eR.inverse H₂ := CatCommSq.vInvEquiv _ _ _ _ inferInstance
    let w'' := CatCommSq.iso H₃ eL.inverse eR.inverse H₂
    let α : (L₁ ⋙ eL.functor) ⋙ eL.inverse ≅ L₁ :=
      Functor.associator _ _ _ ≪≫ isoWhiskerLeft L₁ eL.unitIso.symm ≪≫ L₁.rightUnitor
    let β : (R₁ ⋙ eR.functor) ⋙ eR.inverse ≅ R₁ :=
      Functor.associator _ _ _ ≪≫ isoWhiskerLeft R₁ eR.unitIso.symm ≪≫ R₁.rightUnitor
    have : w = (w ≫ᵥ w'.hom).vComp' w''.hom α β := by
      ext X₁
      dsimp
      simp? [w'', α, β] says
        simp only [vComp'_app, Functor.comp_obj, Iso.trans_inv, isoWhiskerLeft_inv, Iso.symm_inv,
          assoc, NatTrans.comp_app, Functor.id_obj, Functor.rightUnitor_inv_app,
          CategoryTheory.whiskerLeft_app, Functor.associator_inv_app, comp_id, id_comp, vComp_app,
          Functor.map_comp, Equivalence.inv_fun_map, CatCommSq.vInv_iso'_hom_app, Iso.trans_hom,
          isoWhiskerLeft_hom, Iso.symm_hom, Functor.associator_hom_app, Functor.rightUnitor_hom_app,
          Iso.hom_inv_id_app_assoc, w'', α, β, this]
      simp only [hw', ← eR.inverse.map_comp_assoc, w'', this, β, α]
      rw [Equivalence.counitInv_app_functor, ← Functor.comp_map, ← NatTrans.naturality_assoc]
      simp [← H₂.map_comp]
    rw [this]
    infer_instance
  · intro
    exact vComp w w'.hom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VerticalComposition/Variantbf5ede3469b1e6934dde83fb12c32310d010d76f8697cbd30c198dcd3f268ca6.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54675ad8b7a54670e4c6509148c6dda621ee4b60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
