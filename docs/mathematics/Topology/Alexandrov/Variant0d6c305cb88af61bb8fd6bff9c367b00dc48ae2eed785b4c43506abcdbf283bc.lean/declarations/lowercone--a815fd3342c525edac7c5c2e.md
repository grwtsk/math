# lowerCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a1d074f9921ffd204474c35f1f5bcb615cffd8f682cd0bbcaa8efa8220564d7",
  "kind": "def",
  "lexical_name": "lowerCone",
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
  "slug": "lowercone--a815fd3342c525edac7c5c2e",
  "source": {
    "blob": "51ab0966492e7a0dfed9f6a9e4b57a18bc3282ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 110,
    "path": "GRWTSK/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a815fd3342c525edac7c5c2e2a61c821815db41c79ad2a9185c5fd88a975b646",
  "verification": {
    "reference": "docs/verification/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a1d074f9921ffd204474c35f1f5bcb615cffd8f682cd0bbcaa8efa8220564d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lowerCone
    {α : Type v} (Us : α → Opens X)
    (S : Cone ((ObjectProperty.ι _ : OpensLeCover (X := ↧X) Us ⥤ _).op ⋙
      principalsKanExtension F)) :
    Cone (generator (iSup Us) ⋙ F) where
  pt := S.pt
  π := {
    app := fun f =>
      S.π.app ((projSup Us).obj f) ≫ limit.π (generator (principalOpen f.right) ⋙ F)
        ⟨.mk .unit, f.right, 𝟙 _⟩
    naturality := by
      rintro x y e
      simp only [Functor.const_obj_obj, Functor.comp_obj, Functor.const_obj_map,
        Functor.op_obj, Functor.pointwiseRightKanExtension_obj,
        Category.id_comp, Functor.comp_map, Category.assoc]
      rw [← S.w ((projSup Us).map e), Category.assoc]
      congr 1
      let xx : StructuredArrow (Opposite.op (principalOpen x.right)) (principals X) :=
        ⟨.mk .unit, x.right, 𝟙 _⟩
      let yy : StructuredArrow (Opposite.op (principalOpen x.right)) (principals X) :=
        ⟨.mk .unit, y.right, .op <| LE.le.hom <| principalOpen_le e.right.le⟩
      let ee : xx ⟶ yy := { left := 𝟙 _, right := e.right }
      exact (limit.lift_π _ _).trans (limit.w
        (StructuredArrow.proj _ (principals X) ⋙ F) ee).symm
  }

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/--
This is the main construction in this file showing that the right Kan extension
of `F : X ⥤ C` along `principals : X ⥤ (Opens X)ᵒᵖ` is a sheaf, by showing that a certain
cone is a limit cone.

See `isSheaf_principalsKanExtension` for the main application.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Alexandrov/Variant0d6c305cb88af61bb8fd6bff9c367b00dc48ae2eed785b4c43506abcdbf283bc.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51ab0966492e7a0dfed9f6a9e4b57a18bc3282ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
