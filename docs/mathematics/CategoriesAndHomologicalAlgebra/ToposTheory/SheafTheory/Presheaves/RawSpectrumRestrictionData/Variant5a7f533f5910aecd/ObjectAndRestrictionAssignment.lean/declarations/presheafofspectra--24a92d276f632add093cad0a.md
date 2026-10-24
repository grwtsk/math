# PresheafOfSpectra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:410e44ca14c694c0c3057aea46c0dce5bd1bd88b6c9f20bfd7d6eabd41bb1978",
  "kind": "structure",
  "lexical_name": "PresheafOfSpectra",
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
  "slug": "presheafofspectra--24a92d276f632add093cad0a",
  "source": {
    "blob": "8a7ae3ef8b011a244d77e18161f90f8e51685ca5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/RawSpectrumRestrictionData/Variant5a7f533f5910aecd/ObjectAndRestrictionAssignment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24a92d276f632add093cad0a4eee39df6d1c56e2d2f472f631b821d53b104c6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/RawSpectrumRestrictionData/Variant5a7f533f5910aecd/ObjectAndRestrictionAssignment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:410e44ca14c694c0c3057aea46c0dce5bd1bd88b6c9f20bfd7d6eabd41bb1978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PresheafOfSpectra
    (C : SiteCategory) where
  obj : C.Obj → SpectrumObject
  restrict :
    ∀ {X Y : C.Obj}, C.Hom Y X →
      SpectrumMorphism (obj X) (obj Y)

end GRWTSK.CategoriesAndHomologicalAlgebra.ToposTheory.SheafTheory.Presheaves.RawSpectrumRestrictionData.Variant5a7f533f5910aecd
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/RawSpectrumRestrictionData/Variant5a7f533f5910aecd/ObjectAndRestrictionAssignment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/ToposTheory/SheafTheory/Presheaves/RawSpectrumRestrictionData/Variant5a7f533f5910aecd/ObjectAndRestrictionAssignment.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7ae3ef8b011a244d77e18161f90f8e51685ca5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
