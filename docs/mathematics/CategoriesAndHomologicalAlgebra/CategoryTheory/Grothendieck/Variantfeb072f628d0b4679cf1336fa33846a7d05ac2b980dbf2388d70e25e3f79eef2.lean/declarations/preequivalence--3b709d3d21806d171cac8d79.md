# preEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fad467aa14a6b1b4b1ad98221f2fabd8aff56be88c54f4449728fbc896153396",
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
  "slug": "preequivalence--3b709d3d21806d171cac8d79",
  "source": {
    "blob": "f4e8b142a009b0a72fe84c665016cfe80081421d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 479,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantfeb072f628d0b4679cf1336fa33846a7d05ac2b980dbf2388d70e25e3f79eef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b709d3d21806d171cac8d798c8b9a9fd2e90bbe55a769c3498ddc8a9d4ad98b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantfeb072f628d0b4679cf1336fa33846a7d05ac2b980dbf2388d70e25e3f79eef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fad467aa14a6b1b4b1ad98221f2fabd8aff56be88c54f4449728fbc896153396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–513.

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
    simp only [preInv, Grothendieck.preUnitIso, pre_id,
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantfeb072f628d0b4679cf1336fa33846a7d05ac2b980dbf2388d70e25e3f79eef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantfeb072f628d0b4679cf1336fa33846a7d05ac2b980dbf2388d70e25e3f79eef2.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e8b142a009b0a72fe84c665016cfe80081421d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
