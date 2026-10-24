# hardy_diff_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b6e6b48-e754-bd0e-ff47-d6b05eb4b123",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01347a30-6918-a3cc-ff0f-caae01ad1763",
  "kind": "lemma",
  "lexical_name": "hardy_diff_bound",
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
  "slug": "hardy-diff-bound--e88de9b073c060522f66b749",
  "source": {
    "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e88de9b073c060522f66b7492455767bcb6d22940125af27bb7d0efdf41a4542",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01347a30-6918-a3cc-ff0f-caae01ad1763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hardy_diff_bound (u : ℕ → ℝ) (A : ℝ) (ε : ℝ) (hε : 0 < ε)
    (h_bound : ∀ n ≥ 1, |u n| ≤ A / n) :
    ∀ᶠ n in Filter.atTop, |hardy_sigma_delayed u n (hardy_k ε n) - hardy_s u n| ≤ ε * A := by
  -- Apply `hardy_sigma_delayed_bound` with `k = hardy_k ε n`.
  have h_bound : ∀ᶠ n in Filter.atTop, |hardy_sigma_delayed u n (hardy_k ε n) - hardy_s u n| ≤ (hardy_k ε n : ℝ) / (n + 1) * A := by
    field_simp;
    -- By the bound on the difference between the delayed arithmetic mean and the partial sum, we have:
    have h_diff_bound : ∀ n ≥ 1, |hardy_sigma_delayed u n (hardy_k ε n) - hardy_s u n| ≤ (hardy_k ε n : ℝ) / (n + 1) * A := by
      intros n hn
      apply hardy_sigma_delayed_bound u n (hardy_k ε n) A (by
      exact ne_of_gt ( lt_max_of_lt_left zero_lt_one )) (by
      exact fun m hm₁ hm₂ => h_bound m ( by linarith ));
    filter_upwards [ Filter.eventually_ge_atTop 1 ] with n hn using by have := h_diff_bound n hn; rw [ div_mul_eq_mul_div, le_div_iff₀ ] at this <;> linarith;;
  -- Since `hardy_k ε n` is eventually equal to `Nat.floor (ε * n)`, we can simplify the expression.
  have h_floor : ∀ᶠ n in Filter.atTop, (hardy_k ε n : ℝ) ≤ ε * n := by
    simp [hardy_k];
    exact ⟨ ⌈ε⁻¹⌉₊ + 1, fun n hn => ⟨ by nlinarith [ Nat.le_ceil ( ε⁻¹ ), mul_inv_cancel₀ ( ne_of_gt hε ), ( by norm_cast : ( ⌈ε⁻¹⌉₊ : ℝ ) + 1 ≤ n ) ], Nat.floor_le ( by positivity ) ⟩ ⟩;
  filter_upwards [ h_bound, h_floor ] with n hn hn' using le_trans hn ( by rw [ div_mul_eq_mul_div, div_le_iff₀ ] <;> nlinarith [ show ( 0 :ℝ ) ≤ ε * A by exact mul_nonneg hε.le ( show 0 ≤ A by have := ‹∀ n ≥ 1, |u n| ≤ A / ( n :ℝ ) › 1 le_rfl; norm_num at this; linarith [ abs_le.mp this ] ) ] )

/-
If a sequence can be approximated arbitrarily well (up to a constant factor) by sequences converging to S, then it converges to S.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f685935c5324bdcc51c6fdf7db424d8bd5db1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
