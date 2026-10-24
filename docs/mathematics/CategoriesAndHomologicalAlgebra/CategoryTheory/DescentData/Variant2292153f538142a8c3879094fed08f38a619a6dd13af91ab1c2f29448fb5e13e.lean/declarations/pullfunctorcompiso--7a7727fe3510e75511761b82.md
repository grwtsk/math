# pullFunctorCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d70605c98ada76402b66c433cadf2edd17acfbbb75aad8214a0aab4f2d7e383",
  "kind": "def",
  "lexical_name": "pullFunctorCompIso",
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
  "slug": "pullfunctorcompiso--7a7727fe3510e75511761b82",
  "source": {
    "blob": "492163824a61b7e50e7acb6b3cd55dc55128a40f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 338,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a7727fe3510e75511761b829b7b7e0564617dd8f208d9f341cc526ab737b918",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d70605c98ada76402b66c433cadf2edd17acfbbb75aad8214a0aab4f2d7e383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullFunctorCompIso
    {S'' : C} {q : S'' ⟶ S'} {ι'' : Type t''} {X'' : ι'' → C} {f'' : ∀ k, X'' k ⟶ S''}
    {β : ι'' → ι'} {q' : ∀ k, X'' k ⟶ X' (β k)} (w' : ∀ k, q' k ≫ f' (β k) = f'' k ≫ q)
    (r : S'' ⟶ S) {r' : ∀ k, X'' k ⟶ X (α (β k))}
    (hr : q ≫ p = r := by cat_disch) (hr' : ∀ k, q' k ≫ p' (β k) = r' k := by cat_disch) :
    pullFunctor F w ⋙ pullFunctor F w' ≅
      pullFunctor F (p := r) (α := α ∘ β) (p' := r') (fun k ↦ by
        dsimp
        rw [← hr', Category.assoc, w, reassoc_of% w', hr]) :=
  NatIso.ofComponents
    (fun D ↦ isoMk (fun _ ↦ (Cat.Hom.toNatIso (F.mapComp' _ _ _ (by grind))).symm.app _) (by
      intro Y s k₁ k₂ f₁ f₂ hf₁ hf₂
      dsimp
      rw [pullFunctorObjHom_eq _ _ _ _ _ (s ≫ r) _ _ rfl,
        pullFunctorObjHom_eq _ _ _ _ _ (s ≫ q) (f₁ ≫ q' k₁) (f₂ ≫ q' k₂)]
      dsimp
      rw [pullFunctorObjHom_eq _ _ _ _ _ (s ≫ r) (f₁ ≫ r' k₁) (f₂ ≫ r' k₂)
        rfl (by simp [w', reassoc_of% hf₁, reassoc_of% hf₂]) (by
          simp [reassoc_of% w', reassoc_of% hf₁, hr])]
      dsimp
      simp only [Category.assoc]
      rw [mapComp'_inv_whiskerRight_mapComp'₀₂₃_inv_app_assoc _ _ _ _ _ _ _
        (by grind) rfl rfl, mapComp'₀₂₃_hom_app _ _ _ _ _ _ _ _ rfl rfl]))

end

set_option backward.isDefEq.respectTransparency false in
variable {f} in
/-- Up to an equivalence, the category `DescentData` for a pseudofunctor `F` and
a family of morphisms `f : X i ⟶ S` is unchanged when we replace `S` by an isomorphic object,
or when we replace `f` by another family which generate the same sieve. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `492163824a61b7e50e7acb6b3cd55dc55128a40f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
