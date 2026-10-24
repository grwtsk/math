# IsFreeGroupoid.Generators

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45bbce1a6c53d8d1110873591c97b4148901aa674d42ff32b652c9f6fdb11489",
  "kind": "def",
  "lexical_name": "IsFreeGroupoid.Generators",
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
  "slug": "isfreegroupoid-generators--5d76309b6cb2354f2b972ccb",
  "source": {
    "blob": "872fc174b133aafe54c58d262f7a3fc134162147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant39b3fa21a3da629abb7d05550e7455d726854ef72d9c573209b772a2080fe210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d76309b6cb2354f2b972ccb9060c1774d88b50f2c361f56ea20d1183aa07fc5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant39b3fa21a3da629abb7d05550e7455d726854ef72d9c573209b772a2080fe210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45bbce1a6c53d8d1110873591c97b4148901aa674d42ff32b652c9f6fdb11489`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsFreeGroupoid.Generators (G) [Groupoid G] :=
  G
#align is_free_groupoid.generators IsFreeGroupoid.Generators

/-- A groupoid `G` is free when we have the following data:
 - a quiver on `IsFreeGroupoid.Generators G` (a type synonym for `G`)
 - a function `of` taking a generating arrow to a morphism in `G`
 - such that a functor from `G` to any group `X` is uniquely determined
   by assigning labels in `X` to the generating arrows.

   This definition is nonstandard. Normally one would require that functors `G ⥤ X`
   to any _groupoid_ `X` are given by graph homomorphisms from `generators`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant39b3fa21a3da629abb7d05550e7455d726854ef72d9c573209b772a2080fe210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NielsenSchreier/Variant39b3fa21a3da629abb7d05550e7455d726854ef72d9c573209b772a2080fe210.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872fc174b133aafe54c58d262f7a3fc134162147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
