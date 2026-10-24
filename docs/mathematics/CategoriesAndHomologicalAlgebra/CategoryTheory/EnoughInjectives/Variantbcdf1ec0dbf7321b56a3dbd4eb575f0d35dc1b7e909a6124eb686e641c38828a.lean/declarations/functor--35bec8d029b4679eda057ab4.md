# functor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10a03b5a3a89b2b4feae68052ec17d84f96f41f354df9fe5d30e461b0fe88411",
  "kind": "abbrev",
  "lexical_name": "functor",
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
  "slug": "functor--35bec8d029b4679eda057ab4",
  "source": {
    "blob": "e3bdc9953f13dbbffdd6cc937da96991022bbb99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35bec8d029b4679eda057ab4636e2f00e13ce2dc2be712c57a6c3bdf57341627",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10a03b5a3a89b2b4feae68052ec17d84f96f41f354df9fe5d30e461b0fe88411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev functor : J ⥤ C :=
  functorToMonoOver hG A₀ J ⋙ MonoOver.forget _ ⋙ Over.forget _

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantbcdf1ec0dbf7321b56a3dbd4eb575f0d35dc1b7e909a6124eb686e641c38828a.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3bdc9953f13dbbffdd6cc937da96991022bbb99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
