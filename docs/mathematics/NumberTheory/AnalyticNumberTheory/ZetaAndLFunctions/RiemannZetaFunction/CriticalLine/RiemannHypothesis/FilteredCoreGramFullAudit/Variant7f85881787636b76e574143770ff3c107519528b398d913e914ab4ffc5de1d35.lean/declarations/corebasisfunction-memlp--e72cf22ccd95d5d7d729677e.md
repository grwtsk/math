# coreBasisFunction_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "08c5d97f883999b1c21357cf1e4ef2b63c900c14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f85881787636b76e574143770ff3c107519528b398d913e914ab4ffc5de1d35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfb1d7da-6d8b-9776-43eb-fefe88b6acf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe2ee295-bd91-959b-1be7-7bd0b00bc935",
  "kind": "theorem",
  "lexical_name": "coreBasisFunction_memLp",
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
  "slug": "corebasisfunction-memlp--e72cf22ccd95d5d7d729677e",
  "source": {
    "blob": "08c5d97f883999b1c21357cf1e4ef2b63c900c14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramFullAudit/Variant7f85881787636b76e574143770ff3c107519528b398d913e914ab4ffc5de1d35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e72cf22ccd95d5d7d729677e8c0760667e8663a29a1e517aa03e54487a089d6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramFullAudit/Variant7f85881787636b76e574143770ff3c107519528b398d913e914ab4ffc5de1d35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe2ee295-bd91-959b-1be7-7bd0b00bc935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreBasisFunction_memLp (Y : ℝ) (d : ℕ) : MemLp (coreBasisFunction Y d) 2 := by
  have hm : Measurable (coreBasisFunction Y d) := by
    unfold coreBasisFunction
    apply Measurable.indicator _ measurableSet_Icc
    apply Measurable.mul (by fun_prop)
    by_cases hd : d = 0
    · simp only [hd, if_true]
      exact measurable_const.ite (measurableSet_le measurable_const Real.measurable_exp)
        measurable_const
    · simp only [hd, if_false]
      exact (measurable_fract.comp (Real.measurable_exp.div_const (d : ℝ))).complex_ofReal
  have hc : MemLp ((Icc (0 : ℝ) (Real.log Y)).indicator (fun _ : ℝ => (1 : ℝ))) 2 :=
    memLp_indicator_const 2 measurableSet_Icc 1 (Or.inr (by simp))
  apply hc.of_le hm.aestronglyMeasurable
  filter_upwards [] with u
  by_cases hu : u ∈ Icc (0 : ℝ) (Real.log Y)
  · simp only [coreBasisFunction, indicator_of_mem hu, norm_one]
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
    have he : Real.exp (-u / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith [hu.1])
    apply mul_le_one₀ he (norm_nonneg _)
    by_cases hd : d = 0
    · simp only [hd, if_true]
      split_ifs <;> norm_num
    · simp only [hd, if_false, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (Int.fract_nonneg (Real.exp u / (d : ℝ)))]
      exact (Int.fract_lt_one (Real.exp u / (d : ℝ))).le
  · simp only [coreBasisFunction, indicator_of_notMem hu, norm_zero, le_refl]

/-- The actual constant and fractional-part basis vectors in full-line L2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramFullAudit/Variant7f85881787636b76e574143770ff3c107519528b398d913e914ab4ffc5de1d35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FilteredCoreGramFullAudit/Variant7f85881787636b76e574143770ff3c107519528b398d913e914ab4ffc5de1d35.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08c5d97f883999b1c21357cf1e4ef2b63c900c14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
