# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6257b4b63f98bf7d94f20ce3e3030eabbdb11367f69bcd2e9ad14096bdf7f201",
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
  "slug": "instance--0d73bba5a7480bc1e88ea85a",
  "source": {
    "blob": "3f89f8b314ec10f03ae91605f33cb14969f6fd81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d73bba5a7480bc1e88ea85a40bd490c857ba5e0d043fad11cc05cddb4aef4e5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6257b4b63f98bf7d94f20ce3e3030eabbdb11367f69bcd2e9ad14096bdf7f201`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (preservesColimitsOfShape (J := J) (C := C) K).IsClosedUnderIsomorphisms := by
  rw [preservesColimitsOfShape_eq_iSup]
  infer_instance

/-- The property of objects in the functor category `J ⥤ C`
which preserves finite limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f89f8b314ec10f03ae91605f33cb14969f6fd81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
