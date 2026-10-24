# conjugateEquiv_mateEquiv_vcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a751e074-81cc-ae56-aa63-682a4cc05a83",
  "kind": "theorem",
  "lexical_name": "conjugateEquiv_mateEquiv_vcomp",
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
  "slug": "conjugateequiv-mateequiv-vcomp--de3ebcfc8b8bdab8ad6cf191",
  "source": {
    "blob": "da90d0d1f1072d57bfe04696436bedad5b731736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 512,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de3ebcfc8b8bdab8ad6cf1911c8f0d36eb7cc45a4e7ea8bf112529b9347983e0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a751e074-81cc-ae56-aa63-682a4cc05a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjugateEquiv_mateEquiv_vcomp {L₁ : A ⥤ B} {R₁ : B ⥤ A} {L₂ : A ⥤ B} {R₂ : B ⥤ A}
    {L₃ : C ⥤ D} {R₃ : D ⥤ C}
    (adj₁ : L₁ ⊣ R₁) (adj₂ : L₂ ⊣ R₂) (adj₃ : L₃ ⊣ R₃) (α : L₂ ⟶ L₁) (β : TwoSquare G L₂ L₃ H) :
    (mateEquiv adj₁ adj₃) (β.whiskerLeft α) =
      (mateEquiv adj₂ adj₃ β).whiskerTop (conjugateEquiv adj₁ adj₂ α) := by
  ext b
  have vcomp := mateEquiv_vcomp adj₁ adj₂ adj₃ (L₂.leftUnitor.hom ≫ α ≫ L₁.rightUnitor.inv) β
  unfold vComp hComp at vcomp
  have vcompb := congr_app vcomp b
  simp only [comp_obj, id_obj, whiskerRight_comp, assoc, mateEquiv_apply, whiskerLeft_comp,
    whiskerLeft_twice, comp_app, Functor.whiskerLeft_app, Functor.whiskerRight_app,
    associator_hom_app, map_id, associator_inv_app, leftUnitor_hom_app, rightUnitor_inv_app,
    Functor.comp_map, Functor.id_map, id_comp, whiskerRight_twice, Iso.inv_hom_id_assoc,
    comp_id] at vcompb
  simpa [mateEquiv]

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variantcea25da6434db71992bb2a287f4a19674a9134fd8fd0e8a638dad02364699243.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da90d0d1f1072d57bfe04696436bedad5b731736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
