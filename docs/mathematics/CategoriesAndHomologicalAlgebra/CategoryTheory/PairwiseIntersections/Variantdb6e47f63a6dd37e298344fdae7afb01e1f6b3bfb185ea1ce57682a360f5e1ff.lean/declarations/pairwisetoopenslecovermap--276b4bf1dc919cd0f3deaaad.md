# pairwiseToOpensLeCoverMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b74405cbe097e3056e0b9465eb9892d859c555c6244ae6fc1bf477f5107a7818",
  "kind": "def",
  "lexical_name": "pairwiseToOpensLeCoverMap",
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
  "slug": "pairwisetoopenslecovermap--276b4bf1dc919cd0f3deaaad",
  "source": {
    "blob": "124fd14001e5816f4c52a149370cf255223a3481",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:276b4bf1dc919cd0f3deaaad66591cb34115a3f1f6b44ad7e9f1f55210614f19",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b74405cbe097e3056e0b9465eb9892d859c555c6244ae6fc1bf477f5107a7818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pairwiseToOpensLeCoverMap :
    ∀ {V W : Pairwise ι}, (V ⟶ W) → (pairwiseToOpensLeCoverObj U V ⟶ pairwiseToOpensLeCoverObj U W)
  | _, _, id_single _ => 𝟙 _
  | _, _, id_pair _ _ => 𝟙 _
  | _, _, left _ _ => homOfLE inf_le_left
  | _, _, right _ _ => homOfLE inf_le_right

/-- The category of single and double intersections of the `U i` maps into the category
of open sets below some `U i`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `124fd14001e5816f4c52a149370cf255223a3481` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
