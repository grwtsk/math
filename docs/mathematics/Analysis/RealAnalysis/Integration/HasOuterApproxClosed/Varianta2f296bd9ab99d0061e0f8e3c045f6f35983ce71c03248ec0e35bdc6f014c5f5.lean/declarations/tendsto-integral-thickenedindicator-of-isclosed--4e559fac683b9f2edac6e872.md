# tendsto_integral_thickenedIndicator_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cbea0f4-1df1-4c73-840b-9675404b9ec9",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_thickenedIndicator_of_isClosed",
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
  "slug": "tendsto-integral-thickenedindicator-of-isclosed--4e559fac683b9f2edac6e872",
  "source": {
    "blob": "ec701fcd87952986a28066d36ff3c0333ba15ffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e559fac683b9f2edac6e8723f3ca1b59849ffc1aa18c2b41fb32b03319d30df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cbea0f4-1df1-4c73-840b-9675404b9ec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_thickenedIndicator_of_isClosed {Ω : Type*} {mΩ : MeasurableSpace Ω}
    [PseudoEMetricSpace Ω] [OpensMeasurableSpace Ω] (μ : Measure Ω) [IsFiniteMeasure μ] {F : Set Ω}
    (F_closed : IsClosed F) {δs : ℕ → ℝ} (δs_pos : ∀ (n : ℕ), 0 < δs n)
    (δs_lim : Tendsto δs atTop (𝓝 0)) :
    Tendsto (fun n : ℕ ↦ ∫ ω, (thickenedIndicator (δs_pos n) F ω : ℝ) ∂μ) atTop (𝓝 (μ.real F)) := by
  -- we switch to the `lintegral` formulation and apply the corresponding lemma there
  let fs : ℕ → Ω → ℝ := fun n ω ↦ thickenedIndicator (δs_pos n) F ω
  have h := tendsto_lintegral_thickenedIndicator_of_isClosed μ F_closed δs_pos δs_lim
  have h_eq (n : ℕ) : ∫⁻ ω, thickenedIndicator (δs_pos n) F ω ∂μ
      = ENNReal.ofReal (∫ ω, fs n ω ∂μ) := by
    rw [lintegral_coe_eq_integral]
    exact integrable_thickenedIndicator F (δs_pos _)
  simp_rw [h_eq] at h
  rw [Measure.real_def]
  have h_eq' : (fun n ↦ ∫ ω, fs n ω ∂μ) = fun n ↦ (ENNReal.ofReal (∫ ω, fs n ω ∂μ)).toReal := by
    ext n
    rw [ENNReal.toReal_ofReal]
    exact integral_nonneg fun x ↦ by simp [fs]
  rwa [h_eq', ENNReal.tendsto_toReal_iff (by simp) (by finiteness)]

end MeasureTheory -- namespace

end auxiliary -- section

section HasOuterApproxClosed

/-- A type class for topological spaces in which the indicator functions of closed sets can be
approximated pointwise from above by a sequence of bounded continuous functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec701fcd87952986a28066d36ff3c0333ba15ffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
