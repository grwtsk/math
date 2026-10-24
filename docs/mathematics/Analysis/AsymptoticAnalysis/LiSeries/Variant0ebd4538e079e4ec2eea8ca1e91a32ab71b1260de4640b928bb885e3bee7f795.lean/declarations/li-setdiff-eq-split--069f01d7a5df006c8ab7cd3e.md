# li_setDiff_eq_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cebb77df-86e9-e2bd-8acf-41feca235c2c",
  "kind": "lemma",
  "lexical_name": "li_setDiff_eq_split",
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
  "slug": "li-setdiff-eq-split--069f01d7a5df006c8ab7cd3e",
  "source": {
    "blob": "89ef6f525685569b90716827903f2340987df587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 500,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:069f01d7a5df006c8ab7cd3ed1c36ab8f437fd4b8b8f93adf137e2b4cc972d0c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cebb77df-86e9-e2bd-8acf-41feca235c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma li_setDiff_eq_split {x ε : ℝ} (hx : 1 < x) (hε : 0 < ε)
    (hε1 : ε < 1) (hεx : 1 + ε < x) :
    ∫ t in (Ioc 0 x \ Ioo (1 - ε) (1 + ε)), (1 : ℝ) / log t =
      (∫ t in (0 : ℝ)..(1 - ε), 1 / log t) + ∫ t in (1 + ε)..x, 1 / log t := by
  have h1mε : 0 < 1 - ε := by linarith
  -- Decompose the set: Ioc 0 x \ Ioo (1-ε) (1+ε) = Ioc 0 (1-ε) ∪ Icc (1+ε) x
  have hdecomp : Ioc 0 x \ Ioo (1 - ε) (1 + ε) = Ioc 0 (1 - ε) ∪ Icc (1 + ε) x := by
    ext t; simp only [Set.mem_diff, Set.mem_Ioc, Set.mem_Ioo, Set.mem_union, Set.mem_Icc]
    constructor
    · intro ⟨⟨h0, hx'⟩, hnotin⟩
      push Not at hnotin
      by_cases ht : t ≤ 1 - ε
      · left; exact ⟨h0, ht⟩
      · right; exact ⟨hnotin (by linarith), hx'⟩
    · intro h
      rcases h with ⟨h0, ht⟩ | ⟨ht, hx'⟩
      · exact ⟨⟨h0, by linarith⟩, fun ⟨h1, _⟩ => by linarith⟩
      · exact ⟨⟨by linarith, hx'⟩, fun ⟨_, h2⟩ => by linarith⟩
  -- Rewrite using the decomposition
  rw [hdecomp]
  -- Disjointness
  have hdisj : Disjoint (Ioc 0 (1 - ε)) (Icc (1 + ε) x) := by
    apply Set.disjoint_left.mpr
    intro t ht1 ht2; exact absurd (lt_of_le_of_lt ht1.2 (by linarith : 1 - ε < 1 + ε)) (not_lt.mpr ht2.1)
  -- Integrability
  have hint1 : IntegrableOn (fun t => (1 : ℝ) / log t) (Ioc 0 (1 - ε)) := by
    have hlog1mε : log (1 - ε) < 0 := Real.log_neg h1mε (by linarith)
    apply Measure.integrableOn_of_bounded (M := 1 / |log (1 - ε)|) (by exact measure_Ioc_lt_top.ne)
    · exact ((measurable_const.div measurable_log).aestronglyMeasurable)
    · rw [ae_restrict_iff' measurableSet_Ioc]
      apply Filter.Eventually.of_forall
      intro t ht
      rw [norm_div, norm_one, Real.norm_eq_abs, one_div, one_div]
      have hlog_neg : log t < 0 := Real.log_neg ht.1 (by linarith [ht.2])
      apply inv_anti₀ (abs_pos.mpr (ne_of_lt hlog1mε))
      rw [abs_of_neg hlog_neg, abs_of_neg hlog1mε]
      exact neg_le_neg_iff.mpr (Real.log_le_log (by linarith [ht.1]) ht.2)
  have hint2 : IntegrableOn (fun t => (1 : ℝ) / log t) (Icc (1 + ε) x) := by
    apply ContinuousOn.integrableOn_compact isCompact_Icc
    apply ContinuousOn.div continuousOn_const
    · exact continuousOn_log.mono (fun t ht => ne_of_gt (by linarith [ht.1]))
    · intro t ht; exact ne_of_gt (Real.log_pos (by linarith [ht.1]))
  rw [setIntegral_union hdisj measurableSet_Icc hint1 hint2]
  congr 1
  · exact (intervalIntegral.integral_of_le h1mε.le).symm
  · rw [integral_Icc_eq_integral_Ioc]
    exact (intervalIntegral.integral_of_le (by linarith : (1 : ℝ) + ε ≤ x)).symm

/-- The PV integral of 1/log(t) from 0 to x equals the PV integral of eᵘ/u from -∞ to log(x).
    This is the key substitution connecting li(x) to the exponential integral. -/
-- Helper: IntervalIntegrable for exp u / u on intervals where u ≠ 0
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiSeries/Variant0ebd4538e079e4ec2eea8ca1e91a32ab71b1260de4640b928bb885e3bee7f795.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ef6f525685569b90716827903f2340987df587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
