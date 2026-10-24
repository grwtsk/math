# pre_413_measure_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc517d92-22a3-a547-490a-be05a122810b",
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
  "slug": "pre-413-measure-inter--780249b8bda1f1af2fe7b249",
  "source": {
    "blob": "c0704692114bca6c8ed8a8e14715cb316b48f6a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 290,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:780249b8bda1f1af2fe7b24916896e1606f6f4d1b1e5b3da4975e41b104af9db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc517d92-22a3-a547-490a-be05a122810b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–356.

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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant6b2a1c084de44bb6f172823734de33966085c204039725e5df61aa3044a072b5.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0704692114bca6c8ed8a8e14715cb316b48f6a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
