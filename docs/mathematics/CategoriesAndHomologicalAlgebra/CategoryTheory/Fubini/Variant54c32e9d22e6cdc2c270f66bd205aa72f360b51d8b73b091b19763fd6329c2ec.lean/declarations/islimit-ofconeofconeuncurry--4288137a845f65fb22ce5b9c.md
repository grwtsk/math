# IsLimit.ofConeOfConeUncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f96808d3b66cfc708b5a690158af8d08f418580b1d3193b242106394607888ab",
  "kind": "def",
  "lexical_name": "IsLimit.ofConeOfConeUncurry",
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
  "slug": "islimit-ofconeofconeuncurry--4288137a845f65fb22ce5b9c",
  "source": {
    "blob": "8e6dd1d0bf7daab0fcd24d4d6272b18511e20042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4288137a845f65fb22ce5b9c2012767b14f74b9ec31cba0c48b382421f7b947c",
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

Occurrence: `declaration:f96808d3b66cfc708b5a690158af8d08f418580b1d3193b242106394607888ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsLimit.ofConeOfConeUncurry {D : DiagramOfCones F} (Q : ∀ j, IsLimit (D.obj j))
    {c : Cone (uncurry.obj F)} (P : IsLimit (coneOfConeUncurry Q c)) : IsLimit c :=
  -- These constructions are used in various fields of the proof so we abstract them here.
  letI E (j : J) : Prod.sectR j K ⋙ uncurry.obj F ≅ F.obj j :=
    NatIso.ofComponents (fun _ ↦ Iso.refl _)
  letI S (s : Cone (uncurry.obj F)) : Cone D.conePoints :=
    { pt := s.pt
      π :=
        { app j := (Q j).lift <|
            (Cone.postcompose (E j).hom).obj <| s.whisker (Prod.sectR j K)
          naturality {j' j} f := (Q j).hom_ext <|
            fun k ↦ by simpa [E] using s.π.naturality ((Prod.sectL J k).map f) } }
  { lift s := P.lift (S s)
    fac s p := by
      have h1 := (Q p.1).fac ((Cone.postcompose (E p.1).hom).obj <|
        s.whisker (Prod.sectR p.1 K)) p.2
      simp only [Functor.comp_obj, Prod.sectR_obj, uncurry_obj_obj,
        Cone.postcompose_obj_pt, Cone.whisker_pt, Cone.postcompose_obj_π,
        Cone.whisker_π, NatTrans.comp_app, Functor.const_obj_obj, whiskerLeft_app,
        NatIso.ofComponents_hom_app, Iso.refl_hom, Category.comp_id, E] at h1
      have h2 := (P.fac (S s) p.1)
      dsimp only [Functor.comp_obj, Prod.sectR_obj, uncurry_obj_obj, NatTrans.id_app,
        Functor.const_obj_obj, DiagramOfCones.conePoints_obj, DiagramOfCones.conePoints_map,
        Functor.const_obj_map, id_eq, Cone.postcompose_obj_pt, Cone.whisker_pt,
        Cone.postcompose_obj_π, Cone.whisker_π, NatTrans.comp_app, whiskerLeft_app,
        NatIso.ofComponents_hom_app, Iso.refl_hom, Prod.sectL_obj, Prod.sectL_map, eq_mp_eq_cast,
        eq_mpr_eq_cast, coneOfConeUncurry_pt, coneOfConeUncurry_π_app, S, E] at h2 ⊢
      simp [← h1, ← h2]
    uniq s f hf := P.uniq (s := S s) _ <|
      fun j ↦ (Q j).hom_ext <| fun k ↦ by simpa [S, E] using hf (j, k) }

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- `coconeOfCoconeUncurry Q c` is a colimit cocone when `c` is a colimit cocone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6dd1d0bf7daab0fcd24d4d6272b18511e20042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
