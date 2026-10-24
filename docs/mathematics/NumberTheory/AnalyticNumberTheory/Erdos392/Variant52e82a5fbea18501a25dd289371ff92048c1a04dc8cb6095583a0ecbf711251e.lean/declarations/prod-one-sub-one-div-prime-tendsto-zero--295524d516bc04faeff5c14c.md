# prod_one_sub_one_div_prime_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96fde658-f4c3-b787-f314-0a6c386715b3",
  "kind": "lemma",
  "lexical_name": "prod_one_sub_one_div_prime_tendsto_zero",
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
  "slug": "prod-one-sub-one-div-prime-tendsto-zero--295524d516bc04faeff5c14c",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2618,
    "line": 2590,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:295524d516bc04faeff5c14c362c0bb15a351c79074fd83c01433c9028500f5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96fde658-f4c3-b787-f314-0a6c386715b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2590–2618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_one_sub_one_div_prime_tendsto_zero :
    Filter.Tendsto
      (fun n ↦ ∏ p ∈ filter Prime (range n), (1 - 1 / (p : ℝ)))
      .atTop (nhds 0) := by
  have h_exp_neg_sum : Filter.Tendsto
      (fun n : ℕ ↦ Real.exp
        (-∑ p ∈ filter Prime (range n), (1 / p : ℝ)))
      .atTop (nhds 0) := by
    have h_not_summable : ¬Summable (fun p : ℕ ↦ if p.Prime then (1 / p : ℝ) else 0) := by
      have h_primes : ¬Summable (fun p : Nat.Primes ↦ (1 / p : ℝ)) := by
        convert Primes.not_summable_one_div
      contrapose! h_primes
      convert h_primes.comp_injective (fun a b h ↦ Subtype.ext h) using 1
      ext ⟨p, hp⟩
      simp [hp]
    have h_diverge : Filter.Tendsto
        (fun n : ℕ ↦ ∑ p ∈ range n, if p.Prime then (1 / p : ℝ) else 0) .atTop .atTop :=
      (not_summable_iff_tendsto_nat_atTop_of_nonneg (fun _ ↦ by positivity)).mp h_not_summable
    simpa [sum_filter] using h_diverge
  refine squeeze_zero (fun n ↦ prod_nonneg fun _ hx ↦
    sub_nonneg.mpr <| div_le_self zero_le_one <| mod_cast (mem_filter.mp hx).2.pos) ?_ h_exp_neg_sum
  intro n
  rw [exp_neg, exp_sum, ← prod_inv_distrib]
  refine prod_le_prod (fun _ hx ↦ sub_nonneg.mpr <| div_le_self zero_le_one <|
    mod_cast (mem_filter.mp hx).2.pos) fun _ _ ↦ ?_
  rw [← Real.exp_neg]
  exact (Real.add_one_le_exp _).trans' (by norm_num)

/-- For any `ε > 0`, there exists `a ≠ 0` with `φ(a)/a < ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
