# bifunctorComp₂₃FunctorMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6757344b02b547a63c576095384a8119a68586d98e925d2a2a59de544c47f176",
  "kind": "def",
  "lexical_name": "bifunctorComp₂₃FunctorMap",
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
  "slug": "bifunctorcomp-functormap--2f4d2bfc3a4c15ce523c8032",
  "source": {
    "blob": "9c254c82725e045c7a53f5eb923eac1a85dc5b67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantc7e48be36c91e134d698a730b34e95e8986e6bba09bb203440a7ddca1e33a3fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f4d2bfc3a4c15ce523c80325ed0cdeb37dea2317cdb5ea3cca53fffd0d44578",
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

Occurrence: `declaration:6757344b02b547a63c576095384a8119a68586d98e925d2a2a59de544c47f176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bifunctorComp₂₃FunctorMap {F F' : C₁ ⥤ C₂₃ ⥤ C₄} (φ : F ⟶ F') :
    bifunctorComp₂₃FunctorObj F (C₂ := C₂) (C₃ := C₃) ⟶ bifunctorComp₂₃FunctorObj F' where
  app G₂₃ :=
    { app X₁ := { app X₂ := { app X₃ := (φ.app X₁).app ((G₂₃.obj X₂).obj X₃) } }
      naturality X₁ Y₁ f := by
        ext X₂ X₃
        dsimp
        simp only [← NatTrans.comp_app, NatTrans.naturality] }

/-- The functor `(C₁ ⥤ C₂₃ ⥤ C₄) ⥤ (C₂ ⥤ C₃ ⥤ C₂₃) ⥤ C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄` which
sends `F : C₁ ⥤ C₂₃ ⥤ C₄` and `G₂₃ : C₂ ⥤ C₃ ⥤ C₂₃` to the
functor `bifunctorComp₂₃ F G₂₃ : C₁ ⥤ C₂ ⥤ C₃ ⥤ C₄`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantc7e48be36c91e134d698a730b34e95e8986e6bba09bb203440a7ddca1e33a3fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Trifunctor/Variantc7e48be36c91e134d698a730b34e95e8986e6bba09bb203440a7ddca1e33a3fc.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c254c82725e045c7a53f5eb923eac1a85dc5b67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
