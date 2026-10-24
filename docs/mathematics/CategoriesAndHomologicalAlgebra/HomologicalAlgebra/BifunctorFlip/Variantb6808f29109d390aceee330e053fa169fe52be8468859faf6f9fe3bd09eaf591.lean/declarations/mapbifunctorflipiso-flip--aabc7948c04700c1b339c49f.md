# mapBifunctorFlipIso_flip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76fd3c23-31f6-5e5f-4d88-2aabe98d350d",
  "kind": "lemma",
  "lexical_name": "mapBifunctorFlipIso_flip",
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
  "slug": "mapbifunctorflipiso-flip--aabc7948c04700c1b339c49f",
  "source": {
    "blob": "8caee67bdf8469e28ae4a24fc12e21e4d6d24cd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantb6808f29109d390aceee330e053fa169fe52be8468859faf6f9fe3bd09eaf591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aabc7948c04700c1b339c49f13a819d0e0b02b83a9cd456ae5249510b3d98abc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantb6808f29109d390aceee330e053fa169fe52be8468859faf6f9fe3bd09eaf591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76fd3c23-31f6-5e5f-4d88-2aabe98d350d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorFlipIso_flip
    [TotalComplexShapeSymmetry c₂ c₁ c] [TotalComplexShapeSymmetrySymmetry c₁ c₂ c] :
    mapBifunctorFlipIso K₂ K₁ F.flip c = (mapBifunctorFlipIso K₁ K₂ F c).symm :=
  (((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂).flip_totalFlipIso c

variable {K₁ K₂ L₁ L₂} in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantb6808f29109d390aceee330e053fa169fe52be8468859faf6f9fe3bd09eaf591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantb6808f29109d390aceee330e053fa169fe52be8468859faf6f9fe3bd09eaf591.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8caee67bdf8469e28ae4a24fc12e21e4d6d24cd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
