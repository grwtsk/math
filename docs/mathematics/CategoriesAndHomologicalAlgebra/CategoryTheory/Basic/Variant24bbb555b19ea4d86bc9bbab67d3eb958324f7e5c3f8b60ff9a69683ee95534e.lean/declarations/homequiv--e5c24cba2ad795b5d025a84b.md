# homEquiv'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23fe84c5d3ba2d6f0ffaca05dc10004a7cf0c002f7cece8c12ca995d91900426",
  "kind": "abbrev",
  "lexical_name": "homEquiv'",
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
  "slug": "homequiv--e5c24cba2ad795b5d025a84b",
  "source": {
    "blob": "6bf07d806588471a5794fd565c6768734a4efe48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5c24cba2ad795b5d025a84b3f925613f32eb9d9231ff6c091d2454958b88134",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23fe84c5d3ba2d6f0ffaca05dc10004a7cf0c002f7cece8c12ca995d91900426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev homEquiv' {F : C ⥤ D} {G : D ⥤ C} (adj : G ⊣ F) (X : C) (Y : D) :
    (Y ⟶ F.obj X) ≃ (G.obj Y ⟶ X) := (homEquiv adj Y X).symm

attribute [simps (attr := to_dual none) -isSimp] homEquiv

@[to_dual none] alias homEquiv_unit := homEquiv_apply
@[to_dual none] alias homEquiv_counit := homEquiv_symm_apply

-- These lemmas are not global simp lemmas because certain adjunctions
-- are constructed using `Adjunction.mkOfHomEquiv`, and we certainly
-- do not want `dsimp` to apply `homEquiv_unit` or `homEquiv_counit`
-- in that case. However, when proving general API results about adjunctions,
-- it may be advisable to add a local simp attribute to these lemmas.
attribute [local simp] Adjunction.homEquiv_unit Adjunction.homEquiv_counit

set_option linter.existingAttributeWarning false in
@[ext, to_dual ext_counit]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant24bbb555b19ea4d86bc9bbab67d3eb958324f7e5c3f8b60ff9a69683ee95534e.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf07d806588471a5794fd565c6768734a4efe48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
