# symmetricLogComb_half_lt_four_thirds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6d6fc54-0b52-664a-bbf6-5e34eb7fc622",
  "kind": "theorem",
  "lexical_name": "symmetricLogComb_half_lt_four_thirds",
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
  "slug": "symmetriclogcomb-half-lt-four-thirds--93b7b19fc33347e21e28a9de",
  "source": {
    "blob": "e23fcf52bff736a11cb9f88cef61f370d9e54480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93b7b19fc33347e21e28a9deb067b822610509c596f6401983b3d794bddb95ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6d6fc54-0b52-664a-bbf6-5e34eb7fc622`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogComb_half_lt_four_thirds : symmetricLogComb (1/2) < 4/3 := by
  rw [symmetricLogComb_half]
  -- We have: log(3/2) > 2/5 = 0.4, log(2) > 0.6931471803
  -- So: 1/log(3/2) < 2.5, 1/log(2) < 1.4428
  -- Thus: 1/log(3/2) - 1/log(2) < 2.5 - 1/0.6931471808 ≈ 1.057 < 4/3
  have hlog32_pos : 0 < log (3/2) := log_pos (by norm_num : (1:ℝ) < 3/2)
  have hlog2_pos : 0 < log 2 := log_pos one_lt_two
  have hlog32_lb : 2/5 < log (3/2) := log_three_half_gt
  have hlog2_lb : (0.6931471803 : ℝ) < log 2 := Real.log_two_gt_d9
  -- 1/log(3/2) < 5/2
  have h1 : 1 / log (3/2) < 5/2 := by
    rw [div_lt_iff₀ hlog32_pos]
    have : (2:ℝ)/5 * (5/2) = 1 := by norm_num
    linarith [mul_lt_mul_of_pos_right hlog32_lb (by norm_num : (0:ℝ) < 5/2)]
  -- 1/log(2) > 1/0.6931471808
  have hlog2_ub : log 2 < 0.6931471808 := Real.log_two_lt_d9
  have h2 : 1 / log 2 > 1/0.6931471808 := by
    exact one_div_lt_one_div_of_lt hlog2_pos hlog2_ub
  -- Combine
  calc 1 / log (3/2) - 1 / log 2
      < 5/2 - 1/0.6931471808 := by linarith
    _ < 4/3 := by norm_num

/-- g(t) ≤ 4/3 for 0 < t ≤ 1/2.
    Proof is direct from explicit log inequalities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23fcf52bff736a11cb9f88cef61f370d9e54480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
