# crossingUpperBound_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46ec1152-0771-2701-ecb0-2c22be7e54c1",
  "kind": "theorem",
  "lexical_name": "crossingUpperBound_eval",
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
  "slug": "crossingupperbound-eval--61fa5787def2eab3a6a2758a",
  "source": {
    "blob": "b31e8cb068a92c3b1fb5415af14b722c9fdecf22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 75,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61fa5787def2eab3a6a2758ae4304f78448d555464f5f1da9b1a02955195b650",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46ec1152-0771-2701-ecb0-2c22be7e54c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem crossingUpperBound_eval (l u : ℚ) (x : ℝ) (h_ne : u - l ≠ 0) :
    (crossingUpperBound l u).eval x = (u : ℝ) / ((u : ℝ) - l) * (x - l) := by
  simp only [crossingUpperBound, LinearBound.eval]
  have h_ne' : (u : ℝ) - l ≠ 0 := by exact_mod_cast h_ne
  push_cast
  rw [mul_sub_left_distrib]
  field_simp
  ring_nf

/-- The Triangle Theorem: The DeepPoly upper bound contains ReLU.

    For x ∈ [l, u] where l < 0 < u, we prove max(0, x) ≤ λ · (x - l)
    where λ = u / (u - l).

    Geometric intuition: ReLU is convex, and the line connecting
    (l, ReLU(l)) = (l, 0) and (u, ReLU(u)) = (u, u) lies above the graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b31e8cb068a92c3b1fb5415af14b722c9fdecf22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
