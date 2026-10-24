# hardy_sigma_delayed_tendsto

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
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1db06cb2-bea8-60db-ae94-89e2c9cbbf1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3ec24b5-7afa-58c5-f075-fbe1bf165511",
  "kind": "theorem",
  "lexical_name": "hardy_sigma_delayed_tendsto",
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
  "slug": "hardy-sigma-delayed-tendsto--34721c3cbe2157be65016b90",
  "source": {
    "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 83,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34721c3cbe2157be65016b9022e1d57ad498c099d560c8490d610407b79788af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3ec24b5-7afa-58c5-f075-fbe1bf165511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardy_sigma_delayed_tendsto (u : ℕ → ℝ) (S : ℝ) (k : ℕ → ℕ)
    (h_sigma : Filter.Tendsto (hardy_sigma u) Filter.atTop (nhds S))
    (h_bounded : Filter.IsBoundedUnder (· ≤ ·) Filter.atTop (fun (n : ℕ) => (n : ℝ) / k n))
    (hk_pos : ∀ n, 0 < k n) :
    Filter.Tendsto (fun n => hardy_sigma_delayed u n (k n)) Filter.atTop (nhds S) := by
  -- Since $\lim_{n\to\infty} \frac{n}{k_n}$ exists and is finite, we have $\lim_{n\to\infty} \frac{1}{k_n} = 0$.
  have h_lim_k_n_inv : Filter.Tendsto (fun n => (1 : ℝ) / (k n)) Filter.atTop (nhds 0) := by
    -- Since $k_n$ is bounded above, there exists some $M > 0$ such that $k_n \geq \frac{n}{M}$ for all $n$.
    obtain ⟨M, hM⟩ : ∃ M > 0, ∀ n, (k n : ℝ) ≥ n / M := by
      obtain ⟨ M, hM ⟩ := h_bounded;
      -- Since $k_n$ is bounded above, there exists some $N$ such that for all $n \geq N$, $n / k_n \leq M$.
      obtain ⟨N, hN⟩ : ∃ N : ℕ, ∀ n ≥ N, (n : ℝ) / (k n : ℝ) ≤ M := by
        aesop;
      -- Since $k_n$ is bounded above, there exists some $M > 0$ such that for all $n \geq N$, $k_n \geq \frac{n}{M}$.
      obtain ⟨M', hM'⟩ : ∃ M' > 0, ∀ n ≥ N, (k n : ℝ) ≥ n / M' := by
        exact ⟨ Max.max M 1, by positivity, fun n hn => by rw [ ge_iff_le ] ; rw [ div_le_iff₀ ] <;> nlinarith [ hN n hn, le_max_left M 1, le_max_right M 1, show ( k n : ℝ ) ≥ 1 from mod_cast hk_pos n, div_mul_cancel₀ ( n : ℝ ) ( show ( k n : ℝ ) ≠ 0 from mod_cast ne_of_gt ( hk_pos n ) ) ] ⟩;
      -- Since $k_n$ is bounded above, there exists some $M > 0$ such that for all $n < N$, $k_n \geq \frac{n}{M}$.
      obtain ⟨M'', hM''⟩ : ∃ M'' > 0, ∀ n < N, (k n : ℝ) ≥ n / M'' := by
        field_simp;
        exact ⟨ N + 1, by positivity, fun n hn => by rw [ div_le_iff₀ ] <;> nlinarith [ show ( n : ℝ ) + 1 ≤ N by norm_cast, show ( k n : ℝ ) ≥ 1 by exact_mod_cast hk_pos n ] ⟩;
      exact ⟨ Max.max M' M'', lt_max_of_lt_left hM'.1, fun n => if hn : n < N then le_trans ( div_le_div_of_nonneg_left ( Nat.cast_nonneg _ ) ( by linarith [ hM''.1 ] ) ( le_max_right _ _ ) ) ( hM''.2 n hn ) else le_trans ( div_le_div_of_nonneg_left ( Nat.cast_nonneg _ ) ( by linarith [ hM'.1 ] ) ( le_max_left _ _ ) ) ( hM'.2 n ( le_of_not_gt hn ) ) ⟩;
    refine' tendsto_const_nhds.div_atTop _;
    exact Filter.tendsto_atTop_mono hM.2 <| tendsto_natCast_atTop_atTop.atTop_div_const hM.1;
  -- Using the fact that $n / k_n$ is bounded, we can apply the squeeze theorem.
  have h_squeeze : Filter.Tendsto (fun n => ((n + k n + 1 : ℝ) / (k n)) * (hardy_sigma u (n + k n)) - ((n + 1 : ℝ) / (k n)) * (hardy_sigma u n)) Filter.atTop (nhds S) := by
    -- We can split the limit into two parts: the term involving $hardy_sigma u$ and the term involving $1$.
    have h_split : Filter.Tendsto (fun n => (hardy_sigma u (n + k n) - hardy_sigma u n) * (n / (k n) : ℝ)) Filter.atTop (nhds 0) ∧ Filter.Tendsto (fun n => hardy_sigma u (n + k n) + (hardy_sigma u (n + k n) - hardy_sigma u n) * (1 / (k n) : ℝ)) Filter.atTop (nhds S) := by
      constructor;
      · -- Since $hardy_sigma u (n + k n) - hardy_sigma u n$ tends to $0$ as $n$ tends to infinity, and $n / k n$ is bounded, their product tends to $0$.
        have h_prod_zero : Filter.Tendsto (fun n => hardy_sigma u (n + k n) - hardy_sigma u n) Filter.atTop (nhds 0) := by
          simpa using Filter.Tendsto.sub ( h_sigma.comp ( Filter.tendsto_atTop_mono ( fun n => Nat.le_add_right _ _ ) Filter.tendsto_id ) ) h_sigma;
        rw [ Metric.tendsto_nhds ] at *;
        field_simp;
        intro ε hε; rcases h_bounded with ⟨ M, hM ⟩ ; rcases h_prod_zero ( ε / ( Max.max M 1 + 1 ) ) ( by positivity ) with h; filter_upwards [ h, hM ] with n hn hn'; simp_all +decide [ div_lt_iff₀ ] ;
        rw [ lt_div_iff₀ ( by positivity ) ] at hn;
        rw [ div_le_iff₀ ( Nat.cast_pos.mpr ( hk_pos n ) ) ] at hn';
        nlinarith [ abs_nonneg ( hardy_sigma u ( n + k n ) - hardy_sigma u n ), show ( k n : ℝ ) ≥ 1 by exact_mod_cast hk_pos n, le_max_left M 1, le_max_right M 1, mul_le_mul_of_nonneg_left ( le_max_left M 1 ) ( show ( 0 : ℝ ) ≤ k n by positivity ), mul_le_mul_of_nonneg_left ( le_max_right M 1 ) ( show ( 0 : ℝ ) ≤ k n by positivity ) ];
      · simpa using Filter.Tendsto.add ( h_sigma.comp ( Filter.tendsto_atTop_mono ( fun n => Nat.le_add_right _ _ ) Filter.tendsto_id ) ) ( Filter.Tendsto.mul ( Filter.Tendsto.sub ( h_sigma.comp ( Filter.tendsto_atTop_mono ( fun n => Nat.le_add_right _ _ ) Filter.tendsto_id ) ) h_sigma ) h_lim_k_n_inv );
    convert h_split.2.add h_split.1 using 2 <;> ring_nf;
    simpa [ ne_of_gt ( hk_pos _ ) ] using by ring;
  exact h_squeeze.congr fun n => by rw [ hardy_sigma_delayed_eq _ _ _ ( ne_of_gt ( hk_pos n ) ) ] ;

/-
Identity for the difference between delayed arithmetic mean and partial sum.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f685935c5324bdcc51c6fdf7db424d8bd5db1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
