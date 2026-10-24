# IsColimit.ofCoconeUncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4479b9feff3780c8709f2536dd6eea4a27b9d4fe268b8422b74a6e39063a450e",
  "kind": "def",
  "lexical_name": "IsColimit.ofCoconeUncurry",
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
  "slug": "iscolimit-ofcoconeuncurry--1afb28f73e939320e88df63a",
  "source": {
    "blob": "8e6dd1d0bf7daab0fcd24d4d6272b18511e20042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 298,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1afb28f73e939320e88df63aeeff49666aa8d4d2540f0b900c89625aae0fe247",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4479b9feff3780c8709f2536dd6eea4a27b9d4fe268b8422b74a6e39063a450e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsColimit.ofCoconeUncurry {D : DiagramOfCocones F}
    (Q : ∀ j, IsColimit (D.obj j)) {c : Cocone (uncurry.obj F)}
    (P : IsColimit (coconeOfCoconeUncurry Q c)) : IsColimit c :=
  -- These constructions are used in various fields of the proof so we abstract them here.
  letI E (j : J) : (Prod.sectR j K ⋙ uncurry.obj F ≅ F.obj j) :=
    NatIso.ofComponents (fun _ ↦ Iso.refl _)
  letI S (s : Cocone (uncurry.obj F)) : Cocone D.coconePoints :=
    { pt := s.pt
      ι :=
        { app j := (Q j).desc <|
            (Cocone.precompose (E j).inv).obj <| s.whisker (Prod.sectR j K)
          naturality {j j'} f := (Q j).hom_ext <|
            fun k ↦ by simpa [E] using s.ι.naturality ((Prod.sectL J k).map f) } }
  { desc s := P.desc (S s)
    fac s p := by
      have h1 := (Q p.1).fac ((Cocone.precompose (E p.1).inv).obj <|
        s.whisker (Prod.sectR p.1 K)) p.2
      simp only [Functor.comp_obj, Prod.sectR_obj, uncurry_obj_obj,
        Cocone.precompose_obj_pt, Cocone.whisker_pt, Functor.const_obj_obj,
        Cocone.precompose_obj_ι, Cocone.whisker_ι, NatTrans.comp_app, NatIso.ofComponents_inv_app,
        Iso.refl_inv, whiskerLeft_app, Category.id_comp, E] at h1
      have h2 := (P.fac (S s) p.1)
      dsimp only [DiagramOfCocones.coconePoints_obj, Functor.comp_obj, Prod.sectR_obj,
        uncurry_obj_obj, NatTrans.id_app, Functor.const_obj_obj, DiagramOfCocones.coconePoints_map,
        Functor.const_obj_map, id_eq, Cocone.precompose_obj_pt, Cocone.whisker_pt,
        Cocone.precompose_obj_ι, Cocone.whisker_ι, NatTrans.comp_app, NatIso.ofComponents_inv_app,
        Iso.refl_inv, whiskerLeft_app, Prod.sectL_obj, Prod.sectL_map, eq_mp_eq_cast,
        eq_mpr_eq_cast, coconeOfCoconeUncurry_pt, coconeOfCoconeUncurry_ι_app, S, E] at h2 ⊢
      simp [← h1, ← h2]
    uniq s f hf := P.uniq (s := S s) _ <|
      fun j ↦ (Q j).hom_ext <| fun k ↦ by simpa [S, E] using hf (j, k) }

section

variable (F)
variable [HasLimitsOfShape K C]

set_option backward.defeqAttrib.useBackward true in
/-- Given a functor `F : J ⥤ K ⥤ C`, with all needed limits,
we can construct a diagram consisting of the limit cone over each functor `F.obj j`,
and the universal cone morphisms between these.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6dd1d0bf7daab0fcd24d4d6272b18511e20042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
