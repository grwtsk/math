# pullFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:030d941ec004c9464aa3dddf64fb32a78f0bd12ffb0a383c689ecaacf483a243",
  "kind": "def",
  "lexical_name": "pullFunctorIso",
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
  "slug": "pullfunctoriso--56b8990f0a35099c55ae586b",
  "source": {
    "blob": "492163824a61b7e50e7acb6b3cd55dc55128a40f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56b8990f0a35099c55ae586b72933b9f39d0ef628b1eeb98018e236318e8582a",
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

Occurrence: `declaration:030d941ec004c9464aa3dddf64fb32a78f0bd12ffb0a383c689ecaacf483a243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pullFunctorIso {β : ι' → ι} {p'' : ∀ j, X' j ⟶ X (β j)}
    (w' : ∀ j, p'' j ≫ f (β j) = f' j ≫ p) :
    pullFunctor F w ≅ pullFunctor F w' :=
  NatIso.ofComponents (fun D ↦ isoMk (fun j ↦ D.iso _ _ _) (by
    intro Y q j₁ j₂ f₁ f₂ hf₁ hf₂
    dsimp
    rw [pullFunctorObjHom_eq _ _ _ _ _ (q ≫ p) _ _ rfl (by cat_disch) (by cat_disch),
      pullFunctorObjHom_eq _ _ _ _ _ (q ≫ p) _ _ rfl (by cat_disch) (by cat_disch),
      map_eq_pullHom_assoc _ _ (f₁ ≫ p' j₁) (f₁ ≫ p'' j₁) (by cat_disch) (by cat_disch),
      map_eq_pullHom _ _ (f₂ ≫ p' j₂) (f₂ ≫ p'' j₂) (by cat_disch) (by cat_disch)]
    simp only [Cat.Hom.hom_inv_id_toNatTrans_app_assoc, Category.assoc]
    rw [pullHom_hom _ _ _ (q ≫ p) (by rw [w, reassoc_of% hf₁]) _ _
        rfl (by cat_disch) _ _ rfl rfl, hom_comp_assoc,
      pullHom_hom _ _ _ (q ≫ p) (by rw [w, reassoc_of% hf₂]) _ _
        rfl (by cat_disch) _ _ rfl rfl, hom_comp_assoc]))
    (fun φ ↦ by
      ext j
      exact φ.comm _ _ _ rfl (by cat_disch))

set_option backward.isDefEq.respectTransparency false in
variable (S) in
/-- The functor `F.DescentData f ⥤ F.DescentData f` corresponding to `pullFunctor`
applied to identity morphisms is isomorphic to the identity functor. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DescentData/Variant2292153f538142a8c3879094fed08f38a619a6dd13af91ab1c2f29448fb5e13e.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `492163824a61b7e50e7acb6b3cd55dc55128a40f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
