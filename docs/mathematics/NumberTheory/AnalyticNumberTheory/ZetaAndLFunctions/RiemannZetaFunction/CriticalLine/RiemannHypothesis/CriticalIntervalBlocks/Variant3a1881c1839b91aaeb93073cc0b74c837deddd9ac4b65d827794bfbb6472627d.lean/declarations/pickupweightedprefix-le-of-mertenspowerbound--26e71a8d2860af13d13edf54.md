# pickupWeightedPrefix_le_of_mertensPowerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:116eb144-1bf5-6fbf-9a41-0a1a5e1ca1d4",
  "kind": "theorem",
  "lexical_name": "pickupWeightedPrefix_le_of_mertensPowerBound",
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
  "slug": "pickupweightedprefix-le-of-mertenspowerbound--26e71a8d2860af13d13edf54",
  "source": {
    "blob": "80cbd19c8972c36004ddb69fc831db1ba086aeb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 154,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e71a8d2860af13d13edf54f78c5cc7c8041804b5459d6878c51dfb3bad38a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:116eb144-1bf5-6fbf-9a41-0a1a5e1ca1d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupWeightedPrefix_le_of_mertensPowerBound {C β : ℝ}
    (hC : 0 ≤ C) (hβ : 1 / 2 < β)
    (hM : ∀ k : ℕ, 1 ≤ k →
      |pickupMertensPrefix k| ≤ C * (k : ℝ) ^ β) :
    ∀ n : ℕ, 1 ≤ n →
      |pickupWeightedPrefix n| ≤
        (C + C / (2 * (β - 1 / 2))) * (n : ℝ) ^ (β - 1 / 2) := by
  intro n hn
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hr : 0 < β - 1 / 2 := sub_pos.mpr hβ
  have hend : |(Real.sqrt n)⁻¹ * pickupMertensPrefix n| ≤
      C * (n : ℝ) ^ (β - 1 / 2) := by
    rw [← pickup_exp_negative_log_half hn, abs_mul,
      abs_of_pos (Real.exp_pos _)]
    calc
      Real.exp (-Real.log (n : ℝ) / 2) * |pickupMertensPrefix n| ≤
          Real.exp (-Real.log (n : ℝ) / 2) *
            (C * (n : ℝ) ^ β) :=
        mul_le_mul_of_nonneg_left (hM n hn) (Real.exp_pos _).le
      _ = C * (n : ℝ) ^ (β - 1 / 2) := by
        rw [Real.rpow_def_of_pos hnpos, Real.rpow_def_of_pos hnpos]
        calc
          Real.exp (-Real.log (n : ℝ) / 2) *
              (C * Real.exp (Real.log (n : ℝ) * β)) =
              C * (Real.exp (-Real.log (n : ℝ) / 2) *
                Real.exp (Real.log (n : ℝ) * β)) := by ring
          _ = C * Real.exp
              (Real.log (n : ℝ) * (β - 1 / 2)) := by
            rw [← Real.exp_add]
            congr 1
            ring_nf
  have hint := abelIntegral_abs_le_of_mertensPowerBound hC hβ hM hn
  have hint' :
      |∫ u in (0 : ℝ)..Real.log (n : ℝ),
          Real.exp (-u / 2) * mertensPrefix (Real.exp u)| ≤
        (C / (β - 1 / 2)) * (n : ℝ) ^ (β - 1 / 2) := by
    calc
      |∫ u in (0 : ℝ)..Real.log (n : ℝ),
          Real.exp (-u / 2) * mertensPrefix (Real.exp u)| ≤
          C * ((n : ℝ) ^ (β - 1 / 2) - 1) / (β - 1 / 2) := hint
      _ ≤ C * (n : ℝ) ^ (β - 1 / 2) / (β - 1 / 2) := by
        exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left (sub_le_self _ (by norm_num)) hC) hr.le
      _ = (C / (β - 1 / 2)) * (n : ℝ) ^ (β - 1 / 2) := by ring
  rw [pickupWeightedPrefix_eq_mertens_add_integral hn]
  calc
    |(Real.sqrt n)⁻¹ * pickupMertensPrefix n +
        (∫ u in (0 : ℝ)..Real.log (n : ℝ),
          Real.exp (-u / 2) * mertensPrefix (Real.exp u)) / 2| ≤
        |(Real.sqrt n)⁻¹ * pickupMertensPrefix n| +
          |(∫ u in (0 : ℝ)..Real.log (n : ℝ),
            Real.exp (-u / 2) * mertensPrefix (Real.exp u)) / 2| := abs_add_le _ _
    _ ≤ C * (n : ℝ) ^ (β - 1 / 2) +
        ((C / (β - 1 / 2)) * (n : ℝ) ^ (β - 1 / 2)) / 2 := by
      apply add_le_add hend
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact div_le_div_of_nonneg_right hint' (by norm_num)
    _ = (C + C / (2 * (β - 1 / 2))) *
        (n : ℝ) ^ (β - 1 / 2) := by
      field_simp [hr.ne']

/-- On the open logarithmic cell from `n` to `n+1`, the pickup is the exact
coupled weighted-prefix/Mertens-prefix expression with cutoff `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cbd19c8972c36004ddb69fc831db1ba086aeb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
