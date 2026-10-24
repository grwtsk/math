# a_le_low_huge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c37aa9b6-8949-a981-f4b6-af628ab74b69",
  "kind": "theorem",
  "lexical_name": "a_le_low_huge",
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
  "slug": "a-le-low-huge--d1acc4d98024462d58debca5",
  "source": {
    "blob": "1497488f027732033fe8af0a05024403d34b5d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2189,
    "line": 2138,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1acc4d98024462d58debca5390e4885d2f305741d3e55703dcfe17e922ab4ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c37aa9b6-8949-a981-f4b6-af628ab74b69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2138–2189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem a_le_low_huge {t : ℝ} (ht : t ∈ Set.Icc 2 (exp 3870)) :
    a t ≤ (100000000000000000000 : ℝ) := by
  have hte : t ≤ exp 3870 := ht.2
  have h2 : 2 ≤ t := ht.1
  unfold a
  have hlog_nonneg : 0 ≤ log t := log_nonneg (by linarith)
  by_cases h1 : t ∈ Set.Ico 2 599
  · simp only [h1, ↓reduceIte, ge_iff_le]
    have hlog_le : log t ≤ (599 : ℝ) := by
      have hlog_le_t : log t ≤ t := by
        have htpos : 0 < t := by linarith
        nlinarith [log_le_sub_one_of_pos htpos]
      linarith [hlog_le_t, le_of_lt h1.2]
    have hconst_nonneg : 0 ≤ (1 - log 2 / 3 : ℝ) := by
      linarith [log_two_lt_d9]
    have hconst_le : (1 - log 2 / 3 : ℝ) ≤ 1 := by
      linarith [log_nonneg (by norm_num : (1 : ℝ) ≤ 2)]
    have : (log t) ^ 5 ≤ (599 : ℝ) ^ 5 :=
      pow_le_pow_left₀ hlog_nonneg hlog_le 5
    have :
        (log t) ^ 5 * (1 - log 2 / 3) ≤ (599 : ℝ) ^ 5 * 1 := by
      gcongr
    grind
  · by_cases h2b : t ∈ Set.Ico 599 (exp 58)
    · simp only [h1, ↓reduceIte, h2b, ge_iff_le]
      have hlog_le : log t ≤ (58 : ℝ) :=
        (log_le_iff_le_exp (by linarith)).2 (le_of_lt h2b.2)
      have : 0 < sqrt t := sqrt_pos.mpr (by linarith [h2b.1])
      have : (1 : ℝ) ≤ sqrt t := one_le_sqrt.2 (by linarith [h2])
      have hdiv_le : (log t) ^ 2 / (8 * Real.pi * sqrt t) ≤ (log t) ^ 2 / 1 :=
        div_le_div_of_nonneg_left (by positivity) (by norm_num) (by nlinarith [pi_gt_three])
      calc
        (log t) ^ 5 * ((log t) ^ 2 / (8 * Real.pi * sqrt t))
            ≤ (log t) ^ 5 * (log t) ^ 2 := by
            simpa using mul_le_mul_of_nonneg_left hdiv_le (pow_nonneg hlog_nonneg 5)
        _ = (log t) ^ 7 := by ring
        _ ≤ (58 : ℝ) ^ 7 := pow_le_pow_left₀ hlog_nonneg hlog_le 7
        _ ≤ (100000000000000000000 : ℝ) := by norm_num
    · by_cases h3 : t ∈ Set.Ico (exp 58) (exp 1169)
      · simpa [h1, h2b, h3] using branch3_aux (t := t) h3
      · by_cases h4 : t ∈ Set.Ico (exp 1169) (exp 2000)
        · have ht4 : t ∈ Set.Icc (exp 1169) (exp 3870) := ⟨h4.1, hte⟩
          simpa [h1, h2b, h3, h4] using
            (high_branch_aux (t := t) (c := (462.0 : ℝ)) ht4 (by norm_num))
        · by_cases h5 : t ∈ Set.Ico (exp 2000) (exp 3000)
          · have ht5 : t ∈ Set.Icc (exp 1169) (exp 3870) :=
              ⟨le_trans (exp_le_exp.mpr (by norm_num : (1169 : ℝ) ≤ 2000)) h5.1, hte⟩
            simpa [h1, h2b, h3, h4, h5] using
              (high_branch_aux (t := t) (c := (411.5 : ℝ)) ht5 (by norm_num))
          · simpa [h1, h2b, h3, h4, h5] using
              (high_branch_aux (t := t) (c := (379.7 : ℝ)) (by grind) (by norm_num))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean#L2138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1497488f027732033fe8af0a05024403d34b5d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
