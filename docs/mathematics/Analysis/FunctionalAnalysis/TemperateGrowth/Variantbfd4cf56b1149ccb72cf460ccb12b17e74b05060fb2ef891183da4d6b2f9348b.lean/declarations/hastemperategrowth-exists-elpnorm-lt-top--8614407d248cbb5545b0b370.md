# HasTemperateGrowth.exists_eLpNorm_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97ec26c2b3c796caa8e997a28d64d404f28af170",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 567,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92031922-06cf-cd95-6d61-ccaf0401e4ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:38127f40-f1fd-1ea7-9014-9bf13a5da780",
  "kind": "theorem",
  "lexical_name": "HasTemperateGrowth.exists_eLpNorm_lt_top",
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
  "slug": "hastemperategrowth-exists-elpnorm-lt-top--8614407d248cbb5545b0b370",
  "source": {
    "blob": "97ec26c2b3c796caa8e997a28d64d404f28af170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 567,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8614407d248cbb5545b0b3703e3f60847d810a4af0c92c15f20818bff3aac085",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38127f40-f1fd-1ea7-9014-9bf13a5da780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasTemperateGrowth.exists_eLpNorm_lt_top [OpensMeasurableSpace E] (p : ℝ≥0∞)
    {μ : Measure E} (hμ : μ.HasTemperateGrowth) :
    ∃ k : ℕ, eLpNorm (fun x ↦ (1 + ‖x‖) ^ (-k : ℝ)) p μ < ⊤ := by
  have hmeas (k : ℕ) : AEStronglyMeasurable (fun x : E ↦ (1 + ‖x‖) ^ (-k : ℝ)) μ :=
    (Continuous.rpow_const (by fun_prop) (fun x ↦ Or.inl (by positivity))).aestronglyMeasurable
  cases p with
  | top =>
      refine ⟨0, ?_⟩
      rw [eLpNorm_exponent_top (hmeas 0)]
      exact eLpNormEssSup_lt_top_of_ae_bound (C := 1) (by simp)
  | coe p =>
    cases eq_or_ne (p : ℝ≥0∞) 0 with
    | inl hp =>
        refine ⟨0, ?_⟩
        rw [hp, eLpNorm_exponent_zero (hmeas 0)]
        exact bot_lt_top
    | inr hp =>
      have h_one_add (x : E) : 0 < 1 + ‖x‖ := lt_add_of_pos_of_le zero_lt_one (norm_nonneg x)
      have hp_pos : 0 < (p : ℝ) := by simpa [zero_lt_iff] using hp
      rcases hμ.exists_integrable with ⟨l, hl⟩
      let k := ⌈(l / p : ℝ)⌉₊
      have hlk : l ≤ k * (p : ℝ) := by simpa [div_le_iff₀ hp_pos] using Nat.le_ceil (l / p : ℝ)
      use k
      suffices HasFiniteIntegral (fun x ↦ ((1 + ‖x‖) ^ (-(k * p) : ℝ))) μ by
        rw [hasFiniteIntegral_iff_enorm] at this
        rw [eLpNorm_lt_top_iff_lintegral_rpow_enorm_lt_top hp ENNReal.coe_ne_top (hmeas k)]
        simp only [ENNReal.coe_toReal]
        refine Eq.subst (motive := (∫⁻ x, · x ∂μ < ⊤)) (funext fun x ↦ ?_) this
        rw [← neg_mul, Real.rpow_mul (h_one_add x).le]
        exact Real.enorm_rpow_of_nonneg (by positivity) NNReal.zero_le_coe
      refine hl.hasFiniteIntegral.mono' (ae_of_all μ fun x ↦ ?_)
      rw [Real.norm_of_nonneg (Real.rpow_nonneg (h_one_add x).le _)]
      gcongr
      simp

end MeasureTheory.Measure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ec26c2b3c796caa8e997a28d64d404f28af170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
