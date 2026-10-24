# snorm_le_snorm_mul_rpow_measure_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377fef306ed9bbb6202e67c6b75dcef876549353",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1079,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/dec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68616a8a-52a4-2418-53eb-cbe2ad833771",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2ba6e74-5a29-1677-f6f7-207bf6b62085",
  "kind": "theorem",
  "lexical_name": "snorm_le_snorm_mul_rpow_measure_univ",
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
  "slug": "snorm-le-snorm-mul-rpow-measure-univ--a8b2bee7a6174250165a1997",
  "source": {
    "blob": "377fef306ed9bbb6202e67c6b75dcef876549353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1105,
    "line": 1079,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b2bee7a6174250165a1997759813394d881eccde2567f4b112ac6770fcfbbd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2ba6e74-5a29-1677-f6f7-207bf6b62085`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1079–1105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem snorm_le_snorm_mul_rpow_measure_univ {p q : ℝ≥0∞} (hpq : p ≤ q) {f : α → E}
    (hf : AEStronglyMeasurable f μ) :
    snorm f p μ ≤ snorm f q μ * μ Set.univ ^ (1 / p.toReal - 1 / q.toReal) := by
  by_cases hp0 : p = 0
  · simp [hp0, zero_le]
  rw [← Ne.def] at hp0
  have hp0_lt : 0 < p := lt_of_le_of_ne (zero_le _) hp0.symm
  have hq0_lt : 0 < q := lt_of_lt_of_le hp0_lt hpq
  by_cases hq_top : q = ∞
  · simp only [hq_top, _root_.div_zero, one_div, ENNReal.top_toReal, sub_zero, snorm_exponent_top,
      GroupWithZero.inv_zero]
    by_cases hp_top : p = ∞
    · simp only [hp_top, ENNReal.rpow_zero, mul_one, ENNReal.top_toReal, sub_zero,
        GroupWithZero.inv_zero, snorm_exponent_top]
      exact le_rfl
    rw [snorm_eq_snorm' hp0 hp_top]
    have hp_pos : 0 < p.toReal := ENNReal.toReal_pos hp0_lt.ne' hp_top
    refine' (snorm'_le_snormEssSup_mul_rpow_measure_univ hp_pos).trans (le_of_eq _)
    congr
    exact one_div _
  have hp_lt_top : p < ∞ := hpq.trans_lt (lt_top_iff_ne_top.mpr hq_top)
  have hp_pos : 0 < p.toReal := ENNReal.toReal_pos hp0_lt.ne' hp_lt_top.ne
  rw [snorm_eq_snorm' hp0_lt.ne.symm hp_lt_top.ne, snorm_eq_snorm' hq0_lt.ne.symm hq_top]
  have hpq_real : p.toReal ≤ q.toReal := by rwa [ENNReal.toReal_le_toReal hp_lt_top.ne hq_top]
  exact snorm'_le_snorm'_mul_rpow_measure_univ hp_pos hpq_real hf
#align measure_theory.snorm_le_snorm_mul_rpow_measure_univ MeasureTheory.snorm_le_snorm_mul_rpow_measure_univ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LpSeminorm/Variantdec9f6afeaac4755e03eb99962de4da5c8abc709ffbed3438906904f0790071e.lean#L1079).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377fef306ed9bbb6202e67c6b75dcef876549353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
