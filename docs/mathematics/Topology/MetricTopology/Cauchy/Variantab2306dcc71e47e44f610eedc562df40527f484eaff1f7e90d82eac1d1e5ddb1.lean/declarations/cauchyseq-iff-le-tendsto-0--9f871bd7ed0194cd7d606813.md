# cauchySeq_iff_le_tendsto_0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "630fd8f92329367f44d81636c4447e94b6954e51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad99730b-c613-d78c-cdc0-94fb77535487",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69761c9b-a5c9-721b-2756-e131fe75f96a",
  "kind": "theorem",
  "lexical_name": "cauchySeq_iff_le_tendsto_0",
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
  "slug": "cauchyseq-iff-le-tendsto-0--9f871bd7ed0194cd7d606813",
  "source": {
    "blob": "630fd8f92329367f44d81636c4447e94b6954e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 119,
    "path": "GRWTSK/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f871bd7ed0194cd7d6068133479c4bfcba9bcb7243c27b0866f2d16dfe9c24d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69761c9b-a5c9-721b-2756-e131fe75f96a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_iff_le_tendsto_0 {s : ℕ → α} :
    CauchySeq s ↔
      ∃ b : ℕ → ℝ,
        (∀ n, 0 ≤ b n) ∧
          (∀ n m N : ℕ, N ≤ n → N ≤ m → dist (s n) (s m) ≤ b N) ∧ Tendsto b atTop (𝓝 0) :=
  ⟨fun hs => by
    /- `s` is a Cauchy sequence. The sequence `b` will be constructed by taking
      the supremum of the distances between `s n` and `s m` for `n m ≥ N`.
      First, we prove that all these distances are bounded, as otherwise the Sup
      would not make sense. -/
    let S N := (fun p : ℕ × ℕ => dist (s p.1) (s p.2)) '' { p | p.1 ≥ N ∧ p.2 ≥ N }
    have hS : ∀ N, ∃ x, ∀ y ∈ S N, y ≤ x := by
      rcases cauchySeq_bdd hs with ⟨R, -, hR⟩
      refine fun N => ⟨R, ?_⟩
      rintro _ ⟨⟨m, n⟩, _, rfl⟩
      exact le_of_lt (hR m n)
    -- Prove that it bounds the distances of points in the Cauchy sequence
    have ub : ∀ m n N, N ≤ m → N ≤ n → dist (s m) (s n) ≤ sSup (S N) := fun m n N hm hn =>
      le_csSup (hS N) ⟨⟨_, _⟩, ⟨hm, hn⟩, rfl⟩
    have S0m : ∀ n, (0 : ℝ) ∈ S n := fun n => ⟨⟨n, n⟩, ⟨le_rfl, le_rfl⟩, dist_self _⟩
    have S0 := fun n => le_csSup (hS n) (S0m n)
    -- Prove that it tends to `0`, by using the Cauchy property of `s`
    refine ⟨fun N => sSup (S N), S0, ub, Metric.tendsto_atTop.2 fun ε ε0 => ?_⟩
    refine (Metric.cauchySeq_iff.1 hs (ε / 2) (half_pos ε0)).imp fun N hN n hn => ?_
    rw [Real.dist_0_eq_abs, abs_of_nonneg (S0 n)]
    refine lt_of_le_of_lt (csSup_le ⟨_, S0m _⟩ ?_) (half_lt_self ε0)
    rintro _ ⟨⟨m', n'⟩, ⟨hm', hn'⟩, rfl⟩
    exact le_of_lt (hN _ (le_trans hn hm') _ (le_trans hn hn')),
   fun ⟨b, _, b_bound, b_lim⟩ => cauchySeq_of_le_tendsto_0 b b_bound b_lim⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Cauchy/Variantab2306dcc71e47e44f610eedc562df40527f484eaff1f7e90d82eac1d1e5ddb1.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `630fd8f92329367f44d81636c4447e94b6954e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
