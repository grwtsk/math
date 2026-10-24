# functorToCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4841c67819a62b356df16be972d5dc664f99f3adb2c67de3c1634d7e12002e3c",
  "kind": "def",
  "lexical_name": "functorToCat",
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
  "slug": "functortocat--142742437ceb34c83bfc402c",
  "source": {
    "blob": "39218200a0a8a80541e2e6c5760edb357f553da9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant536bfe3467ce90ae45cd9efae0fb193ec1ca979cef1ce1e728ffd7c2487d0f9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:142742437ceb34c83bfc402c295e340304b60b1831ba64799f45f84ee19449f8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant536bfe3467ce90ae45cd9efae0fb193ec1ca979cef1ce1e728ffd7c2487d0f9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4841c67819a62b356df16be972d5dc664f99f3adb2c67de3c1634d7e12002e3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorToCat : Type u ⥤ Cat.{0, u} where
  obj A := ↧(Codiscrete A)
  map f := (functorOfFun f).toCatHom

open Adjunction Cat

/-- For a category `C` and type `A`, there is an equivalence between functions `objects.obj C ⟶ A`
and functors `C ⥤ Codiscrete A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant536bfe3467ce90ae45cd9efae0fb193ec1ca979cef1ce1e728ffd7c2487d0f9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant536bfe3467ce90ae45cd9efae0fb193ec1ca979cef1ce1e728ffd7c2487d0f9c.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39218200a0a8a80541e2e6c5760edb357f553da9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
