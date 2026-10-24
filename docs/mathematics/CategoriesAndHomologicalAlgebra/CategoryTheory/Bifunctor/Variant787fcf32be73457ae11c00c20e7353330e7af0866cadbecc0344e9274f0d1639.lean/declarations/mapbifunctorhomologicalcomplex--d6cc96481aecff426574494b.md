# mapBifunctorHomologicalComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8979e6aa35e461120f47da2e7e165be1040286e4dabf4815183895163ce782b9",
  "kind": "def",
  "lexical_name": "mapBifunctorHomologicalComplex",
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
  "slug": "mapbifunctorhomologicalcomplex--d6cc96481aecff426574494b",
  "source": {
    "blob": "d75315d0baea29eb4c4127b44fa3e28e431ee0a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6cc96481aecff426574494b08cf7f665fb086de4202c237084d5d288961eed9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8979e6aa35e461120f47da2e7e165be1040286e4dabf4815183895163ce782b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapBifunctorHomologicalComplex :
    HomologicalComplex C₁ c₁ ⥤ HomologicalComplex C₂ c₂ ⥤ HomologicalComplex₂ D c₁ c₂ where
  obj := mapBifunctorHomologicalComplexObj F c₂
  map {K₁ K₁'} f :=
    { app := fun K₂ => HomologicalComplex₂.homMk
        (((GradedObject.mapBifunctor F I₁ I₂).map f.f).app K₂.X) (by
          intros
          dsimp
          simp only [← NatTrans.comp_app, ← F.map_comp, f.comm]) (by simp) }

variable {c₁ c₂}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant787fcf32be73457ae11c00c20e7353330e7af0866cadbecc0344e9274f0d1639.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d75315d0baea29eb4c4127b44fa3e28e431ee0a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
