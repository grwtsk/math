# fejer_sum_diff_bound_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1045,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4f66b2e-398d-bae2-8715-4ae0fd32322c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6d10eb5-b46f-d62c-327e-0e598284ce50",
  "kind": "lemma",
  "lexical_name": "fejer_sum_diff_bound_split",
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
  "slug": "fejer-sum-diff-bound-split--5dfa3900370cd9489a106ee9",
  "source": {
    "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1079,
    "line": 1045,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dfa3900370cd9489a106ee9c33f4e4608c44edbff7b9ec8d32662e6c2b58284",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6d10eb5-b46f-d62c-327e-0e598284ce50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1045–1079.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fejer_sum_diff_bound_split {f : ℝ → ℝ} {n : ℕ} {x δ : ℝ}
    (hδ_pos : 0 < δ) (hδ_le : δ ≤ Real.pi)
    (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) :
    |fejer_sum f n x - f x| ≤
    |(1 / Real.pi) * ∫ t in Set.Icc (-δ) δ, (f (x - t) - f x) * fejer_kernel n t| +
    |(1 / Real.pi) * ∫ t in (Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi), (f (x - t) - f x) * fejer_kernel n t| := by
      rw [ fejer_sum_diff_eq_set_integral hf_int hf_per ];
      rw [ ← MeasureTheory.integral_indicator, ← MeasureTheory.integral_indicator ];
      · -- Apply the triangle inequality to the integral over the union of the central and tail regions.
        have h_triangle : ∫ t, (Set.Icc (-Real.pi) Real.pi).indicator (fun t => (f (x - t) - f x) * fejer_kernel n t) t = (∫ t in Set.Icc (-δ) δ, (Set.Icc (-Real.pi) Real.pi).indicator (fun t => (f (x - t) - f x) * fejer_kernel n t) t) + (∫ t in (Set.Icc (-Real.pi) (-δ) ∪ Set.Icc δ Real.pi), (Set.Icc (-Real.pi) Real.pi).indicator (fun t => (f (x - t) - f x) * fejer_kernel n t) t) := by
          rw [ ← MeasureTheory.integral_union_ae ];
          · rw [ ← MeasureTheory.integral_indicator ] <;> norm_num [ Set.indicator ];
            grind;
          · exact?;
          · exact MeasurableSet.nullMeasurableSet ( measurableSet_Icc.union measurableSet_Icc );
          · refine' MeasureTheory.Integrable.integrableOn _;
            rw [ MeasureTheory.integrable_indicator_iff ];
            · exact?;
            · norm_num;
          · refine' MeasureTheory.Integrable.integrableOn _;
            rw [ MeasureTheory.integrable_indicator_iff ];
            · exact?;
            · norm_num;
        rw [ h_triangle, MeasureTheory.integral_indicator, MeasureTheory.integral_indicator ] <;> norm_num [ Set.indicator ];
        rw [ ← mul_add ];
        rw [ show ( Set.Icc ( -Real.pi ) Real.pi ∩ Set.Icc ( -δ ) δ : Set ℝ ) = Set.Icc ( -δ ) δ from Set.inter_eq_right.mpr <| Set.Icc_subset_Icc ( by linarith ) ( by linarith ), show ( Set.Icc ( -Real.pi ) Real.pi ∩ ( Set.Icc ( -Real.pi ) ( -δ ) ∪ Set.Icc δ Real.pi ) : Set ℝ ) = Set.Icc ( -Real.pi ) ( -δ ) ∪ Set.Icc δ Real.pi from Set.inter_eq_right.mpr <| Set.union_subset ( Set.Icc_subset_Icc ( by linarith ) ( by linarith ) ) ( Set.Icc_subset_Icc ( by linarith ) ( by linarith ) ) ];
        rw [ ← MeasureTheory.integral_indicator, ← MeasureTheory.integral_indicator ] <;> norm_num [ Set.indicator ];
        exact?;
      · norm_num;
      · norm_num

/-
Fejér's Theorem Part (i): If f is continuous on a closed interval I, then the Fejér sums converge uniformly to f on I.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean#L1045).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f685935c5324bdcc51c6fdf7db424d8bd5db1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
