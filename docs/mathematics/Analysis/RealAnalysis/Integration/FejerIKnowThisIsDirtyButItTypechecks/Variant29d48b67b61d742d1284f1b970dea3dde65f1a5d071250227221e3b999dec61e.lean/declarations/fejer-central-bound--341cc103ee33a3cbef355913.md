# fejer_central_bound

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
      "line": 895,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06ff8bbf-1b5c-4a4a-74ad-40254b3162ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4560c06a-4301-f6db-8dc3-7c6402109de1",
  "kind": "lemma",
  "lexical_name": "fejer_central_bound",
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
  "slug": "fejer-central-bound--341cc103ee33a3cbef355913",
  "source": {
    "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 928,
    "line": 895,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:341cc103ee33a3cbef35591349d2e358bc01be4f7bd242cd2902fd47161fdfe3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4560c06a-4301-f6db-8dc3-7c6402109de1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 895–928.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fejer_central_bound {f : ℝ → ℝ} {n : ℕ} {x δ ε : ℝ}
    (hδ_pos : 0 < δ) (hδ_le : δ ≤ Real.pi)
    (h_cont : ∀ t, |t| ≤ δ → |f (x - t) - f x| ≤ ε)
    (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) :
    |(1 / Real.pi) * ∫ t in Set.Icc (-δ) δ, (f (x - t) - f x) * fejer_kernel n t| ≤ ε := by
      -- Applying the bound |f(x-t) - f(x)| ≤ ε to the integral over [-δ, δ], we get:
      have h_integral_bound : |∫ t in Set.Icc (-δ) δ, (f (x - t) - f x) * fejer_kernel n t| ≤ ε * ∫ t in Set.Icc (-δ) δ, fejer_kernel n t := by
        rw [ ←MeasureTheory.integral_const_mul ];
        refine' le_trans ( MeasureTheory.norm_integral_le_integral_norm ( _ : ℝ → ℝ ) ) ( MeasureTheory.integral_mono_of_nonneg _ _ _ );
        · exact Filter.Eventually.of_forall fun t => norm_nonneg _;
        · refine' Continuous.integrableOn_Icc _;
          refine' Continuous.mul continuous_const _;
          exact continuous_const.mul <| continuous_finset_sum _ fun i _ => continuous_const.add <| continuous_finset_sum _ fun j _ => Real.continuous_cos.comp <| by continuity;
        · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht using by simpa only [ Real.norm_eq_abs, abs_mul, abs_of_nonneg ( show 0 ≤ fejer_kernel n t from fejer_kernel_nonneg _ _ ) ] using mul_le_mul_of_nonneg_right ( h_cont t <| abs_le.mpr ⟨ by linarith [ ht.1 ], by linarith [ ht.2 ] ⟩ ) ( fejer_kernel_nonneg _ _ ) ;
      -- Since $\int_{-\delta}^\delta K_n(t) dt \leq \int_{-\pi}^\pi K_n(t) dt = \pi$, we have:
      have h_integral_le_pi : ∫ t in Set.Icc (-δ) δ, fejer_kernel n t ≤ ∫ t in Set.Icc (-Real.pi) Real.pi, fejer_kernel n t := by
        refine' MeasureTheory.setIntegral_mono_set _ _ _;
        · refine' Continuous.integrableOn_Icc _;
          refine' continuous_const.mul _;
          refine' continuous_finset_sum _ fun i hi => _;
          exact continuous_const.add ( continuous_finset_sum _ fun _ _ => Real.continuous_cos.comp ( by continuity ) );
        · filter_upwards [ MeasureTheory.ae_restrict_mem measurableSet_Icc ] with t ht using fejer_kernel_nonneg n t;
        · exact MeasureTheory.ae_of_all _ fun t ht => ⟨ by linarith [ ht.1 ], by linarith [ ht.2 ] ⟩;
      -- Since $\int_{-\pi}^\pi K_n(t) dt = \pi$, we have:
      have h_integral_pi : ∫ t in Set.Icc (-Real.pi) Real.pi, fejer_kernel n t = Real.pi := by
        convert congr_arg ( fun x : ℝ => x * Real.pi ) ( fejer_kernel_integral_one n ) using 1 <;> ring;
        rw [ MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le ( by linarith [ Real.pi_pos ] ), mul_inv_cancel₀ Real.pi_ne_zero, one_mul ];
      rw [ abs_mul, abs_of_nonneg ( by positivity ) ];
      rw [ div_mul_eq_mul_div, div_le_iff₀ ] <;> nlinarith [ Real.pi_pos, show 0 ≤ ε by exact le_trans ( abs_nonneg _ ) ( h_cont 0 ( by norm_num; linarith ) ) ]

/-
Decomposition of the integration interval $[-\pi, \pi]$ into the central region $[-\delta, \delta]$ and the tail regions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean#L895).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf09c6bea6d3331635dd00fcb6f355dd9b375f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
