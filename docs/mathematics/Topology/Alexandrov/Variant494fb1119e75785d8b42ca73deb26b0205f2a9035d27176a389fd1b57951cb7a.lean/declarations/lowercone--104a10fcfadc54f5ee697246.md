# lowerCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a51ea090ff726f7c92444a9608782d57cd9da1339aa0b25e932032af38971ee",
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
  "slug": "lowercone--104a10fcfadc54f5ee697246",
  "source": {
    "blob": "ad5e4d9061aa24fb951ae6ec43615091460d9e0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 108,
    "path": "GRWTSK/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:104a10fcfadc54f5ee6972460a775f3a8a7e64a954b439bd627d9a66ee99f326",
  "verification": {
    "reference": "docs/verification/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a51ea090ff726f7c92444a9608782d57cd9da1339aa0b25e932032af38971ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lowerCone
    {α : Type v} (Us : α → Opens X)
    (S : Cone ((ObjectProperty.ι fun V => ∃ i, V ≤ Us i).op ⋙ principalsKanExtension F)) :
    Cone (generator (iSup Us) ⋙ F) where
  pt := S.pt
  π := {
    app := fun f =>
      S.π.app ((projSup Us).obj f) ≫ limit.π (generator (principalOpen f.right) ⋙ F)
        ⟨.mk .unit, f.right, 𝟙 _⟩
    naturality := by
      rintro x y e
      simp only [Functor.const_obj_obj, Functor.comp_obj, Functor.const_obj_map, principals_obj,
        Functor.op_obj, ObjectProperty.ι_obj, Functor.pointwiseRightKanExtension_obj,
        Category.id_comp, Functor.comp_map, Category.assoc]
      rw [← S.w ((projSup Us).map e), Category.assoc]
      congr 1
      simp only [projSup_obj, Functor.comp_obj, Functor.op_obj, ObjectProperty.ι_obj,
        Functor.pointwiseRightKanExtension_obj, projSup_map, homOfLE_leOfHom, Functor.comp_map,
        Functor.op_map, Quiver.Hom.unop_op, ObjectProperty.ιOfLE_map,
        Functor.pointwiseRightKanExtension_map, limit.lift_π]
      let xx : StructuredArrow (Opposite.op (principalOpen x.right)) (principals X) :=
        ⟨.mk .unit, x.right, 𝟙 _⟩
      let yy : StructuredArrow (Opposite.op (principalOpen x.right)) (principals X) :=
        ⟨.mk .unit, y.right, .op <| LE.le.hom <| principalOpen_le e.right.le⟩
      let ee : xx ⟶ yy := { left := 𝟙 _, right := e.right }
      exact limit.w
        (StructuredArrow.proj (Opposite.op (principalOpen x.right)) (principals X) ⋙ F) ee
        |>.symm
  }

/--
This is the main construction in this file showing that the right Kan extension
of `F : X ⥤ C` along `principals : X ⥤ (Opens X)ᵒᵖ` is a sheaf, by showing that a certain
cone is a limit cone.

See `isSheaf_principalsKanExtension` for the main application.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Alexandrov/Variant494fb1119e75785d8b42ca73deb26b0205f2a9035d27176a389fd1b57951cb7a.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad5e4d9061aa24fb951ae6ec43615091460d9e0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
