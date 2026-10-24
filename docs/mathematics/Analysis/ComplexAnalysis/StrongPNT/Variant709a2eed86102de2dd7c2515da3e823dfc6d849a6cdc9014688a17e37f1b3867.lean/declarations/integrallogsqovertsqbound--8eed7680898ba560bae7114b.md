# IntegralLogSqOverTSqBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1c48c109844c36b325a02f1a5e0d04058a3d9ca2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1846,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f15e6bf2-df39-9677-e7e2-30dc44da5eb2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4b13ffd-02a5-61dc-fa9b-73d0aadff308",
  "kind": "lemma",
  "lexical_name": "IntegralLogSqOverTSqBound",
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
  "slug": "integrallogsqovertsqbound--8eed7680898ba560bae7114b",
  "source": {
    "blob": "1c48c109844c36b325a02f1a5e0d04058a3d9ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1898,
    "line": 1846,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eed7680898ba560bae7114b2151242426209647d987d323c363ec0c45102094",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4b13ffd-02a5-61dc-fa9b-73d0aadff308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1846–1898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IntegralLogSqOverTSqBound : ∃ C > 0, ∀ T, 3 < T →
  ∫ t in Set.Ici T, (Real.log t)^2 / t^2 ≤ C / Real.sqrt T := by
    have h_log_sq_le_t_fourth_pow :
        ∃ C > 0, ∀ t : ℝ, 3 ≤ t → (Real.log t)^2 / t^2 ≤ C / t^(3/2 : ℝ) := by
      have h_log_sq_le_sqrt :
          ∃ C > 0, ∀ t : ℝ, 3 ≤ t → Real.log t ^ 2 ≤ C * t ^ (1 / 2 : ℝ) := by
        have h_log_sq_le_sqrt : ∃ C > 0, ∀ t : ℝ, 3 ≤ t → Real.log t ≤ C * t ^ (1 / 4 : ℝ) := by
          use 4, by grind, fun t ht ↦ ?_
          have := Real.log_le_sub_one_of_pos (by positivity : 0 < t ^ (1 / 4 : ℝ))
          rw [Real.log_rpow (by positivity)] at this; linarith
        obtain ⟨C, hC₀, hC⟩ := h_log_sq_le_sqrt; use C^2
        exact ⟨sq_pos_of_pos hC₀, fun t ht ↦
          (pow_le_pow_left₀ (Real.log_nonneg <| by linarith) (hC t ht) 2).trans <| by
            rw [mul_pow, ← Real.rpow_natCast, ← Real.rpow_natCast, ← Real.rpow_mul (by linarith)]
            grind⟩
      obtain ⟨C, hC_pos, hC⟩ := h_log_sq_le_sqrt; use C
      refine ⟨hC_pos, fun t ht ↦ ?_⟩; rw [div_le_div_iff₀] <;> try positivity
      convert mul_le_mul_of_nonneg_right (hC t ht)
        (Real.rpow_nonneg (by linarith : 0 ≤ t) (3 / 2)) using 1
      rw [mul_assoc, ← Real.rpow_natCast, ← Real.rpow_add (by linarith)]; grind
    obtain ⟨C, hC_pos, hC_bound⟩ := h_log_sq_le_t_fourth_pow
    use C * 2
    have h_integral_bound :
        ∀ T : ℝ, 3 < T → ∫ t in Set.Ici T, C / t^(3/2 : ℝ) = C * 2 / Real.sqrt T := by
      have h_integral_eval :
          ∀ T : ℝ, 3 < T → ∫ t in Set.Ici T, t ^ (-3 / 2 : ℝ) = 2 / Real.sqrt T := by
        intro T hT
        rw [MeasureTheory.integral_Ici_eq_integral_Ioi, integral_Ioi_rpow_of_lt] <;> norm_num
        · rw [Real.sqrt_eq_rpow, Real.rpow_neg] <;> ring_nf; linarith
        · linarith
      intro T hT; convert congr_arg (fun x ↦ C * x) (h_integral_eval T hT) using 1 <;> ring_nf
      rw [← MeasureTheory.integral_const_mul]
      refine MeasureTheory.setIntegral_congr_fun measurableSet_Ici fun x hx ↦ ?_
      rw [← Real.rpow_neg (by linarith [Set.mem_Ici.mp hx])]; ring_nf
    refine ⟨by positivity, fun T hT ↦ (MeasureTheory.setIntegral_mono_on ?_ ?_ measurableSet_Ici
        fun t ht ↦ hC_bound t <| by linarith [ht.out]).trans (h_integral_bound T hT |> le_of_eq)⟩
    · have hInteg : IntegrableOn (fun t ↦ C / t ^ (3 / 2 : ℝ)) (Set.Ici T) := by
        have := h_integral_bound T hT
        contrapose! this; rw [MeasureTheory.integral_undef this]; positivity
      have hMeas : AEStronglyMeasurable (fun t ↦ Real.log t ^ 2 / t ^ 2)
          (MeasureTheory.volume.restrict (Set.Ici T)) :=
        Measurable.aestronglyMeasurable <| Measurable.mul
          (Measurable.pow_const Real.measurable_log _)
          (Measurable.inv (measurable_id.pow_const _))
      have hBound : ∀ᵐ t ∂MeasureTheory.volume.restrict (Set.Ici T),
          ‖Real.log t ^ 2 / t ^ 2‖ ≤ C / t ^ (3 / 2 : ℝ) := by
        filter_upwards [MeasureTheory.ae_restrict_mem measurableSet_Ici] with t ht
        rw [Real.norm_of_nonneg (by positivity)]
        exact hC_bound t (by linarith [ht.out])
      exact MeasureTheory.Integrable.mono' hInteg hMeas hBound
    · have := h_integral_bound T hT
      contrapose! this; rw [MeasureTheory.integral_undef this]; positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variant709a2eed86102de2dd7c2515da3e823dfc6d849a6cdc9014688a17e37f1b3867.lean#L1846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c48c109844c36b325a02f1a5e0d04058a3d9ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
