# wellOrderInductionData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3783ee5b05bf59862a22e45b14b2d0ee84fdf39a84858692e93eb78859aabbf",
  "kind": "def",
  "lexical_name": "wellOrderInductionData",
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
  "slug": "wellorderinductiondata--00d800b5ebdab54e88f4a418",
  "source": {
    "blob": "1ca6bb2d5013a93e5d5126ea01115c6671db9eef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 206,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantd989e280c38ceaf2816c546d259a94fbf20780b654812847af84b10aa62f774b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00d800b5ebdab54e88f4a418944c22c7ba09a99f467e3c5df67234a528d2654c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantd989e280c38ceaf2816c546d259a94fbf20780b654812847af84b10aa62f774b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3783ee5b05bf59862a22e45b14b2d0ee84fdf39a84858692e93eb78859aabbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def wellOrderInductionData :
    (sqFunctor c p f g).WellOrderInductionData where
  succ j hj sq' :=
    have := hF j hj sq'.f'
    have := hF j hj
    { f' := sq'.sq.lift
      w₁ := by
        dsimp
        simp only [← sq'.w₁]
        conv_rhs => rw [← sq'.sq.fac_left, ← F.map_comp_assoc]
        rfl }
  map_succ j hj sq' := by cat_disch
  lift j hj s := lift hj s
  map_lift j hj s i hij := map_lift hj s hij

include hF hc

variable {c f g} (sq : CommSq f (c.ι.app ⊥) p g)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantd989e280c38ceaf2816c546d259a94fbf20780b654812847af84b10aa62f774b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionLifting/Variantd989e280c38ceaf2816c546d259a94fbf20780b654812847af84b10aa62f774b.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ca6bb2d5013a93e5d5126ea01115c6671db9eef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
