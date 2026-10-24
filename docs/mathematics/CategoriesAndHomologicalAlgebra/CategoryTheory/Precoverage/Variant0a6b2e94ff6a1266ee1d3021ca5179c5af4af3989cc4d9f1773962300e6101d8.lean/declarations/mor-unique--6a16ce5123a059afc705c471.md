# mor_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bc8cb11-4486-234d-8434-6bba32a710c2",
  "kind": "lemma",
  "lexical_name": "mor_unique",
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
  "slug": "mor-unique--6a16ce5123a059afc705c471",
  "source": {
    "blob": "e889494c1f5733cd24819014b2f35ee2244479e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 193,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a16ce5123a059afc705c4712e5d8de6650a1d9086a058f1e8e2ab23a6777a4d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc8cb11-4486-234d-8434-6bba32a710c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mor_unique ⦃i : ι⦄ {Z : C} (q : Z ⟶ X i)
    ⦃j₁ : ι'⦄ (a₁ : Z ⟶ X' j₁) ⦃j₂ : ι'⦄ (a₂ : Z ⟶ X' j₂)
    (fac₁ : a₁ ≫ f' j₁ = q ≫ f i := by cat_disch)
    (fac₂ : a₂ ≫ f' j₂ = q ≫ f i := by cat_disch) :
    mor w φ q a₁ fac₁ = mor w φ q a₂ fac₂ := by
  have := φ.comm (q ≫ f i) a₁ a₂ fac₁ fac₂
  dsimp at this
  rw [pullFunctorObjHom_eq _ _ _ _ _ (q ≫ f i) (a₁ ≫ p' j₁) (a₂ ≫ p' j₂) rfl,
    pullFunctorObjHom_eq _ _ _ _ _ (q ≫ f i) (a₁ ≫ p' j₁) (a₂ ≫ p' j₂) rfl,
    map_eq_pullHom _ _ _ _ (by exact rfl) rfl, map_eq_pullHom _ _ _ _ rfl rfl] at this
  dsimp at this
  simp only [Category.assoc, Cat.Hom.hom_inv_id_toNatTrans_app_assoc, cancel_epi] at this
  simp only [← Category.assoc, cancel_mono] at this
  rw [← cancel_mono (D₂.hom (q ≫ f i) (a₂ ≫ p' j₂) q), Category.assoc,
    D₂.hom_comp] at this
  rw [mor_eq _ _ _ _ _ _ _ rfl rfl, mor_eq _ _ _ _ _ _ _ rfl rfl, this]
  simp

/-- Given two family of morphisms `f : X i ⟶ S` and `f' : X' j ⟶ S`,
two objects `D₁ D₂ : F.DescentData f`, a morphism `φ` between the images in
`F.DescentData f'` of `D₁` and `D₂` by a functor `pullFunctor`. This is
a family of elements of the sheaf of morphisms from `D₁.obj i` to `D₂.obj i`
that is deduced from `φ` over a covering sieve. See `hom` below for the glued
morphism `D₁.obj i ⟶ D₂.obj i` when `f'` is a covering family and `F` is a prestack. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e889494c1f5733cd24819014b2f35ee2244479e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
