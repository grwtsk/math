# isColimitOfIsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a79629182994a2af5d5c2155e8e331945c12e7a79d4657ebe5d834b9ec167d12",
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
  "slug": "iscolimitofisiso--1ba551a48f6930b29de4c787",
  "source": {
    "blob": "4f486f393cf15aa3ba7072f4864ea72875b64be2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 259,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EventuallyConstant/Variant7d77a006c4f7ff69e94633cb9e2d64c0fc8926c514b73017e8abc28433141607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ba551a48f6930b29de4c787aa622f54ea3de72e3671c475c0d0b8c578ff0d98",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EventuallyConstant/Variant7d77a006c4f7ff69e94633cb9e2d64c0fc8926c514b73017e8abc28433141607.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a79629182994a2af5d5c2155e8e331945c12e7a79d4657ebe5d834b9ec167d12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–275.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EventuallyConstant/Variant7d77a006c4f7ff69e94633cb9e2d64c0fc8926c514b73017e8abc28433141607.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EventuallyConstant/Variant7d77a006c4f7ff69e94633cb9e2d64c0fc8926c514b73017e8abc28433141607.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f486f393cf15aa3ba7072f4864ea72875b64be2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
