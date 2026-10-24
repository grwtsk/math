# summable_pre413

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
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2bee74f-7dbf-4397-406c-174b32331d71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32150aa5-8250-93ac-c678-ac6f8cd85e98",
  "kind": "theorem",
  "lexical_name": "summable_pre413",
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
  "slug": "summable-pre413--bbcbae6a0b85a5896f8c7d82",
  "source": {
    "blob": "3e73e970e4c41cfd99a78e1ae11ba7171d276a84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbcbae6a0b85a5896f8c7d82ae15dfe99c97facf5193e061cd7cf0a32639a6f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32150aa5-8250-93ac-c678-ac6f8cd85e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_pre413 {f : ℝ → ℝ} {s : Set ℝ} (hs : Bornology.IsBounded s) (hs_measureable : MeasurableSet s) :
  Summable fun (n: ℕ) ↦ ∫ (x : ℝ) in n..(n + 1), f x ∂«θ».Stieltjes.measure.restrict s := by

  by_cases s_empty: s = ∅
  · rw [summable_congr (g := 0)]
    · apply summable_zero
    · simp [s_empty, intervalIntegral.integral_of_le]

  apply summable_of_hasFiniteSupport
  apply Set.Finite.subset (s := Finset.Icc (⌊sInf s⌋₊ - 1) (⌈sSup s⌉₊ + 1))
  · apply finite_toSet
  · intro a ha
    simp only [Function.mem_support, ne_eq] at ha
    rw [← ne_eq] at ha
    by_contra!
    rw [intervalIntegral.integral_zero_ae] at ha
    · simp at ha
    · rw [MeasureTheory.ae_iff]
      rw [Measure.restrict_apply']
      · simp only [le_add_iff_nonneg_right, zero_le_one, Set.uIoc_of_le, Set.mem_Ioc,
          and_imp, Classical.not_imp]
        rw [Set.setOf_and]
        rw [Set.setOf_and]
        rw [← Set.inter_assoc]
        nth_rw 1 [Set.inter_assoc]
        rw [Set.inter_comm]
        rw [Set.inter_assoc]
        apply MeasureTheory.measure_inter_null_of_null_right
        · conv =>
            arg 1
            arg 2
            equals ∅ =>
              ext c
              simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false,
                not_and, not_le]
              intro c_mem a_lt
              simp only [coe_Icc, Set.mem_Icc, not_and_or] at this
              cases this
              · rename_i le_a
                rw [tsub_le_iff_right, not_le] at le_a
                apply Nat.lt_of_lt_floor at le_a
                simp at le_a
                have := csInf_le (hs.bddBelow) c_mem
                linarith
              · rename_i a_le
                rw [not_le] at a_le
                apply LT.lt.le at a_le
                rw [Order.add_one_le_iff] at a_le
                apply LT.lt.le at a_le
                apply Nat.le_of_ceil_le at a_le
                grw [le_csSup hs.bddAbove c_mem] at a_lt
                linarith
          simp
      · apply hs_measureable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RosserSchoenfeldPrime/Variant02e2584cd33b6439a1b5808e96574aeb1c6bf5be792bbc3ac68e447e6e3c7cda.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e73e970e4c41cfd99a78e1ae11ba7171d276a84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
