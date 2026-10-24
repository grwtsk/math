# multiplicativeClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09dc8331c7bdbf9e5509268d2bbbe33a7c350487aaee6dea176b313d15de78d5",
  "kind": "inductive",
  "lexical_name": "multiplicativeClosure",
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
  "slug": "multiplicativeclosure--be927beb1f5bdd3afeadd974",
  "source": {
    "blob": "05c2acd4033ae063fe1557c330893a778efc1ff9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variantc4f4ba4879c2c69e75b52be2ce4bc0a2e637eeb77d9747c61ef86e1fa92bf5fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be927beb1f5bdd3afeadd974dd841dd4fe87ec76aeaef598b7debc33fb594b5a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variantc4f4ba4879c2c69e75b52be2ce4bc0a2e637eeb77d9747c61ef86e1fa92bf5fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09dc8331c7bdbf9e5509268d2bbbe33a7c350487aaee6dea176b313d15de78d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive multiplicativeClosure (W : MorphismProperty C) : MorphismProperty C
  | of {x y : C} (f : x ⟶ y) (hf : W f) : multiplicativeClosure W f
  | id (x : C) : multiplicativeClosure W (𝟙 x)
  | comp_of {x y z : C} (f : x ⟶ y) (g : y ⟶ z) (hf : multiplicativeClosure W f) (hg : W g) :
    multiplicativeClosure W (f ≫ g)

/-- A variant of `multiplicativeClosure` in which compositions are taken on the left rather than
on the right. It is not intended to be used directly, and one should rather access this via
`multiplicativeClosure_eq_multiplicativeClosure'` in cases where the inductive principle of this
variant is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variantc4f4ba4879c2c69e75b52be2ce4bc0a2e637eeb77d9747c61ef86e1fa92bf5fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Composition/Variantc4f4ba4879c2c69e75b52be2ce4bc0a2e637eeb77d9747c61ef86e1fa92bf5fa.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05c2acd4033ae063fe1557c330893a778efc1ff9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
