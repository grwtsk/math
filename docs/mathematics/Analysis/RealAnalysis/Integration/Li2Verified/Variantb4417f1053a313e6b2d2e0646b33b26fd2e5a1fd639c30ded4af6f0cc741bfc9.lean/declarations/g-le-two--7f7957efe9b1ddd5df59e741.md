# g_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f75406f6827c7451ea51375b6d9f2fe06fc13416",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:045a1814-8d41-3a90-95c6-76ae053f7a38",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0efc926-9dcd-4901-b193-0d2b5b50a369",
  "kind": "theorem",
  "lexical_name": "g_le_two",
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
  "slug": "g-le-two--7f7957efe9b1ddd5df59e741",
  "source": {
    "blob": "f75406f6827c7451ea51375b6d9f2fe06fc13416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f7957efe9b1ddd5df59e741d7722c37dd6d30e8c388ff5e6471ad661a8eda9e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0efc926-9dcd-4901-b193-0d2b5b50a369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem g_le_two (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) : g t ≤ 2 := by
  have h1pt_pos : 0 < 1 + t := by linarith
  have h1mt_pos : 0 < 1 - t := by linarith
  have h1pt_gt1 : 1 < 1 + t := by linarith
  have h1mt_lt1 : 1 - t < 1 := by linarith
  have hlog1p_pos : 0 < Real.log (1 + t) := Real.log_pos h1pt_gt1
  have hlog1m_neg : Real.log (1 - t) < 0 := Real.log_neg h1mt_pos h1mt_lt1
  have hlog1p_lb : t / (1 + t) ≤ Real.log (1 + t) := by
    have h := Real.one_sub_inv_le_log_of_pos h1pt_pos
    have h' : 1 - 1 / (1 + t) ≤ Real.log (1 + t) := by
      simpa [one_div] using h
    have h1 : t / (1 + t) = 1 - 1 / (1 + t) := by field_simp; ring
    calc t / (1 + t) = 1 - 1 / (1 + t) := h1
      _ ≤ Real.log (1 + t) := h'
  have hlog1m_ub : Real.log (1 - t) ≥ -t / (1 - t) := by
    have h := Real.one_sub_inv_le_log_of_pos h1mt_pos
    have h' : 1 - 1 / (1 - t) ≤ Real.log (1 - t) := by
      simpa [one_div] using h
    have h1 : -t / (1 - t) = 1 - 1 / (1 - t) := by field_simp; ring
    calc -t / (1 - t) = 1 - 1 / (1 - t) := h1
      _ ≤ Real.log (1 - t) := h'
  have hlog1p_inv_ub : 1 / Real.log (1 + t) ≤ (1 + t) / t := by
    rw [one_div, le_div_iff₀ ht_pos, inv_mul_le_iff₀ hlog1p_pos]
    have h1 : t = t / (1 + t) * (1 + t) := by field_simp
    calc t = t / (1 + t) * (1 + t) := h1
      _ ≤ Real.log (1 + t) * (1 + t) := by
        apply mul_le_mul_of_nonneg_right hlog1p_lb (le_of_lt h1pt_pos)
  have hlog1m_inv_ub : 1 / Real.log (1 - t) ≤ -(1 - t) / t := by
    have hneg_log : -Real.log (1 - t) > 0 := neg_pos.mpr hlog1m_neg
    have hneg_log_ub : -Real.log (1 - t) ≤ t / (1 - t) := by
      have h := hlog1m_ub
      have hdiv_neg : -t / (1 - t) = -(t / (1 - t)) := by ring
      rw [hdiv_neg] at h
      linarith
    have hinv_lb : (1 - t) / t ≤ 1 / (-Real.log (1 - t)) := by
      rw [div_le_div_iff₀ ht_pos hneg_log]
      calc (1 - t) * -Real.log (1 - t) = -Real.log (1 - t) * (1 - t) := by ring
        _ ≤ t / (1 - t) * (1 - t) := by
          apply mul_le_mul_of_nonneg_right hneg_log_ub (le_of_lt h1mt_pos)
        _ = t := by field_simp
        _ = 1 * t := by ring
    have hlog1m_ne : Real.log (1 - t) ≠ 0 := ne_of_lt hlog1m_neg
    calc 1 / Real.log (1 - t) = -(1 / -Real.log (1 - t)) := by field_simp [hlog1m_ne]
      _ ≤ -((1 - t) / t) := neg_le_neg hinv_lb
      _ = -(1 - t) / t := by ring
  calc
    g t = 1 / Real.log (1 + t) + 1 / Real.log (1 - t) := by rfl
    _ ≤ (1 + t) / t + (-(1 - t) / t) := add_le_add hlog1p_inv_ub hlog1m_inv_ub
    _ = ((1 + t) - (1 - t)) / t := by ring
    _ = 2 * t / t := by ring
    _ = 2 := by field_simp

/-! ### Upper Bound: li(2) ≤ 2 -/

/-- The integrand g is bounded on (0, 1/2] by 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f75406f6827c7451ea51375b6d9f2fe06fc13416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
