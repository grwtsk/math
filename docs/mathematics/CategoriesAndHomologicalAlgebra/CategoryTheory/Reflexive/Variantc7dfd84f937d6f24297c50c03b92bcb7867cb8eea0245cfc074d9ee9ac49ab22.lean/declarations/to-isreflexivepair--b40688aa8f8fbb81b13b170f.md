# to_isReflexivePair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed0f04de51b9a2387111af351eb51172a3762456bb49c95c8cb202668bfab645",
  "kind": "instance",
  "lexical_name": "to_isReflexivePair",
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
  "slug": "to-isreflexivepair--b40688aa8f8fbb81b13b170f",
  "source": {
    "blob": "a26fb2edec48b20b4613042058154f6535618664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 499,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantc7dfd84f937d6f24297c50c03b92bcb7867cb8eea0245cfc074d9ee9ac49ab22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b40688aa8f8fbb81b13b170f35149f83285a64024d623ea992da763bec04aa10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantc7dfd84f937d6f24297c50c03b92bcb7867cb8eea0245cfc074d9ee9ac49ab22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed0f04de51b9a2387111af351eb51172a3762456bb49c95c8cb202668bfab645`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 499–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance to_isReflexivePair {F : WalkingReflexivePair ⥤ C} :
    IsReflexivePair (F.map .left) (F.map .right) :=
  ⟨F.map .reflexion, map_reflexion_comp_map_left F, map_reflexion_comp_map_right F⟩

end reflexivePair

/-- A `ReflexiveCofork` is a cocone over a `WalkingReflexivePair`-shaped diagram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantc7dfd84f937d6f24297c50c03b92bcb7867cb8eea0245cfc074d9ee9ac49ab22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variantc7dfd84f937d6f24297c50c03b92bcb7867cb8eea0245cfc074d9ee9ac49ab22.lean#L499).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a26fb2edec48b20b4613042058154f6535618664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
