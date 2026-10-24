# triangle_removal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a26cd209-2fca-0703-2ac0-36ca5d31107d",
  "kind": "lemma",
  "lexical_name": "triangle_removal",
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
  "slug": "triangle-removal--027a39c07c6c43e82d8626cd",
  "source": {
    "blob": "d1108f85e045784f9df861e35b74a91d6aa8dde1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 156,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:027a39c07c6c43e82d8626cd74ffc6175459cf3de0bfdd66b8e1547afb7d6483",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a26cd209-2fca-0703-2ac0-36ca5d31107d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma triangle_removal (hG : #(G.cliqueFinset 3) < triangleRemovalBound ε * card α ^ 3) :
    ∃ G' ≤ G, ∃ _ : DecidableRel G'.Adj,
      (#G.edgeFinset - #G'.edgeFinset : ℝ) < ε * (card α^2 : ℕ) ∧ G'.CliqueFree 3 := by
  by_contra! h
  refine hG.not_le (farFromTriangleFree_iff.2 ?_).le_card_cliqueFinset
  intros G' _ hG hG'
  exact le_of_not_lt fun i ↦ h G' hG _ i hG'

end SimpleGraph

namespace Mathlib.Meta.Positivity
open Lean.Meta Qq SimpleGraph

/-- Extension for the `positivity` tactic: `SimpleGraph.triangleRemovalBound ε` is positive if
`0 < ε ≤ 1`.

Note this looks for `ε ≤ 1` in the context. -/
@[positivity triangleRemovalBound _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1108f85e045784f9df861e35b74a91d6aa8dde1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
