# preEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27b02048802deb7ee54c9b1c67f6be25a8bf99a1aa95b1d1e25d5ea48517a6d0",
  "kind": "def",
  "lexical_name": "preEquivalence",
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
  "slug": "preequivalence--065b5fc5bc254d7385f3dac0",
  "source": {
    "blob": "bcb6c61a0803924dbdc30462063e466619746b5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 481,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:065b5fc5bc254d7385f3dac01a0acd868cbbce4e5f2b5f92d5972ea2f19bdc60",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27b02048802deb7ee54c9b1c67f6be25a8bf99a1aa95b1d1e25d5ea48517a6d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def preEquivalence (G : D ≌ C) : Grothendieck (G.functor ⋙ F) ≌ Grothendieck F where
  functor := pre F G.functor
  inverse := preInv F G
  unitIso := by
    refine (eqToIso ?_)
      ≪≫ (Grothendieck.preUnitIso F G |> isoWhiskerLeft (map _))
      ≪≫ (pre_comp_map_assoc G.functor _ _ |> Eq.symm |> eqToIso)
    calc
      _ = map (𝟙 _) := map_id_eq.symm
      _ = map _ := ?_
      _ = map _ ⋙ map _ := map_comp_eq _ _
    congr; ext X
    simp only [Functor.comp_obj, Functor.comp_map, ← Functor.map_comp, Functor.id_obj,
      Functor.map_id, NatTrans.comp_app, NatTrans.id_app, whiskerLeft_app, whiskerRight_app,
      Equivalence.counitInv_functor_comp]
  counitIso := preNatIso F G.counitIso.symm |>.symm
  functor_unitIso_comp := by
    intro X
    simp only [preInv, Grothendieck.preUnitIso, eq_mpr_eq_cast, cast_eq, pre_id, id_eq,
      Iso.trans_hom, eqToIso.hom, eqToHom_app, eqToHom_refl, isoWhiskerLeft_hom, NatTrans.comp_app]
    fapply Grothendieck.ext <;> simp [preNatIso, transportIso]

variable {F} in
/--
Let `F, F' : C ⥤ Cat` be functor, `G : D ≌ C` an equivalence and `α : F ⟶ F'` a natural
transformation.

Left-whiskering `α` by `G` and then taking the Grothendieck construction is, up to isomorphism,
the same as taking the Grothendieck construction of `α` and using the equivalences `pre F G`
and `pre F' G` to match the expected type:

```
Grothendieck (G.functor ⋙ F) ≌ Grothendieck F ⥤ Grothendieck F' ≌ Grothendieck (G.functor ⋙ F')
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant0804ecdbf16673ee56f331a136677c8518306775e85fc14458b7a52799da086d.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcb6c61a0803924dbdc30462063e466619746b5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
