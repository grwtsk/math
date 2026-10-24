# homologyIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba91df153fb9ab9c508a69419087a2e86fd7ddb3a7312ee017aeb4442eae5717",
  "kind": "def",
  "lexical_name": "homologyIso",
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
  "slug": "homologyiso--d0b63c013d5cbca91728e48d",
  "source": {
    "blob": "d75b716963237edb952d3ce9629e60ec47e2079f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 326,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0b63c013d5cbca91728e48df545d7e6e3211ed49122abd6c541f74641d6d092",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba91df153fb9ab9c508a69419087a2e86fd7ddb3a7312ee017aeb4442eae5717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 326–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def homologyIso (C : HomologicalComplex A c) (j : ι) :
    F.obj (C.homology j) ≅ ((F.mapHomologicalComplex c).obj C).homology j :=
  (PreservesCokernel.iso F _).trans
    (cokernel.mapIso _ _
      ((F.mapIso (imageSubobjectIso _)).trans
        ((PreservesImage.iso F _).symm.trans (imageSubobjectIso _).symm))
      ((F.mapIso (kernelSubobjectIso _)).trans
        ((PreservesKernel.iso F _).trans (kernelSubobjectIso _).symm))
      (by
        dsimp
        ext
        simp only [Category.assoc, imageToKernel_arrow]
        erw [kernelSubobject_arrow', imageSubobject_arrow']
        simp [← F.map_comp]))
#align category_theory.functor.homology_iso CategoryTheory.Functor.homologyIso

/-- If `F` is an exact additive functor, then `F` commutes with `Hᵢ` (up to natural isomorphism). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant5d96d6fd1cc7330321e10759a8914cf43827e40f3b086848814f3d913e360a72.lean#L326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d75b716963237edb952d3ce9629e60ec47e2079f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
