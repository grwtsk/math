# bifunctorComp₁₂FunctorObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c0f5a3804e110807421d451d1b74d6570be29267f307506fa5be5d9e294e40f",
  "kind": "def",
  "lexical_name": "bifunctorComp₁₂FunctorObj",
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
  "slug": "bifunctorcomp-functorobj--a563ae4b73881972e8560f13",
  "source": {
    "blob": "9c254c82725e045c7a53f5eb923eac1a85dc5b67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantc7e48be36c91e134d698a730b34e95e8986e6bba09bb203440a7ddca1e33a3fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a563ae4b73881972e8560f13dd9c435cacb8dd6405a3fe0c844980ccf9674648",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantc7e48be36c91e134d698a730b34e95e8986e6bba09bb203440a7ddca1e33a3fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c0f5a3804e110807421d451d1b74d6570be29267f307506fa5be5d9e294e40f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bifunctorComp₁₂FunctorObj (F₁₂ : C₁ ⥤ C₂ ⥤ C₁₂) :
    (C₁₂ ⥤ C₃ ⥤ C₄) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄ where
  obj G := bifunctorComp₁₂ F₁₂ G
  map {G G'} φ :=
    { app X₁ :=
        { app X₂ :=
            { app X₃ := (φ.app ((F₁₂.obj X₁).obj X₂)).app X₃ }
          naturality := fun X₂ Y₂ f ↦ by
            ext X₃
            dsimp
            simp only [← NatTrans.comp_app, NatTrans.naturality] }
      naturality X₁ Y₁ f := by
        ext X₂ X₃
        dsimp
        simp only [← NatTrans.comp_app, NatTrans.naturality] }

/-- Auxiliary definition for `bifunctorComp₁₂Functor`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantc7e48be36c91e134d698a730b34e95e8986e6bba09bb203440a7ddca1e33a3fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantc7e48be36c91e134d698a730b34e95e8986e6bba09bb203440a7ddca1e33a3fc.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c254c82725e045c7a53f5eb923eac1a85dc5b67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
