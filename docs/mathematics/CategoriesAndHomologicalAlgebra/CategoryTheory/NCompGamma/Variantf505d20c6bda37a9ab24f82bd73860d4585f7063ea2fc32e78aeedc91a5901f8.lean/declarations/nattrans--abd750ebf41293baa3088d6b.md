# natTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdbb0714f6f2d580049be47b71e20e20f91d6aa665389c3f413d0be9f121ba42",
  "kind": "def",
  "lexical_name": "natTrans",
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
  "slug": "nattrans--abd750ebf41293baa3088d6b",
  "source": {
    "blob": "30b6d1cbf0e89fba76c1440fac4f9c3f9fd9ba6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantf505d20c6bda37a9ab24f82bd73860d4585f7063ea2fc32e78aeedc91a5901f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abd750ebf41293baa3088d6beda7fa5402ddb93bc8bf4e9bf6b5b4df2d5c7245",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantf505d20c6bda37a9ab24f82bd73860d4585f7063ea2fc32e78aeedc91a5901f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdbb0714f6f2d580049be47b71e20e20f91d6aa665389c3f413d0be9f121ba42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def natTrans : (N₁ : SimplicialObject C ⥤ _) ⋙ Γ₂ ⟶ toKaroubi _ where
  app X :=
    { f :=
        { app := fun Δ => (Γ₀.splitting K[X]).desc Δ fun A => PInfty.f A.1.unop.len ≫ X.map A.e.op
          naturality := fun Δ Δ' θ => by
            apply (Γ₀.splitting K[X]).hom_ext'
            intro A
            change _ ≫ (Γ₀.obj K[X]).map θ ≫ _ = _
            simp only [Splitting.ι_desc_assoc, assoc, Γ₀.Obj.map_on_summand'_assoc,
              Splitting.ι_desc]
            erw [Γ₀_obj_termwise_mapMono_comp_PInfty_assoc X (image.ι (θ.unop ≫ A.e))]
            dsimp only [toKaroubi]
            simp only [← X.map_comp]
            congr 2
            simp only [eqToHom_refl, id_comp, comp_id, ← op_comp]
            exact Quiver.Hom.unop_inj (A.fac_pull θ) }
      comm := by
        apply (Γ₀.splitting K[X]).hom_ext
        intro n
        dsimp [N₁]
        simp only [← Splitting.cofan_inj_id, Splitting.ι_desc, comp_id, Splitting.ι_desc_assoc,
          assoc, PInfty_f_idem_assoc] }
  naturality {X Y} f := by
    ext1
    apply (Γ₀.splitting K[X]).hom_ext
    intro n
    dsimp [N₁, toKaroubi]
    simp only [← Splitting.cofan_inj_id, Splitting.ι_desc, Splitting.ι_desc_assoc, assoc,
      PInfty_f_idem_assoc, Karoubi.comp_f, NatTrans.comp_app, Γ₂_map_f_app,
      HomologicalComplex.comp_f, AlternatingFaceMapComplex.map_f, PInfty_f_naturality_assoc,
      NatTrans.naturality, Splitting.IndexSet.id_fst, unop_op, len_mk]

end Γ₂N₁

/-- The compatibility isomorphism relating `N₂ ⋙ Γ₂` and `N₁ ⋙ Γ₂`. -/
@[simps! hom_app inv_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantf505d20c6bda37a9ab24f82bd73860d4585f7063ea2fc32e78aeedc91a5901f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NCompGamma/Variantf505d20c6bda37a9ab24f82bd73860d4585f7063ea2fc32e78aeedc91a5901f8.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b6d1cbf0e89fba76c1440fac4f9c3f9fd9ba6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
