# ProjectiveResolution.isoLeftDerivedObj_hom_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80c1f00954be8e4313fa1b99c729bccf1cf1d1f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f8bf471-88df-28d3-1d84-3bf567695b92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f063c43f-4d35-5f87-e9fe-33fce83c52dd",
  "kind": "lemma",
  "lexical_name": "ProjectiveResolution.isoLeftDerivedObj_hom_naturality",
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
  "slug": "projectiveresolution-isoleftderivedobj-hom-naturality--9b21a09a185a2a0c329add82",
  "source": {
    "blob": "80c1f00954be8e4313fa1b99c729bccf1cf1d1f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b21a09a185a2a0c329add822147dc15c6cbfb7bcfa7ce1008100c4e4c625c5a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f063c43f-4d35-5f87-e9fe-33fce83c52dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ProjectiveResolution.isoLeftDerivedObj_hom_naturality
    {X Y : C} (f : X ⟶ Y) (P : ProjectiveResolution X) (Q : ProjectiveResolution Y)
    (φ : P.complex ⟶ Q.complex) (comm : φ.f 0 ≫ Q.π.f 0 = P.π.f 0 ≫ f)
    (F : C ⥤ D) [F.Additive] (n : ℕ) :
    (F.leftDerived n).map f ≫ (Q.isoLeftDerivedObj F n).hom =
      (P.isoLeftDerivedObj F n).hom ≫
        (F.mapHomologicalComplex _ ⋙ HomologicalComplex.homologyFunctor _ _ n).map φ := by
  dsimp [isoLeftDerivedObj, Functor.leftDerived]
  rw [assoc, ← Functor.map_comp_assoc,
    ProjectiveResolution.isoLeftDerivedToHomotopyCategoryObj_hom_naturality f P Q φ comm F,
    Functor.map_comp, assoc]
  erw [(HomotopyCategory.homologyFunctorFactors D (ComplexShape.down ℕ) n).hom.naturality]
  rfl

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant427cca0d80a733eddabe71380be1adb16c606c6735c497ba245f0777f8f2962b.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80c1f00954be8e4313fa1b99c729bccf1cf1d1f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
