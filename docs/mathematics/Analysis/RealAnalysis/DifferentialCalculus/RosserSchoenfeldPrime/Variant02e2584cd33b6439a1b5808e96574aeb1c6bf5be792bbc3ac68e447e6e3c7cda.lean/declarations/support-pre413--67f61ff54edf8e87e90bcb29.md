# support_pre413

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e73e970e4c41cfd99a78e1ae11ba7171d276a84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23d9216e-4fda-d307-1253-9dc66b64d038",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26af0720-ce4a-1979-cfb0-1a344800a772",
  "kind": "lemma",
  "lexical_name": "support_pre413",
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
  "slug": "support-pre413--67f61ff54edf8e87e90bcb29",
  "source": {
    "blob": "3e73e970e4c41cfd99a78e1ae11ba7171d276a84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 215,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67f61ff54edf8e87e90bcb2904bc1906fb7f29a5e075dbf606376de5ac0e4724",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26af0720-ce4a-1979-cfb0-1a344800a772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma support_pre413 {f : ℝ → ℝ} {x : ℝ} (hx : 2 ≤ x) :
  (Function.support fun (n: ℕ) ↦ ∫ (x : ℝ) in ↑n..↑n + 1, f x ∂«θ».Stieltjes.measure.restrict (Set.Icc 2 x)) ⊆
    (Finset.Ico 1 ⌊x⌋₊) := by
  intro n hn
  simp only [Function.mem_support, ne_eq] at hn
  rw [intervalIntegral.integral_of_le (by simp), ← ne_eq, ← abs_pos] at hn
  grw [MeasureTheory.abs_integral_le_integral_abs] at hn
  rw [MeasureTheory.integral_pos_iff_support_of_nonneg_ae] at hn
  · simp only [measurableSet_Ioc, Measure.restrict_restrict, measurableSet_Icc,
      MeasurableSet.inter, Measure.restrict_apply'] at hn
    by_cases n_eq: n = 0
    · simp only [n_eq, CharP.cast_eq_zero, zero_add] at hn
      conv at hn =>
        pattern _ ∩ _
        rhs
        equals ∅ => grind
      simp at hn
    by_contra!
    conv at hn =>
      rhs
      arg 2
      rhs
      equals (Set.Ioc ↑n x) =>
        ext a
        simp only [Set.mem_inter_iff, Set.mem_Ioc, Set.mem_Icc]
        refine ⟨?_, ?_⟩
        · intro ha
          refine ⟨by grind, ?_⟩
          grind
        · intro ha
          simp only [coe_Ico, Set.mem_Ico, not_and_or] at this
          refine ⟨?_, ?_⟩
          · refine ⟨?_, ?_⟩
            · grind
            · cases this
              · grind
              · rename_i n_le
                simp at n_le
                grw [ha.2]
                grw [Nat.lt_floor_add_one (a := x)]
                simpa using n_le
          · refine ⟨?_, by grind⟩
            have le_x: (2: ℕ) ≤ x := by norm_cast
            apply Nat.le_floor at le_x
            conv =>
              lhs
              equals ↑(2: ℕ) => simp

            simp only [not_le, lt_one_iff, n_eq, not_lt, false_or] at this
            grw [le_x, this]
            linarith

    apply _root_.ne_of_lt at hn
    rw [ne_eq, eq_comm] at hn
    rw [measure_inter_null_of_null_right] at hn
    · simp at hn
    · simp only [«θ».Stieltjes, StieltjesFunction.measure_Ioc, ENNReal.ofReal_eq_zero, tsub_le_iff_right, zero_add]
      rw [theta_eq_theta_coe_floor]
      apply Monotone.imp (by exact theta_mono)
      simp only [coe_Ico, Set.mem_Ico, not_and, not_lt] at this
      simp [this (by omega)]
  · apply Filter.Eventually.of_forall
    intro y
    simp
  · apply MeasureTheory.Integrable.of_integral_ne_zero
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e73e970e4c41cfd99a78e1ae11ba7171d276a84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
