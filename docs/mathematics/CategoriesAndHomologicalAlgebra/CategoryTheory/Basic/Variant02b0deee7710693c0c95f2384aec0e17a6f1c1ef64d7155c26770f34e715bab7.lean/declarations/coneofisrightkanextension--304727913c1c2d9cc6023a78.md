# coneOfIsRightKanExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a32d3e7200bd8bcbe6a544c596cb06810fa0988d8d29cba172d7a7cd41fbda01",
  "kind": "def",
  "lexical_name": "coneOfIsRightKanExtension",
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
  "slug": "coneofisrightkanextension--304727913c1c2d9cc6023a78",
  "source": {
    "blob": "5666688ed764288921731d42ec7e5420ed2db361",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 605,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:304727913c1c2d9cc6023a7855fd2260d3e49b4c2b93c807a020563a2837431c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a32d3e7200bd8bcbe6a544c596cb06810fa0988d8d29cba172d7a7cd41fbda01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 605–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coneOfIsRightKanExtension (c : Cone F) : Cone F' where
  pt := c.pt
  π := F'.liftOfIsRightKanExtension α _ c.π

/-- If `c` is a limit cone for a functor `F : C ⥤ H` and `α : L ⋙ F' ⟶ F` is the counit of any
right Kan extension `F' : D ⥤ H` of `F` along `L : C ⥤ D`, then `coneOfIsRightKanExtension α c` is
a limit cone, too. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant02b0deee7710693c0c95f2384aec0e17a6f1c1ef64d7155c26770f34e715bab7.lean#L605).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5666688ed764288921731d42ec7e5420ed2db361` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
