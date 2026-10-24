# equivComma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bc737159c6e0dba73d946966f58e1c3680aaafa92d4cb9b99d612dda14c1084",
  "kind": "def",
  "lexical_name": "equivComma",
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
  "slug": "equivcomma--01009941ef49b93f946aca1f",
  "source": {
    "blob": "e4abb85b8f21c1bcceb1ec843c8aca4bb8a154ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 848,
    "line": 813,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01009941ef49b93f946aca1f375750321abf7aa2d552b9b793c030ef7be863e9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bc737159c6e0dba73d946966f58e1c3680aaafa92d4cb9b99d612dda14c1084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 813–848.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivComma : (WithInitial C ⥤ D) ≌ Comma (Functor.const C) (𝟭 (C ⥤ D)) where
  functor :=
    { obj := mkCommaObject
      map := mkCommaMorphism }
  inverse :=
    { obj := ofCommaObject
      map := ofCommaMorphism }
  unitIso :=
    NatIso.ofComponents
      (fun F ↦ liftUnique
        (incl ⋙ F)
        (fun x ↦ F.map (starInitial.to (of x)))
        (fun x y f ↦ by
          simp only [Functor.comp_obj, Functor.comp_map]
          rw [← F.map_comp]
          congr 1)
        F (Iso.refl _) (Iso.refl _)
        (fun x ↦ by
          simp only [Iso.refl_symm, Iso.refl_hom, Category.id_comp, Functor.comp_obj,
            NatTrans.id_app, Category.comp_id]; rfl))
      (fun {x y} f ↦ by ext t; cases t <;> simp [incl])
  counitIso := NatIso.ofComponents (fun F ↦ Iso.refl _)
  functor_unitIso_comp x := by
    simp only [id_eq, Functor.id_obj, ofCommaObject_obj, ofCommaMorphism_app, Comma.id_right,
      NatTrans.id_app, Comma.id_left, Comma.comp_right, NatTrans.comp_app, Comma.comp_left,
      Functor.comp_obj, liftUnique, Functor.comp_map, eq_mpr_eq_cast, lift_obj,
      NatIso.ofComponents_hom_app, Iso.refl_hom, Category.comp_id]
    ext <;> rfl

end

end WithInitial

open Opposite in
/-- The opposite category of `WithTerminal C` is equivalent to `WithInitial Cᵒᵖ`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcb0cae3084d848b36913a7b0f03a678f6c83a71d62279bf79b7d07cd96cf12b1.lean#L813).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4abb85b8f21c1bcceb1ec843c8aca4bb8a154ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
