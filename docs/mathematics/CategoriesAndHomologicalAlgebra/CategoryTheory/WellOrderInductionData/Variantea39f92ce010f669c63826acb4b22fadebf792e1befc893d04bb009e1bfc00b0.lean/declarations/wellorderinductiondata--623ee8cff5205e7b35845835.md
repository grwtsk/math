# WellOrderInductionData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bd3ebbd7bde13054acae4cacabc50a0fc96bc67af4e2f807b4241e728563384",
  "kind": "structure",
  "lexical_name": "WellOrderInductionData",
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
  "slug": "wellorderinductiondata--623ee8cff5205e7b35845835",
  "source": {
    "blob": "984d997c8385c567436fb5b84c181815c8b38e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:623ee8cff5205e7b35845835c55ab0a05f17c457f89cb0db0786855174d9af0b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bd3ebbd7bde13054acae4cacabc50a0fc96bc67af4e2f807b4241e728563384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure WellOrderInductionData where
  /-- A section `F.obj (op j) → F.obj (op (Order.succ j))` to the restriction
  `F.obj (op (Order.succ j)) → F.obj (op j)` when `j` is not maximal. -/
  succ (j : J) (hj : ¬IsMax j) (x : F.obj (op j)) : F.obj (op (Order.succ j))
  map_succ (j : J) (hj : ¬IsMax j) (x : F.obj (op j)) :
      F.map (homOfLE (Order.le_succ j)).op (succ j hj x) = x
  /-- When `j` is a limit element, and `x` is a compatible family of elements
  in `F.obj (op i)` for all `i < j`, this is a lifting to `F.obj (op j)`. -/
  lift (j : J) (hj : Order.IsSuccLimit j)
    (x : ((OrderHom.Subtype.val (· ∈ Set.Iio j)).monotone.functor.op ⋙ F).sections) :
      F.obj (op j)
  map_lift (j : J) (hj : Order.IsSuccLimit j)
    (x : ((OrderHom.Subtype.val (· ∈ Set.Iio j)).monotone.functor.op ⋙ F).sections)
    (i : J) (hi : i < j) :
        F.map (homOfLE hi.le).op (lift j hj x) = x.val (op ⟨i, hi⟩)

namespace WellOrderInductionData

variable {F} (d : F.WellOrderInductionData) [OrderBot J]

/-- Given `d : F.WellOrderInductionData`, `val₀ : F.obj (op ⊥)` and `j : J`,
this is the data of an element `val : F.obj (op j)` such that the induced
compatible family of elements in all `F.obj (op i)` for `i ≤ j`
is determined by `val₀` and the choice of "liftings" given by `d`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderInductionData/Variantea39f92ce010f669c63826acb4b22fadebf792e1befc893d04bb009e1bfc00b0.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984d997c8385c567436fb5b84c181815c8b38e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
