# norm_LFunction_sub_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4c12807-a7dc-fa5b-b37e-4ff36959f77c",
  "kind": "theorem",
  "lexical_name": "norm_LFunction_sub_one_le",
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
  "slug": "norm-lfunction-sub-one-le--fa57ddc56a5c05dbc7bfb3a4",
  "source": {
    "blob": "0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 278,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa57ddc56a5c05dbc7bfb3a40bf77536884203d10fcebdbfeb38179ae3c736d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4c12807-a7dc-fa5b-b37e-4ff36959f77c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_LFunction_sub_one_le {s : ℂ} (hs : 2 ≤ s.re) :
    ‖χ.LFunction s - 1‖ ≤ Real.pi ^ 2 / 6 - 1 := by
  have hs1 : 1 < s.re := by linarith
  rw [LFunction_eq_LSeries χ hs1]
  set f : ℕ → ℂ := fun n => χ (n : ZMod q) with hf
  have hsum : Summable (LSeries.term f s) := LSeriesSummable_of_one_lt_re χ hs1
  have hsplit := hsum.sum_add_tsum_nat_add 2
  have h01 : ∑ i ∈ Finset.range 2, LSeries.term f s i = 1 := by
    simp [Finset.sum_range_succ, LSeries.term, hf]
  have hL : LSeries f s - 1 = ∑' i, LSeries.term f s (i + 2) := by
    rw [LSeries, ← hsplit, h01]; ring
  rw [hL]
  have hle : ∀ i : ℕ, ‖LSeries.term f s (i + 2)‖ ≤ 1 / ((i : ℝ) + 2) ^ 2 := by
    intro i
    have hpos : 0 < i + 2 := by omega
    rw [LSeries.term_of_ne_zero (by omega : i + 2 ≠ 0), norm_div,
      Complex.norm_natCast_cpow_of_pos hpos]
    have h1 : ‖f (i + 2)‖ ≤ 1 := χ.norm_le_one _
    have hbase : (1 : ℝ) ≤ ((i + 2 : ℕ) : ℝ) := by exact_mod_cast hpos
    have hpow : ((i + 2 : ℕ) : ℝ) ^ (2 : ℝ) ≤ ((i + 2 : ℕ) : ℝ) ^ s.re :=
      Real.rpow_le_rpow_of_exponent_le hbase hs
    rw [Real.rpow_two] at hpow
    have h2pos : (0 : ℝ) < ((i + 2 : ℕ) : ℝ) ^ 2 := by positivity
    have hσpos : (0 : ℝ) < ((i + 2 : ℕ) : ℝ) ^ s.re := by positivity
    calc ‖f (i + 2)‖ / ((i + 2 : ℕ) : ℝ) ^ s.re ≤ 1 / ((i + 2 : ℕ) : ℝ) ^ s.re :=
          div_le_div_of_nonneg_right h1 hσpos.le
      _ ≤ 1 / ((i + 2 : ℕ) : ℝ) ^ 2 := one_div_le_one_div_of_le h2pos hpow
      _ = 1 / ((i : ℝ) + 2) ^ 2 := by push_cast; ring
  have htwo : HasSum (fun n : ℕ => 1 / ((n : ℝ) + 2) ^ 2) (Real.pi ^ 2 / 6 - 1) := by
    have h := (hasSum_nat_add_iff' 2).mpr hasSum_zeta_two
    norm_num [Finset.sum_range_succ] at h
    exact h.congr_fun fun n => by ring
  have hsum' : Summable (fun i => LSeries.term f s (i + 2)) := (summable_nat_add_iff 2).mpr hsum
  calc ‖∑' i, LSeries.term f s (i + 2)‖ ≤ ∑' i, ‖LSeries.term f s (i + 2)‖ :=
        norm_tsum_le_tsum_norm hsum'.norm
    _ ≤ ∑' n : ℕ, 1 / ((n : ℝ) + 2) ^ 2 := hsum'.norm.tsum_le_tsum hle htwo.summable
    _ = Real.pi ^ 2 / 6 - 1 := htwo.tsum_eq

/-- Lower bound at the Jensen disc centre: 1/3 ≤ ‖L(s,χ)‖ for Re s ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LGrowth/Variantcc87ad539cc7dc38979ff7d1fde8c8d270f97b95ff7e49a238247f48e1130c14.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cd15a5b50841aff7a251ae4dc89a80f8a9d52fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
