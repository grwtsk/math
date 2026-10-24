# mathlib_sheaf_boundary_denies_topos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25ad019d-ab11-78e9-4705-1d5c653ff7ba",
  "kind": "theorem",
  "lexical_name": "mathlib_sheaf_boundary_denies_topos",
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
  "slug": "mathlib-sheaf-boundary-denies-topos--009116c92465db38bc5b07ee",
  "source": {
    "blob": "cd5cac8cb786e525894d246ad08a264476cf7307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:009116c92465db38bc5b07ee78a0d14e2721f10daa0640452d322ed95d888cdc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25ad019d-ab11-78e9-4705-1d5c653ff7ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mathlib_sheaf_boundary_denies_topos
    (M : BitMatrix) :
    (defaultMathlibSheafCategoryBoundarySurface M).toposClaim = false := by
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafCategoryBoundary/Variantd81a86094fc5bff78eff47096a9677a48ab74a77bff659f1b897ce0ad3e8d972.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5cac8cb786e525894d246ad08a264476cf7307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
