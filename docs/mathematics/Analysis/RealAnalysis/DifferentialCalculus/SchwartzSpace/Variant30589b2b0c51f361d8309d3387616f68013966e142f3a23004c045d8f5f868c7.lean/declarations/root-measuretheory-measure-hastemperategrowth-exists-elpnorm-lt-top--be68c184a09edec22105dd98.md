# _root_.MeasureTheory.Measure.HasTemperateGrowth.exists_eLpNorm_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a1f9f3d5dc8594c97f095b99298437b6a095ccf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 665,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be90856f-7943-7d5a-f1d5-150756085c93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6478c822-76c3-229d-804d-2ea0cbdfc476",
  "kind": "theorem",
  "lexical_name": "_root_.MeasureTheory.Measure.HasTemperateGrowth.exists_eLpNorm_lt_top",
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
  "slug": "root-measuretheory-measure-hastemperategrowth-exists-elpnorm-lt-top--be68c184a09edec22105dd98",
  "source": {
    "blob": "6a1f9f3d5dc8594c97f095b99298437b6a095ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 665,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be68c184a09edec22105dd9828d0c4a9cbb644fffeabe64ab86aa1835b17d514",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6478c822-76c3-229d-804d-2ea0cbdfc476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasureTheory.Measure.HasTemperateGrowth.exists_eLpNorm_lt_top (p : ℝ≥0∞)
    {μ : Measure D} (hμ : μ.HasTemperateGrowth) :
    ∃ k : ℕ, eLpNorm (fun x ↦ (1 + ‖x‖) ^ (-k : ℝ)) p μ < ⊤ := by
  cases p with
  | top => exact ⟨0, eLpNormEssSup_lt_top_of_ae_bound (C := 1) (by simp)⟩
  | coe p =>
    cases eq_or_ne (p : ℝ≥0∞) 0 with
    | inl hp => exact ⟨0, by simp [hp]⟩
    | inr hp =>
      have h_one_add (x : D) : 0 < 1 + ‖x‖ := lt_add_of_pos_of_le zero_lt_one (norm_nonneg x)
      have hp_pos : 0 < (p : ℝ) := by simpa [zero_lt_iff] using hp
      rcases hμ.exists_integrable with ⟨l, hl⟩
      let k := ⌈(l / p : ℝ)⌉₊
      have hlk : l ≤ k * (p : ℝ) := by simpa [div_le_iff₀ hp_pos] using Nat.le_ceil (l / p : ℝ)
      use k
      suffices HasFiniteIntegral (fun x ↦ ((1 + ‖x‖) ^ (-(k * p) : ℝ))) μ by
        rw [hasFiniteIntegral_iff_enorm] at this
        rw [eLpNorm_lt_top_iff_lintegral_rpow_enorm_lt_top hp ENNReal.coe_ne_top]
        simp only [ENNReal.coe_toReal]
        refine Eq.subst (motive := (∫⁻ x, · x ∂μ < ⊤)) (funext fun x ↦ ?_) this
        rw [← neg_mul, Real.rpow_mul (h_one_add x).le]
        exact Real.enorm_rpow_of_nonneg (by positivity) NNReal.zero_le_coe
      refine hl.hasFiniteIntegral.mono' (ae_of_all μ fun x ↦ ?_)
      rw [Real.norm_of_nonneg (Real.rpow_nonneg (h_one_add x).le _)]
      gcongr
      simp

end TemperateGrowth

section CLM

/-! ### Construction of continuous linear maps between Schwartz spaces -/


variable [NormedField 𝕜] [NormedField 𝕜']
variable [NormedAddCommGroup D] [NormedSpace ℝ D]
variable [NormedSpace 𝕜 E] [SMulCommClass ℝ 𝕜 E]
variable [NormedAddCommGroup G] [NormedSpace ℝ G] [NormedSpace 𝕜' G] [SMulCommClass ℝ 𝕜' G]
variable {σ : 𝕜 →+* 𝕜'}

/-- Create a semilinear map between Schwartz spaces.

Note: This is a helper definition for `mkCLM`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a1f9f3d5dc8594c97f095b99298437b6a095ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
