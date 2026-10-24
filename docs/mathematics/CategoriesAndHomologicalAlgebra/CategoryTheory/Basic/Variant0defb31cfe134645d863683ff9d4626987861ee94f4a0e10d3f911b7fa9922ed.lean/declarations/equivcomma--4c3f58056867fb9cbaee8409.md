# equivComma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3954773af1cd995af00f54503598171b241fd2472e4265c5e4f7b25f6a0c469f",
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
  "slug": "equivcomma--4c3f58056867fb9cbaee8409",
  "source": {
    "blob": "f4b2616460df1c777ef96fbb21d9c175356b322f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 403,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c3f58056867fb9cbaee840905c365a3fabe17f43f19c3bf46e16e05e5462afc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3954773af1cd995af00f54503598171b241fd2472e4265c5e4f7b25f6a0c469f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivComma : (WithTerminal C ⥤ D) ≌ Comma (𝟭 (C ⥤ D)) (Functor.const C) where
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
        (fun x ↦ F.map (starTerminal.from (of x)))
        (fun x y f ↦ by
          simp only [Functor.comp_obj, Functor.comp_map]
          rw [← F.map_comp]
          congr 1)
        F (Iso.refl _) (Iso.refl _)
        (fun x ↦ by
          simp only [Iso.refl_hom, Category.id_comp, Functor.comp_obj,
            NatTrans.id_app, Category.comp_id]; rfl))
      (fun {x y} f ↦ by ext t; cases t <;> simp [incl])
  counitIso := NatIso.ofComponents (fun F ↦ Iso.refl _)
  functor_unitIso_comp x := by
    simp only [Functor.id_obj, Functor.comp_obj, liftUnique, lift_obj, NatIso.ofComponents_hom_app,
      Iso.refl_hom, Category.comp_id]
    ext <;> rfl

end

open CategoryTheory.Limits CategoryTheory.Limits.WidePullbackShape

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant0defb31cfe134645d863683ff9d4626987861ee94f4a0e10d3f911b7fa9922ed.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4b2616460df1c777ef96fbb21d9c175356b322f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
