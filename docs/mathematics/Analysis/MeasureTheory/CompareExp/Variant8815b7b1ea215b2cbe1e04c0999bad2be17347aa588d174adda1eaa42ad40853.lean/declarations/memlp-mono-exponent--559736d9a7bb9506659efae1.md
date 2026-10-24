# MemLp.mono_exponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91fe880f-7f44-1f08-c58d-e8fdea7ac5dc",
  "kind": "theorem",
  "lexical_name": "MemLp.mono_exponent",
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
  "slug": "memlp-mono-exponent--559736d9a7bb9506659efae1",
  "source": {
    "blob": "0e5583391e8a71d8008933342f40cfa89d134704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 145,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:559736d9a7bb9506659efae1967ac16493689c94aab392f09fbf66f20ef519ed",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91fe880f-7f44-1f08-c58d-e8fdea7ac5dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MemLp.mono_exponent {p q : ℝ≥0∞} [IsFiniteMeasure μ] (hfq : MemLp f q μ)
    (hpq : p ≤ q) : MemLp f p μ := by
  have hfq_m := hfq.aestronglyMeasurable
  have hfq_lt_top := hfq.eLpNorm_lt_top
  by_cases hp0 : p = 0
  · rwa [hp0, memLp_zero_iff_aestronglyMeasurable]
  rw [← Ne] at hp0
  rw [memLp_iff]
  by_cases hp_top : p = ∞
  · have hq_top : q = ∞ := by rwa [hp_top, top_le_iff] at hpq
    rw [hp_top]
    rwa [hq_top] at hfq_lt_top
  have hp_pos : 0 < p.toReal := ENNReal.toReal_pos hp0 hp_top
  by_cases hq_top : q = ∞
  · rw [eLpNorm_eq_eLpNorm' hp0 hp_top hfq_m]
    rw [hq_top, eLpNorm_exponent_top hfq_m] at hfq_lt_top
    refine lt_of_le_of_lt (eLpNorm'_le_eLpNormEssSup_mul_rpow_measure_univ hp_pos) ?_
    refine ENNReal.mul_lt_top hfq_lt_top ?_
    exact ENNReal.rpow_lt_top_of_nonneg (by simp [hp_pos.le]) (by finiteness)
  have hq0 : q ≠ 0 := by
    by_contra hq_eq_zero
    obtain rfl : p = 0 := le_antisymm (by rwa [hq_eq_zero] at hpq) zero_le
    rw [ENNReal.toReal_zero] at hp_pos
    exact (lt_irrefl _) hp_pos
  have hpq_real : p.toReal ≤ q.toReal := ENNReal.toReal_mono hq_top hpq
  rw [eLpNorm_eq_eLpNorm' hp0 hp_top hfq_m]
  rw [eLpNorm_eq_eLpNorm' hq0 hq_top hfq_m] at hfq_lt_top
  exact eLpNorm'_lt_top_of_eLpNorm'_lt_top_of_exponent_le hfq_m hfq_lt_top hp_pos.le hpq_real

/-- If a function is supported on a finite-measure set and belongs to `ℒ^p`, then it belongs to
`ℒ^q` for any `q ≤ p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5583391e8a71d8008933342f40cfa89d134704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
