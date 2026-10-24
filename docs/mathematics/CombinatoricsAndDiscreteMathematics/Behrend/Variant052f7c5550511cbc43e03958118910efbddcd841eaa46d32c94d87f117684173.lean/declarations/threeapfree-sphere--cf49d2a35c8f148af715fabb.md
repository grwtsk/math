# threeAPFree_sphere

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d8ce5cb-c2b9-0379-1418-95a8619cdfb4",
  "kind": "lemma",
  "lexical_name": "threeAPFree_sphere",
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
  "slug": "threeapfree-sphere--cf49d2a35c8f148af715fabb",
  "source": {
    "blob": "e3b152982f972ac8125d780b5fec3c1d428682dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf49d2a35c8f148af715fabbee9dfdfd7f5917d3838c301722db332c297c0803",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d8ce5cb-c2b9-0379-1418-95a8619cdfb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma threeAPFree_sphere {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    [StrictConvexSpace ℝ E] (x : E) (r : ℝ) : ThreeAPFree (sphere x r) := by
  obtain rfl | hr := eq_or_ne r 0
  · rw [sphere_zero]
    exact threeAPFree_singleton _
  · convert threeAPFree_frontier isClosed_closedBall (strictConvex_closedBall ℝ x r)
    exact (frontier_closedBall _ hr).symm

namespace Behrend

variable {n d k N : ℕ} {x : Fin n → ℕ}

/-!
### Turning the sphere into 3AP-free set

We define `Behrend.sphere`, the intersection of the $L^2$ sphere with the positive quadrant of
integer points. Because the $L^2$ closed ball is strictly convex, the $L^2$ sphere and
`Behrend.sphere` are 3AP-free (`threeAPFree_sphere`). Then we can turn this set in
`Fin n → ℕ` into a set in `ℕ` using `Behrend.map`, which preserves `ThreeAPFree` because it is
an additive monoid homomorphism.
-/


/-- The box `{0, ..., d - 1}^n` as a `Finset`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3b152982f972ac8125d780b5fec3c1d428682dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
