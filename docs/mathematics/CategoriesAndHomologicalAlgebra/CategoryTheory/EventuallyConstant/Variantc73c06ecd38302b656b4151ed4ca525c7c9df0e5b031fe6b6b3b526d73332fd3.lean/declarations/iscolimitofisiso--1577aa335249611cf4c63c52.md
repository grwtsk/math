# isColimitOfIsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b08ea5f757408c2c4088640f1ecd511044ffc50f4ef0d69257bd60448c5d40a",
  "kind": "def",
  "lexical_name": "isColimitOfIsIso",
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
  "slug": "iscolimitofisiso--1577aa335249611cf4c63c52",
  "source": {
    "blob": "cc4eb6ce5cb9ca4e93a896196777d62e473efb28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 267,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EventuallyConstant/Variantc73c06ecd38302b656b4151ed4ca525c7c9df0e5b031fe6b6b3b526d73332fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1577aa335249611cf4c63c52287c13cebf0d68a3e43698fbcfd8e0e11a93acb6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EventuallyConstant/Variantc73c06ecd38302b656b4151ed4ca525c7c9df0e5b031fe6b6b3b526d73332fd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b08ea5f757408c2c4088640f1ecd511044ffc50f4ef0d69257bd60448c5d40a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitOfIsIso (c : Cocone F) [IsIso (c.ι.app i₀)] : IsColimit c :=
  IsColimit.ofIsoColimit h.isColimitCocone (by
    refine Cocone.ext (asIso (c.ι.app i₀)) (fun j ↦ ?_)
    let i := IsFiltered.max i₀ j
    let α : i₀ ⟶ i := IsFiltered.leftToMax _ _
    let β : j ⟶ i := IsFiltered.rightToMax _ _
    dsimp
    rw [← c.w α, ← c.w β, h.coconeιApp_eq j _ β α, assoc, isoMap_inv_hom_id_assoc])

end IsEventuallyConstantFrom

end Functor

namespace IsCofiltered

/-- A functor `F : J ⥤ C` from a cofiltered category is eventually constant if there
exists `j : J`, such that for any `f : i ⟶ j`, the induced map `F.map f` is an isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EventuallyConstant/Variantc73c06ecd38302b656b4151ed4ca525c7c9df0e5b031fe6b6b3b526d73332fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EventuallyConstant/Variantc73c06ecd38302b656b4151ed4ca525c7c9df0e5b031fe6b6b3b526d73332fd3.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc4eb6ce5cb9ca4e93a896196777d62e473efb28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
