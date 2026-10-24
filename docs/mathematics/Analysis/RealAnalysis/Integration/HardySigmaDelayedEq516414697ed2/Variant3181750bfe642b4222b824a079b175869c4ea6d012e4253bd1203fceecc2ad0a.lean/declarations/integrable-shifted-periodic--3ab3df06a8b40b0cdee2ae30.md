# integrable_shifted_periodic

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
      "line": 1619,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:671f4b56-1238-cace-26ff-b145eb4d1152",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0d47f4e-4a36-1edb-f2c8-fa25ce05a83e",
  "kind": "lemma",
  "lexical_name": "integrable_shifted_periodic",
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
  "slug": "integrable-shifted-periodic--3ab3df06a8b40b0cdee2ae30",
  "source": {
    "blob": "84f685935c5324bdcc51c6fdf7db424d8bd5db1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1653,
    "line": 1619,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ab3df06a8b40b0cdee2ae30c15098ac4ab1316b0acd51ec86079399c662f00c",
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

Occurrence: `result:b0d47f4e-4a36-1edb-f2c8-fa25ce05a83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1619–1653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_shifted_periodic {f : ℝ → ℝ} (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) (x : ℝ) :
    IntervalIntegrable (fun t => f (x + t)) MeasureTheory.volume 0 Real.pi := by
      have h_integrable_left : IntervalIntegrable (fun t => f (x + t)) MeasureTheory.volume (-Real.pi) Real.pi := by
        have h_integrable : IntervalIntegrable (fun t => f t) MeasureTheory.volume (x - Real.pi) (x + Real.pi) := by
          rw [ intervalIntegrable_iff ] at *;
          have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x - Real.pi) (x + Real.pi)) := by
            have h_integrable : ∀ n : ℤ, MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (n * (2 * Real.pi) - Real.pi) (n * (2 * Real.pi) + Real.pi)) := by
              intro n
              have h_integrable : MeasureTheory.IntegrableOn (fun t => f (t - n * (2 * Real.pi))) (Set.Icc (n * (2 * Real.pi) - Real.pi) (n * (2 * Real.pi) + Real.pi)) := by
                have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi) Real.pi) := by
                  simpa only [ Set.uIoc_of_le ( neg_le_self Real.pi_pos.le ), MeasureTheory.IntegrableOn, MeasureTheory.Measure.restrict_congr_set MeasureTheory.Ioc_ae_eq_Icc ] using hf_int;
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert h_integrable.comp_sub_right ( n * ( 2 * Real.pi ) ) using 1;
                ext; simp [Set.indicator];
                split_ifs <;> ring_nf at * <;> aesop;
              convert h_integrable using 1;
              exact funext fun x => by simpa using Function.Periodic.int_mul hf_per n ( x - n * ( 2 * Real.pi ) ) ;
            -- Choose $n$ such that $n * (2 * π) - π ≤ x - π < (n + 1) * (2 * π) - π$.
            obtain ⟨n, hn⟩ : ∃ n : ℤ, n * (2 * Real.pi) - Real.pi ≤ x - Real.pi ∧ x - Real.pi < (n + 1) * (2 * Real.pi) - Real.pi := by
              exact ⟨ ⌊ ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
            have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (n * (2 * Real.pi) - Real.pi) ((n + 1) * (2 * Real.pi) + Real.pi)) := by
              have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (n * (2 * Real.pi) - Real.pi) (n * (2 * Real.pi) + Real.pi)) ∧ MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc ((n + 1) * (2 * Real.pi) - Real.pi) ((n + 1) * (2 * Real.pi) + Real.pi)) := by
                exact ⟨ h_integrable n, by simpa using h_integrable ( n + 1 ) ⟩;
              convert h_integrable.1.union h_integrable.2 using 1;
              grind;
            exact h_integrable.mono_set <| Set.Icc_subset_Icc ( by linarith ) ( by linarith );
          exact h_integrable.mono_set ( by rw [ Set.uIoc_of_le ( by linarith [ Real.pi_pos ] ) ] ; exact Set.Ioc_subset_Icc_self );
        convert h_integrable.comp_add_left x using 1 ; ring;
        ring;
      apply_rules [ h_integrable_left.mono_set, Set.Icc_subset_Icc ] <;> norm_num [ Real.pi_pos.le ]

/-
Fejér's Theorem Part (ii): If f has a jump discontinuity at x0, then the Fejér sums converge to the average of the left and right limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HardySigmaDelayedEq516414697ed2/Variant3181750bfe642b4222b824a079b175869c4ea6d012e4253bd1203fceecc2ad0a.lean#L1619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f685935c5324bdcc51c6fdf7db424d8bd5db1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
