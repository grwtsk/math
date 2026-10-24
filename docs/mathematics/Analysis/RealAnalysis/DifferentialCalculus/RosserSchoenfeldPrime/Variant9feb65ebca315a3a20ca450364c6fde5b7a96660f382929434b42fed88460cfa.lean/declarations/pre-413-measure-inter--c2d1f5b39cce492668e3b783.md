# pre_413_measure_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9055ac071fb1dff52c5bdf94a6cceb862831b174",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f1dfa03-c875-b960-aec2-fcc3bcf8092a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7361eb9-ffa0-68a7-0c9f-e37867d2cf7d",
  "kind": "lemma",
  "lexical_name": "pre_413_measure_inter",
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
  "slug": "pre-413-measure-inter--c2d1f5b39cce492668e3b783",
  "source": {
    "blob": "9055ac071fb1dff52c5bdf94a6cceb862831b174",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 282,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2d1f5b39cce492668e3b7834c7125d2686702e78a8f1ba05b8db18969072452",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7361eb9-ffa0-68a7-0c9f-e37867d2cf7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pre_413_measure_inter {x : ℝ} (hx : 2 ≤ x) (y : Finset.Ico 1 ⌊x⌋₊) :
    «θ».Stieltjes.measure.real (Set.Ioc (↑↑y) (↑↑y + 1) ∩ Set.Icc 2 x) = if Nat.Prime (y + 1) then Real.log (↑y + 1) else 0 := by
  by_cases y_eq: y.val = 1
  · simp only [y_eq, cast_one, reduceAdd]
    norm_num
    conv =>
      arg 1
      arg 2
      equals Set.Icc 2 2 =>
        ext a
        simp
        have foo := y.prop
        rw [Finset.mem_Ico] at foo
        grind
    rw [Measure.real_def]
    simp only [«θ».Stieltjes, Set.Icc_self, StieltjesFunction.measure_singleton,
      theta_two]
    conv =>
      lhs
      arg 1
      arg 1
      rhs
      arg 2
      equals ↑(1: ℕ) + (1: ℝ) => norm_num
    rw [leftLim_theta_succ]
    simp [theta_one, Real.log_nonneg]
  · rw [Measure.real_def, MeasureTheory.measure_eq_measure_of_null_diff (t := Set.Ioc (↑↑y) (↑↑y + 1))]
    · simp only [«θ».Stieltjes, StieltjesFunction.measure_Ioc, theta_succ_sub,
      ENNReal.toReal_ofReal_eq_iff]
      split_ifs
      · simp [Real.log_nonneg]
      · simp
    · simp
    · simp
      conv =>
        arg 1
        arg 2
        equals ∅ =>
          ext a
          simp only [Set.mem_diff, Set.mem_Ioc, Set.mem_Icc, not_and, not_le,
            Set.mem_empty_iff_false, iff_false, Classical.not_imp, not_lt, and_imp]
          intro ha hb
          have y_prop := y.property
          rw [Finset.mem_Ico] at y_prop

          have y_lt: (2: ℝ) ≤ y.val := by
            norm_cast
            omega
          refine ⟨?_, ?_⟩
          · grw [y_lt]
            linarith
          · grw [hb]
            have bar := y_prop.2
            rw [← Nat.add_one_le_iff] at bar
            norm_cast
            grw [bar]
            apply Nat.floor_le
            linarith
      simp

@[blueprint
  "rs-pre-413"
  (title := "RS-prime display before (4.13)")
  (statement := /-- $\sum_{p \leq x} f(p) = \int_{2}^x \frac{f(y)}{\log y}\ d\vartheta(y)$. -/)
  (proof := /-- This follows from the definition of the Stieltjes integral. -/)
  (latexEnv := "sublemma")
  (discussion := 599)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant9feb65ebca315a3a20ca450364c6fde5b7a96660f382929434b42fed88460cfa.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9055ac071fb1dff52c5bdf94a6cceb862831b174` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
