# mapBifunctorHomologicalComplex_obj_obj_toGradedObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a71a6bdb-4a51-3757-83f9-bb12b485631e",
  "kind": "lemma",
  "lexical_name": "mapBifunctorHomologicalComplex_obj_obj_toGradedObject",
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
  "slug": "mapbifunctorhomologicalcomplex-obj-obj-togradedobject--051d82f3a1e43138c7190b82",
  "source": {
    "blob": "d75315d0baea29eb4c4127b44fa3e28e431ee0a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:051d82f3a1e43138c7190b8294620422c1ac114b37fff256a64e785e8d57e7e7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a71a6bdb-4a51-3757-83f9-bb12b485631e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorHomologicalComplex_obj_obj_toGradedObject
    (K₁ : HomologicalComplex C₁ c₁) (K₂ : HomologicalComplex C₂ c₂) :
    (((mapBifunctorHomologicalComplex F c₁ c₂).obj K₁).obj K₂).toGradedObject =
      ((GradedObject.mapBifunctor F I₁ I₂).obj K₁.X).obj K₂.X := rfl

end Functor

end CategoryTheory

namespace HomologicalComplex

variable {I₁ I₂ J : Type*} {c₁ : ComplexShape I₁} {c₂ : ComplexShape I₂}
  [HasZeroMorphisms C₁] [HasZeroMorphisms C₂] [Preadditive D]
  (K₁ L₁ : HomologicalComplex C₁ c₁) (K₂ L₂ : HomologicalComplex C₂ c₂)
  (f₁ : K₁ ⟶ L₁) (f₂ : K₂ ⟶ L₂)
  (F : C₁ ⥤ C₂ ⥤ D) [F.PreservesZeroMorphisms] [∀ X₁, (F.obj X₁).PreservesZeroMorphisms]
  (c : ComplexShape J) [TotalComplexShape c₁ c₂ c]

/-- The condition that `((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂` has
a total complex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d75315d0baea29eb4c4127b44fa3e28e431ee0a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
