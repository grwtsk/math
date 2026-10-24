# pullFunctorEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d075b1781979fb75e3b1443f7fba19e9531df1cb163d3f54e24efe1856fa9802",
  "kind": "def",
  "lexical_name": "pullFunctorEquivalence",
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
  "slug": "pullfunctorequivalence--9621e78e8c097b45ca311ef9",
  "source": {
    "blob": "6fee7ec27284e06e620ee96f2ce41429e585e773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 378,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9621e78e8c097b45ca311ef94ece9218c025a035e581f684cc448c80300ee823",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d075b1781979fb75e3b1443f7fba19e9531df1cb163d3f54e24efe1856fa9802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullFunctorEquivalence {S' : C} {ι' : Type t'} {X' : ι' → C} {f' : ∀ j, X' j ⟶ S'}
    (e : S' ≅ S) {α : ι' → ι} {p' : ∀ j, X' j ⟶ X (α j)}
    (w : ∀ j, p' j ≫ f (α j) = f' j ≫ e.hom)
    {β : ι → ι'} {q' : ∀ i, X i ⟶ X' (β i)} (w' : ∀ i, q' i ≫ f' (β i) = f i ≫ e.inv) :
    F.DescentData f ≌ F.DescentData f' where
  functor := pullFunctor F w
  inverse := pullFunctor F w'
  unitIso :=
    (pullFunctorIdIso F S).symm ≪≫ pullFunctorIso _ _ _ ≪≫
      (pullFunctorCompIso _ _ _ _ e.inv_hom_id (fun _ ↦ rfl)).symm
  counitIso :=
    pullFunctorCompIso _ _ _ _ e.hom_inv_id (fun _ ↦ rfl) ≪≫
      pullFunctorIso _ _ _ ≪≫ pullFunctorIdIso F S'
  functor_unitIso_comp D := by
    ext j
    dsimp
    simp only [Category.id_comp, Functor.map_comp, Category.assoc]
    rw [pullFunctorObjHom_eq_assoc _ _ _ _ _ (p' _ ≫ f _) (p' _ ≫ q' _ ≫ p' _) (p' _) (by simp)
        (by simp [w', reassoc_of% w]),
      map_eq_pullHom_assoc _ (p' j) (p' j) (p' _ ≫ q' _ ≫ p' _) (by simp) (by simp),
      D.pullHom_hom _ _ (p' j ≫ f _) (by simp) _ _ (by simp)
        (by simp [w, reassoc_of% w']) _ _ (by simp) rfl]
    dsimp
    rw [← F.mapComp'₀₁₃_hom_comp_whiskerLeft_mapComp'_hom_app_assoc _ _ _ _ _ _ rfl rfl (by simp),
      mapComp'_comp_id_hom_app, mapComp'_id_comp_inv_app_assoc, ← Functor.map_comp_assoc,
      Cat.Hom.inv_hom_id_toNatTrans_app]
    simp [D.hom_self _ _ rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2d1639995e0fe1e239b836042a768736ccdd5f00da2cf5fb912981abaa6d89b3.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fee7ec27284e06e620ee96f2ce41429e585e773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
