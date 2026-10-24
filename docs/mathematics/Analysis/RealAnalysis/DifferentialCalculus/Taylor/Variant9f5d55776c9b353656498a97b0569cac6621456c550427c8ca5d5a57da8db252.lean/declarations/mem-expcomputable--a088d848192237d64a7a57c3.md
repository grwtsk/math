# mem_expComputable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1022,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cf0b7da-9eb4-3c07-5fb1-27838f026c47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16479b60-b380-9488-eb84-6780b40e523a",
  "kind": "theorem",
  "lexical_name": "mem_expComputable",
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
  "slug": "mem-expcomputable--a088d848192237d64a7a57c3",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1082,
    "line": 1022,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a088d848192237d64a7a57c35d341460e68c1759b4a1febe4355e0284eb9012c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16479b60-b380-9488-eb84-6780b40e523a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1022–1082.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_expComputable {x : ℝ} {I : IntervalRat} (hx : x ∈ I) (n : ℕ) :
    Real.exp x ∈ expComputable I n := by
  simp only [expComputable]
  split_ifs with h
  · -- Interval doesn't cross 0: use endpoint evaluation and monotonicity
    -- exp is monotone increasing, so exp([lo, hi]) ⊆ hull(exp(lo), exp(hi))
    have hlo_mem := mem_expPointComputable I.lo n
    have hhi_mem := mem_expPointComputable I.hi n
    -- Since x ∈ [lo, hi] and exp is monotone, exp(x) ∈ [exp(lo), exp(hi)]
    -- The hull contains both exp(lo) and exp(hi), so it contains exp(x)
    rcases h with ⟨hhi_neg⟩ | ⟨hlo_pos⟩
    · -- Case: hi ≤ 0 (negative interval)
      -- exp(lo) ≤ exp(x) ≤ exp(hi) by monotonicity
      have hx_le_hi : x ≤ I.hi := hx.2
      have hlo_le_x : (I.lo : ℝ) ≤ x := hx.1
      have hexp_mono1 : Real.exp x ≤ Real.exp I.hi := Real.exp_le_exp.mpr hx_le_hi
      have hexp_mono2 : Real.exp I.lo ≤ Real.exp x := Real.exp_le_exp.mpr hlo_le_x
      -- exp(x) is between exp(lo) and exp(hi), both of which are in the hull
      simp only [hull, mem_def, Rat.cast_min, Rat.cast_max]
      constructor
      · -- lower bound: min(expLo.lo, expHi.lo) ≤ exp(x)
        calc (min (expPointComputable I.lo n).lo (expPointComputable I.hi n).lo : ℝ)
            ≤ (expPointComputable I.lo n).lo := by exact_mod_cast min_le_left _ _
          _ ≤ Real.exp I.lo := hlo_mem.1
          _ ≤ Real.exp x := hexp_mono2
      · -- upper bound: exp(x) ≤ max(expLo.hi, expHi.hi)
        calc Real.exp x ≤ Real.exp I.hi := hexp_mono1
          _ ≤ (expPointComputable I.hi n).hi := hhi_mem.2
          _ ≤ max ((expPointComputable I.lo n).hi : ℝ) ((expPointComputable I.hi n).hi : ℝ) := le_max_right _ _
    · -- Case: 0 ≤ lo (positive interval) - same argument
      have hx_le_hi : x ≤ I.hi := hx.2
      have hlo_le_x : (I.lo : ℝ) ≤ x := hx.1
      have hexp_mono1 : Real.exp x ≤ Real.exp I.hi := Real.exp_le_exp.mpr hx_le_hi
      have hexp_mono2 : Real.exp I.lo ≤ Real.exp x := Real.exp_le_exp.mpr hlo_le_x
      simp only [hull, mem_def, Rat.cast_min, Rat.cast_max]
      constructor
      · calc (min (expPointComputable I.lo n).lo (expPointComputable I.hi n).lo : ℝ)
            ≤ (expPointComputable I.lo n).lo := by exact_mod_cast min_le_left _ _
          _ ≤ Real.exp I.lo := hlo_mem.1
          _ ≤ Real.exp x := hexp_mono2
      · calc Real.exp x ≤ Real.exp I.hi := hexp_mono1
          _ ≤ (expPointComputable I.hi n).hi := hhi_mem.2
          _ ≤ max ((expPointComputable I.lo n).hi : ℝ) ((expPointComputable I.hi n).hi : ℝ) := le_max_right _ _
  · -- Interval crosses 0: use standard Taylor
    -- Strategy: exp x = poly(x) + remainder, with both in their respective intervals
    have hpoly_mem : ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i Real.exp 0 / i.factorial) * x ^ i
        ∈ evalTaylorSeries (expTaylorCoeffs n) I := by
      have hsum_eq : ∑ i ∈ Finset.range (n + 1), (iteratedDeriv i Real.exp 0 / i.factorial) * x ^ i =
          ∑ i ∈ Finset.range (n + 1), (1 / i.factorial : ℝ) * x ^ i := by
        apply Finset.sum_congr rfl; intro i _; rw [iteratedDeriv_exp_zero, one_div]
      rw [hsum_eq]; exact mem_evalTaylorSeries_exp hx n
    have hrem_mem := exp_taylor_remainder_in_interval hx n
    have heq : Real.exp x = (∑ i ∈ Finset.range (n + 1),
        (iteratedDeriv i Real.exp 0 / i.factorial) * x ^ i) +
        (Real.exp x - ∑ i ∈ Finset.range (n + 1),
          (iteratedDeriv i Real.exp 0 / i.factorial) * x ^ i) := by ring
    rw [heq]; exact mem_add hpoly_mem hrem_mem

/-- FTIA for sinComputable: Real.sin x ∈ sinComputable I n for any x ∈ I.

    The proof uses the Taylor remainder micro-lemma and the global bound sin ∈ [-1, 1]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L1022).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
