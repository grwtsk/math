# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2e2a5f8a9deb459cecc0d80ea0ea6a9d2bb868ec9a0d117b60e6c72ca0aec5d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4f30aa4bce274500e585e95c",
  "source": {
    "blob": "201e37a4b3f3c3e44ec983677edc40cc5c8ba809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 114,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f30aa4bce274500e585e95c5b310461ccbbfe54ada8f2b9adcc38d32381cd66",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2e2a5f8a9deb459cecc0d80ea0ea6a9d2bb868ec9a0d117b60e6c72ca0aec5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MonoidalCategory (Dial C) :=
  .ofTensorHom
    (tensor_id := tensor_id)
    (tensor_comp := tensor_comp)
    (associator_naturality := associator_naturality)
    (leftUnitor_naturality := leftUnitor_naturality)
    (rightUnitor_naturality := rightUnitor_naturality)
    (pentagon := pentagon)
    (triangle := triangle)

/-- The braiding isomorphism `X ⊗ Y ≅ Y ⊗ X` in `Dial C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant2112dd7c03f4b2b98d6378fa458a3de567eb8c1508120204fd1bc5b102ba7963.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201e37a4b3f3c3e44ec983677edc40cc5c8ba809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
