# sum_log_div_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c61ae2baadd315460b22c4490f0640c924460c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1743,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61322e8b-4c74-1513-4bc1-eb8a6e1fa7a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38258262-9611-e203-26ae-5d15ba7300a0",
  "kind": "lemma",
  "lexical_name": "sum_log_div_isBigO",
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
  "slug": "sum-log-div-isbigo--d52272412d2d50612e0936e3",
  "source": {
    "blob": "c61ae2baadd315460b22c4490f0640c924460c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1764,
    "line": 1743,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d52272412d2d50612e0936e346fcc6c52e2aa9a7b255faa272d8f17a186b92c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38258262-9611-e203-26ae-5d15ba7300a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1743–1764.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_log_div_isBigO : (fun x : ℝ => ∑ k ∈ Iic ⌊x⌋₊, log (x / k)) =O[atTop] id := by
  have h_sum_log : ∀ x : ℝ, 1 ≤ x → |∑ k ∈ Finset.Iic ⌊x⌋₊, Real.log (x / k)| ≤ 2 * x := by
    have h_sum_log_le_x : ∀ x : ℝ, 1 ≤ x → ∑ k ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / k) ≤ x := by
      intro x hx
      have h_sum_log : ∑ k ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / (k : ℝ)) ≤ Real.log (x ^ ⌊x⌋₊ / Nat.factorial ⌊x⌋₊) := by
        rw [← Real.log_prod]
        · norm_num [Finset.prod_div_distrib]
          erw [← Nat.cast_prod, Finset.prod_Ico_id_eq_factorial]
        · exact fun n hn => div_ne_zero (by positivity) (Nat.cast_ne_zero.mpr <| by linarith [Finset.mem_Icc.mp hn])
      have h_exp_bound : x ^ ⌊x⌋₊ / Nat.factorial ⌊x⌋₊ ≤ Real.exp x := by
        have h_term : x ^ ⌊x⌋₊ / (⌊x⌋₊! : ℝ) ≤ ∑' k : ℕ, x ^ k / (k ! : ℝ) := by
          exact Summable.le_tsum (show Summable _ from Real.summable_pow_div_factorial x) ⌊x⌋₊ (fun _ _ => by positivity)
        simpa [Real.exp_eq_exp_ℝ, NormedSpace.exp_eq_tsum_div] using h_term
      exact h_sum_log.trans (Real.log_le_iff_le_exp (by positivity) |>.2 h_exp_bound)
    intros x hx
    have h_sum_eq : ∑ k ∈ Finset.Iic ⌊x⌋₊, Real.log (x / k) = ∑ k ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / k) := by
      erw [Finset.sum_Ico_eq_sub _ _] <;> norm_num
      erw [Finset.sum_Ico_eq_sub _ _] <;> norm_num
    rw [abs_of_nonneg] <;> linarith [h_sum_log_le_x x hx, show 0 ≤ ∑ k ∈ Finset.Icc 1 ⌊x⌋₊, Real.log (x / k) from Finset.sum_nonneg fun _ _ => Real.log_nonneg <| by rw [le_div_iff₀ <| Nat.cast_pos.mpr <| by linarith [Finset.mem_Icc.mp ‹_›]] ; linarith [Nat.floor_le <| show 0 ≤ x by linarith, show (↑‹ℕ› : ℝ) ≤ ⌊x⌋₊ by exact_mod_cast Finset.mem_Icc.mp ‹_› |>.2]]
  rw [Asymptotics.isBigO_iff]
  exact ⟨2, Filter.eventually_atTop.mpr ⟨1, fun x hx => le_trans (h_sum_log x hx) (by norm_num [abs_of_nonneg (by linarith : 0 ≤ x)])⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantedd5c140e515c9b0cb56b13e22f59b48c5143e926e3dd884f4dcbb9b14090092.lean#L1743).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61ae2baadd315460b22c4490f0640c924460c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
