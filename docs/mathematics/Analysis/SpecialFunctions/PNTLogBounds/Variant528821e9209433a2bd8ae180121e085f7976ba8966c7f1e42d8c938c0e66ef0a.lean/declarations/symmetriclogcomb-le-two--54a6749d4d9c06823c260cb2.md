# symmetricLogComb_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a786b45-47d8-62f5-3063-8ca9385683b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04640c7a-c3bb-83e1-4eaa-ed6fc228d18c",
  "kind": "theorem",
  "lexical_name": "symmetricLogComb_le_two",
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
  "slug": "symmetriclogcomb-le-two--54a6749d4d9c06823c260cb2",
  "source": {
    "blob": "94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 182,
    "path": "GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54a6749d4d9c06823c260cb23302de0d0af4a58c46bc7aad97d76b89f0e3805e",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04640c7a-c3bb-83e1-4eaa-ed6fc228d18c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogComb_le_two (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) :
    symmetricLogComb t ≤ 2 := by
  have h1pt_pos : 0 < 1 + t := by linarith
  have h1mt_pos : 0 < 1 - t := by linarith
  have h1pt_ne : 1 + t ≠ 0 := ne_of_gt h1pt_pos
  have h1mt_ne : 1 - t ≠ 0 := ne_of_gt h1mt_pos
  have ht_ne : t ≠ 0 := ne_of_gt ht_pos
  have h1pt_gt1 : 1 < 1 + t := by linarith
  have h1mt_lt1 : 1 - t < 1 := by linarith
  have hlog1p_pos : 0 < log (1 + t) := log_pos h1pt_gt1
  have hlog1m_neg : log (1 - t) < 0 := log_neg h1mt_pos h1mt_lt1
  -- Bound: log(1+t) ≥ t/(1+t) from one_sub_inv_le_log_of_pos
  have hlog1p_lb : t / (1 + t) ≤ log (1 + t) := by
    have h := one_sub_inv_le_log_of_pos h1pt_pos
    convert h using 1
    field_simp; ring
  -- Bound: log(1-t) ≥ -t/(1-t)
  have hlog1m_lb : -t / (1 - t) ≤ log (1 - t) := by
    have h := one_sub_inv_le_log_of_pos h1mt_pos
    convert h using 1
    field_simp; ring
  -- Upper bound for 1/log(1+t)
  have hlog1p_inv_ub : 1 / log (1 + t) ≤ (1 + t) / t := by
    rw [one_div, le_div_iff₀ ht_pos, inv_mul_le_iff₀ hlog1p_pos]
    calc t = t / (1 + t) * (1 + t) := by field_simp
      _ ≤ log (1 + t) * (1 + t) := mul_le_mul_of_nonneg_right hlog1p_lb (le_of_lt h1pt_pos)
  -- Upper bound for 1/log(1-t)
  have hlog1m_inv_ub : 1 / log (1 - t) ≤ -(1 - t) / t := by
    have hneg_log : 0 < -log (1 - t) := neg_pos.mpr hlog1m_neg
    have hneg_log_ub : -log (1 - t) ≤ t / (1 - t) := by
      have h : -t / (1 - t) = -(t / (1 - t)) := by ring
      rw [h] at hlog1m_lb
      linarith
    have hinv_lb : (1 - t) / t ≤ 1 / (-log (1 - t)) := by
      rw [div_le_div_iff₀ ht_pos hneg_log]
      calc (1 - t) * -log (1 - t) = -log (1 - t) * (1 - t) := by ring
        _ ≤ t / (1 - t) * (1 - t) := mul_le_mul_of_nonneg_right hneg_log_ub (le_of_lt h1mt_pos)
        _ = t := by field_simp
        _ = 1 * t := by ring
    have hlog1m_ne : log (1 - t) ≠ 0 := ne_of_lt hlog1m_neg
    calc 1 / log (1 - t) = -(1 / -log (1 - t)) := by field_simp [hlog1m_ne]
      _ ≤ -((1 - t) / t) := neg_le_neg hinv_lb
      _ = -(1 - t) / t := by ring
  -- Combine
  unfold symmetricLogComb
  calc 1 / log (1 + t) + 1 / log (1 - t)
      ≤ (1 + t) / t + (-(1 - t) / t) := add_le_add hlog1p_inv_ub hlog1m_inv_ub
    _ = ((1 + t) - (1 - t)) / t := by ring
    _ = 2 * t / t := by ring
    _ = 2 := by field_simp

/-- |g(t)| ≤ 2 for 0 < t < 1/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/PNTLogBounds/Variant528821e9209433a2bd8ae180121e085f7976ba8966c7f1e42d8c938c0e66ef0a.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94ca2044ac940dc6b5ffdb8bfbd8e84b019840d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
