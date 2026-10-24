# leftDistrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bbd877ec697f49bfdd90ef88f86f9b81d89b0b494673d9a9aa12b3ef0c6e1fe",
  "kind": "def",
  "lexical_name": "leftDistrib",
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
  "slug": "leftdistrib--361b330e7de9c64842f655bb",
  "source": {
    "blob": "0b30178dd11bd1d2294e510088fb72dea0417a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:361b330e7de9c64842f655bb0d1fc6527ec7bf9fdb5817d8081271962362fe38",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bbd877ec697f49bfdd90ef88f86f9b81d89b0b494673d9a9aa12b3ef0c6e1fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leftDistrib [IsMonoidalLeftDistrib C] (X Y Z : C) :
    (X ⊗ Y) ⨿ (X ⊗ Z) ≅ X ⊗ (Y ⨿ Z) :=
  PreservesColimitPair.iso (tensorLeft X) Y Z

end IsMonoidalLeftDistrib

namespace Distributive

/-- Notation for the forward direction morphism of the canonical left distributivity isomorphism -/
scoped notation "∂L" => leftDistrib

end Distributive

open Distributive

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant861412275fef513c6553216b6c1a6308aa0c5e640b88adf9a956a6d96bd2fc30.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b30178dd11bd1d2294e510088fb72dea0417a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
