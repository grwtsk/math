# Sheaf.presheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9154fa57e9cde27c07ea0f1236020bd4151a10e4f9b8382aaa4c518d041560eb",
  "kind": "abbrev",
  "lexical_name": "Sheaf.presheaf",
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
  "slug": "sheaf-presheaf--c7acb2801bca8dca2d57b710",
  "source": {
    "blob": "e00bdebe360df5126ce9cd1c8129d4c8f57e33ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7acb2801bca8dca2d57b710974c3b015473cf99e1638c03cceb663a2b3042ba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9154fa57e9cde27c07ea0f1236020bd4151a10e4f9b8382aaa4c518d041560eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Sheaf.presheaf (F : X.Sheaf C) : TopCat.Presheaf C X :=
  F.1
set_option linter.uppercaseLean3 false in
#align Top.sheaf.presheaf TopCat.Sheaf.presheaf

variable (C X)

-- Let's construct a trivial example, to keep the inhabited linter happy.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variante05f4f71f66d51f7f58f4d532907cc4040326dbda8b87b4ccb184394319f5ee1.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00bdebe360df5126ce9cd1c8129d4c8f57e33ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
