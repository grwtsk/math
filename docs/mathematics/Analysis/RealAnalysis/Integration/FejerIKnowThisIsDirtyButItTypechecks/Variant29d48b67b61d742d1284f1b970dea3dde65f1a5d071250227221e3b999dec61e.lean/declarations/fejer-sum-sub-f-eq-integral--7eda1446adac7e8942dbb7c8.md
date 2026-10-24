# fejer_sum_sub_f_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 641,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b27e173-75c8-24ed-cfc1-e45935107656",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fadae56-d307-b8c4-6c49-fd883d206327",
  "kind": "theorem",
  "lexical_name": "fejer_sum_sub_f_eq_integral",
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
  "slug": "fejer-sum-sub-f-eq-integral--7eda1446adac7e8942dbb7c8",
  "source": {
    "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 695,
    "line": 641,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7eda1446adac7e8942dbb7c84ba42fedf7d56a41367d6edb454543ba7affd8f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fadae56-d307-b8c4-6c49-fd883d206327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–695.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_sum_sub_f_eq_integral {f : ℝ → ℝ} (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) (n : ℕ) (x : ℝ) :
    fejer_sum f n x - f x = (1 / Real.pi) * ∫ t in (-Real.pi)..Real.pi, (f (x - t) - f x) * fejer_kernel n t := by
      -- By definition of Fejér sum, we have
      have h_def : fejer_sum f n x = (1 / Real.pi) * ∫ t in (-Real.pi)..Real.pi, f (x - t) * fejer_kernel n t := by
        convert fejer_sum_eq_integral_alt_v2 hf_int hf_per n x using 1;
      simp +decide [ h_def, sub_mul ];
      rw [ intervalIntegral.integral_sub ] <;> norm_num;
      · field_simp;
        rw [ show ∫ t in -Real.pi..Real.pi, fejer_kernel n t = Real.pi by
              have := fejer_kernel_integral_one n;
              rw [ div_mul_eq_mul_div, div_eq_iff ] at this <;> linarith [ Real.pi_pos ] ] ; ring;
      · have h_integrable : IntervalIntegrable (fun t => f (x - t)) MeasureTheory.volume (-Real.pi) Real.pi := by
          rw [ intervalIntegrable_iff_integrableOn_Ioc_of_le ( by linarith [ Real.pi_pos ] ) ] at *;
          have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x - Real.pi) (x + Real.pi)) MeasureTheory.volume := by
            have h_integrable : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi) Real.pi) MeasureTheory.volume := by
              rwa [ MeasureTheory.IntegrableOn, MeasureTheory.Measure.restrict_congr_set MeasureTheory.Ioc_ae_eq_Icc ] at *;
            -- Since $f$ is periodic with period $2\pi$, we can shift the interval of integration.
            have h_shift : ∀ k : ℤ, MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi)) MeasureTheory.volume := by
              intro k;
              have h_shift : ∀ k : ℤ, MeasureTheory.IntegrableOn (fun t => f (t - k * 2 * Real.pi)) (Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi)) MeasureTheory.volume := by
                intro k;
                rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
                convert h_integrable.comp_sub_right ( k * 2 * Real.pi ) using 1;
                ext; simp [Set.indicator];
                split_ifs <;> ring_nf at * <;> aesop;
              convert h_shift k using 1;
              exact funext fun t => by simpa [ mul_assoc ] using Function.Periodic.int_mul hf_per k ( t - k * 2 * Real.pi ) ;
            -- Choose $k$ such that $x - \pi \in [-\pi + k * 2 * \pi, \pi + k * 2 * \pi]$.
            obtain ⟨k, hk⟩ : ∃ k : ℤ, x - Real.pi ∈ Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi) := by
              exact ⟨ ⌊ ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x - Real.pi + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x - Real.pi + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
            have h_shift : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi)) MeasureTheory.volume := by
              exact h_shift k;
            have h_shift : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (x - Real.pi) (x + Real.pi)) MeasureTheory.volume := by
              have h_subset : Set.Icc (x - Real.pi) (x + Real.pi) ⊆ Set.Icc (-Real.pi + k * 2 * Real.pi) (Real.pi + k * 2 * Real.pi) ∪ Set.Icc (-Real.pi + (k + 1) * 2 * Real.pi) (Real.pi + (k + 1) * 2 * Real.pi) := by
                exact fun t ht => if h : t ≤ Real.pi + k * 2 * Real.pi then Or.inl ⟨ by linarith [ ht.1, hk.1 ], by linarith [ ht.2, hk.2 ] ⟩ else Or.inr ⟨ by linarith [ ht.1, hk.1 ], by linarith [ ht.2, hk.2 ] ⟩
              have h_shift : MeasureTheory.IntegrableOn (fun t => f t) (Set.Icc (-Real.pi + (k + 1) * 2 * Real.pi) (Real.pi + (k + 1) * 2 * Real.pi)) MeasureTheory.volume := by
                convert ‹∀ k : ℤ, MeasureTheory.IntegrableOn ( fun t => f t ) ( Set.Icc ( -Real.pi + k * 2 * Real.pi ) ( Real.pi + k * 2 * Real.pi ) ) MeasureTheory.volume› ( k + 1 ) using 1 ; push_cast ; ring;
              exact MeasureTheory.IntegrableOn.mono_set ( MeasureTheory.IntegrableOn.union ‹_› ‹_› ) h_subset;
            exact h_shift;
          have h_integrable : MeasureTheory.IntegrableOn (fun t => f (x - t)) (Set.Icc (-Real.pi) Real.pi) MeasureTheory.volume := by
            rw [ ← MeasureTheory.integrable_indicator_iff ( measurableSet_Icc ) ] at *;
            convert h_integrable.comp_sub_left x using 1;
            ext; simp [Set.indicator];
            grind;
          exact h_integrable.mono_set <| Set.Ioc_subset_Icc_self;
        exact h_integrable.mul_continuousOn ( by exact Continuous.continuousOn <| by exact Continuous.mul ( continuous_const ) <| by exact continuous_finset_sum _ fun _ _ => continuous_const.add <| by exact continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp <| by continuity );
      · apply_rules [ Continuous.intervalIntegrable ];
        apply_rules [ Continuous.mul, continuous_const, continuous_const ];
        refine' continuous_finset_sum _ fun i hi => _;
        exact continuous_const.add <| continuous_finset_sum _ fun j hj => Real.continuous_cos.comp <| by continuity;

/-
Lemma: Difference between Fejér sum and function as an integral.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf09c6bea6d3331635dd00fcb6f355dd9b375f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
