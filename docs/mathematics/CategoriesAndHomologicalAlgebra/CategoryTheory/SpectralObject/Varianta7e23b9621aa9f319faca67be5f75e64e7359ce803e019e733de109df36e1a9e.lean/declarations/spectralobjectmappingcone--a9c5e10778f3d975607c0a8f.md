# spectralObjectMappingCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46267f9c2c34955f8f1645a782f9fd63e37e858b6e17d7fe18f5fed1b3cfefc2",
  "kind": "def",
  "lexical_name": "spectralObjectMappingCone",
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
  "slug": "spectralobjectmappingcone--a9c5e10778f3d975607c0a8f",
  "source": {
    "blob": "24e9b69535f4febeadb4a858c01d2c65fe090a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Varianta7e23b9621aa9f319faca67be5f75e64e7359ce803e019e733de109df36e1a9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9c5e10778f3d975607c0a8f144c20f19be1ffc92e82671d85e6de24462b1e6f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Varianta7e23b9621aa9f319faca67be5f75e64e7359ce803e019e733de109df36e1a9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46267f9c2c34955f8f1645a782f9fd63e37e858b6e17d7fe18f5fed1b3cfefc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def spectralObjectMappingCone :
    SpectralObject (HomotopyCategory C (ComplexShape.up ℤ)) (CochainComplex C ℤ) where
  ω₁ := composableArrowsFunctor C ⋙ HomotopyCategory.quotient _ _
  δ'.app D := ((HomotopyCategory.quotient C (ComplexShape.up ℤ)).mapTriangle.obj
    (CochainComplex.mappingConeCompTriangle (D.map' 0 1) (D.map' 1 2))).mor₃
  δ'.naturality D₁ D₂ φ := by
    obtain ⟨_, _, _, f, g, rfl⟩ := ComposableArrows.mk₂_surjective D₁
    obtain ⟨_, _, _, f', g', rfl⟩ := ComposableArrows.mk₂_surjective D₂
    have eq := CochainComplex.mappingConeCompTriangle_mor₃_naturality f g f' g' φ
    dsimp [ComposableArrows.Precomp.map] at eq ⊢
    simp only [Category.assoc, ← Functor.map_comp_assoc]
    simp [eq]
  distinguished' D := by
    obtain ⟨_, _, _, f, g, rfl⟩ := ComposableArrows.mk₂_surjective D
    exact HomotopyCategory.mappingConeCompTriangleh_distinguished f g

end HomotopyCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Varianta7e23b9621aa9f319faca67be5f75e64e7359ce803e019e733de109df36e1a9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralObject/Varianta7e23b9621aa9f319faca67be5f75e64e7359ce803e019e733de109df36e1a9e.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e9b69535f4febeadb4a858c01d2c65fe090a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
