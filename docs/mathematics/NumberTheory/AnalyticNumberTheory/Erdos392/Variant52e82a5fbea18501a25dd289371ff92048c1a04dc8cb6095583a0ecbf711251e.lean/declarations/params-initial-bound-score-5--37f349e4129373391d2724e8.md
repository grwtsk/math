# Params.initial.bound_score_5

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fb5389a-7365-1b70-b27c-85f1908fbd1a",
  "kind": "theorem",
  "lexical_name": "Params.initial.bound_score_5",
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
  "slug": "params-initial-bound-score-5--37f349e4129373391d2724e8",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2932,
    "line": 2887,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37f349e4129373391d2724e86dbc72c1530d2c4194211cecf1aac44640bc020a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fb5389a-7365-1b70-b27c-85f1908fbd1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2887–2932.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.bound_score_5 (ε : ℝ) (hε : ε > 0) (M L : ℕ) :
    ∀ᶠ n in Filter.atTop, ∀ P : Params,
      P.M = M → P.L = L → P.n = n → ∑ _p ∈ Finset.filter (·.Prime) (Finset.Iic P.L),
          (P.M * Real.log P.n + P.M * P.L^2 * primeCounting P.n) * Real.log P.L ≤ ε * P.n := by
  have tendsto_log_div_atTop : Filter.Tendsto
      (fun n : ℕ ↦ Real.log n / (n : ℝ)) .atTop (nhds 0) := by
    suffices h : Filter.Tendsto
        (fun y : ℝ ↦ y * Real.log (1 / y))
        (.map (1 / ·) .atTop) (nhds 0) by
      exact (h.comp (Filter.map_mono tendsto_natCast_atTop_atTop)).congr fun _ ↦ by grind
    norm_num at *
    exact tendsto_nhdsWithin_of_tendsto_nhds (by simpa using Real.continuous_mul_log.neg.tendsto 0)
  have h_pi_div_n_zero : Filter.Tendsto (fun n : ℕ ↦ (Nat.primeCounting n : ℝ) / n)
      .atTop (nhds 0) := tendsto_primeCounting_div_id_zero
  have h_sum_bound : Filter.Tendsto (fun n : ℕ ↦
      ((Nat.primeCounting L : ℝ) * (M * Real.log n + M * L ^ 2 * (Nat.primeCounting n : ℝ)) *
        Real.log L) / n) .atTop (nhds 0) := by
    convert Filter.Tendsto.const_mul ((primeCounting L : ℝ) * M * Real.log L)
      ((tendsto_log_div_atTop.const_mul 1).add
        (h_pi_div_n_zero.const_mul (L ^ 2 : ℝ))) using 2 <;>
      ring
  filter_upwards [h_sum_bound.eventually (gt_mem_nhds hε),
    Filter.eventually_gt_atTop 0] with n hn hn' P hM hL hn''
  rw [div_lt_iff₀ (by positivity)] at hn
  simp_all only [gt_iff_lt, mul_comm, mul_left_comm, mul_add, mul_assoc, sum_const]
  convert hn.le using 1
  · norm_num [primeCounting]
    ring_nf
    rw [primeCounting', count_eq_card_filter_range]
    norm_num [add_comm, sum_range_succ]
    ring_nf
    rw [show count Nat.Prime (1 + L) = (Finset.filter Prime (Iic L)).card from ?_]
    · ring_nf
    · rw [count_eq_card_filter_range, add_comm, range_eq_Ico]; rfl

@[blueprint
  "initial-score"
  (statement := /-- The score of the initial factorization can be taken to be $o(n)$.-/)
  (proof := /-- Pick $M$ large depending on $\varepsilon$, then $L$ sufficiently large depending
  on $M, \varepsilon$, then $n$ sufficiently large depending on $M,L,\varepsilon$, so that the
  bounds in Sublemma \ref{bound-score-1}, Sublemma \ref{bound-score-2},
  Sublemma \ref{bound-score-3}, Sublemma \ref{bound-score-4}, and Sublemma \ref{bound-score-5}
  each contribute at most $(\varepsilon/5) n$.  Then use Proposition \ref{initial-score-bound}.
  -/)
  (discussion := 519)
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2887).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
