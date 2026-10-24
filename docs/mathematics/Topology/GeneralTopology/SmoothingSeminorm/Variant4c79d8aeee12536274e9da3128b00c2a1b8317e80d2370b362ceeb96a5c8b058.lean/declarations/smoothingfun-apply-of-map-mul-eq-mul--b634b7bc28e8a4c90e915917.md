# smoothingFun_apply_of_map_mul_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb856f040270765afe527066a77b6bb4b1af22e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a8c4a44-c1f3-5181-1fd3-dfec7f340fb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e90918a0-b680-614a-5891-084bc8a49f78",
  "kind": "theorem",
  "lexical_name": "smoothingFun_apply_of_map_mul_eq_mul",
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
  "slug": "smoothingfun-apply-of-map-mul-eq-mul--b634b7bc28e8a4c90e915917",
  "source": {
    "blob": "bb856f040270765afe527066a77b6bb4b1af22e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 579,
    "path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b634b7bc28e8a4c90e915917cc07b6cdd8899b18a0c54fd486127742a22528eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e90918a0-b680-614a-5891-084bc8a49f78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothingFun_apply_of_map_mul_eq_mul (hμ1 : μ 1 ≤ 1) {x : R}
    (hx : ∀ y : R, μ (x * y) = μ x * μ y) : smoothingFun μ x = μ x := by
  apply tendsto_nhds_unique_of_eventuallyEq (tendsto_smoothingFun_of_map_one_le_one μ hμ1 x)
    tendsto_const_nhds
  simp only [EventuallyEq, eventually_atTop, ge_iff_le]
  use 1
  intro n hn
  simp only [smoothingSeminormSeq]
  by_cases hx0 : μ x = 0
  · have hxn : μ (x ^ n) = 0 := by
      apply le_antisymm _ (apply_nonneg μ _)
      apply le_trans (map_pow_le_pow μ x (one_le_iff_ne_zero.mp hn))
      rw [hx0, zero_pow (pos_iff_ne_zero.mp hn)]
    rw [hx0, hxn, zero_rpow (one_div_cast_ne_zero (one_le_iff_ne_zero.mp hn))]
  · have h1 : μ 1 = 1 := by rw [← mul_right_inj' hx0, ← hx 1, mul_one, mul_one]
    have hn0 : (n : ℝ) ≠ 0 := cast_ne_zero.mpr (_root_.ne_of_gt (lt_of_lt_of_le zero_lt_one hn))
    rw [← mul_one (x ^ n), pow_mul_apply_eq_pow_mul μ hx, ← rpow_natCast, h1, mul_one,
      ← rpow_mul (apply_nonneg μ _), mul_one_div_cancel hn0, rpow_one]

/-- If `μ 1 ≤ 1`, `μ` is nonarchimedean, and `∀ y : R, μ (x * y) = μ x * μ y`, then
  `smoothingSeminorm μ x = μ x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb856f040270765afe527066a77b6bb4b1af22e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
