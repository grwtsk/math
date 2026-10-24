# relu_relaxation_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75f8da77-16e4-3747-9776-b1a345ff197c",
  "kind": "theorem",
  "lexical_name": "relu_relaxation_sound",
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
  "slug": "relu-relaxation-sound--73048c1899cbf45a8628950c",
  "source": {
    "blob": "b31e8cb068a92c3b1fb5415af14b722c9fdecf22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 164,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73048c1899cbf45a8628950cae4a628c6438c7f91ae4f12d31ffa5666352ed47",
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

Occurrence: `result:75f8da77-16e4-3747-9776-b1a345ff197c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relu_relaxation_sound (l u : ℚ) (x : ℝ) (h : (l : ℝ) ≤ x ∧ x ≤ u) :
    let sb := getReLURelaxation l u
    sb.lower.eval x ≤ max 0 x ∧ max 0 x ≤ sb.upper.eval x := by
  unfold getReLURelaxation
  split_ifs with h_active h_inactive

  · -- Case: l ≥ 0 (always active)
    -- x ≥ l ≥ 0, so max(0, x) = x
    simp only [LinearBound.eval]
    have hx_nonneg : 0 ≤ x := le_trans (by exact_mod_cast h_active) h.1
    rw [max_eq_right hx_nonneg]
    simp

  · -- Case: u ≤ 0 (always inactive)
    -- x ≤ u ≤ 0, so max(0, x) = 0
    simp only [LinearBound.eval]
    have hx_nonpos : x ≤ 0 := le_trans h.2 (by exact_mod_cast h_inactive)
    rw [max_eq_left hx_nonpos]
    simp

  · -- Case: l < 0 < u (crossing)
    push Not at h_active h_inactive
    simp only
    constructor
    · -- Lower bound: 0 ≤ max(0, x)
      simp only [LinearBound.eval]
      have : ((0 : ℚ) : ℝ) * x + ((0 : ℚ) : ℝ) = (0 : ℝ) := by simp
      rw [this]
      exact lower_bound_crossing x
    · -- Upper bound: Triangle theorem
      exact upper_bound_valid l u x h_active h_inactive h

/-! ## Properties of Linear Bounds -/

/-- Identity bound: y = x -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/ReLU/Variant989ddbb4907ae812c3874e9980b5c9a048357ccd4b17f23671d06a99e15397d7.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b31e8cb068a92c3b1fb5415af14b722c9fdecf22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
