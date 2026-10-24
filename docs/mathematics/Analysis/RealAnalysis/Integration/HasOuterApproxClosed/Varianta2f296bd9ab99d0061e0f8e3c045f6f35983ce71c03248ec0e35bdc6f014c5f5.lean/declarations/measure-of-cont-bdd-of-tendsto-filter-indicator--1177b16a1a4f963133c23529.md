# measure_of_cont_bdd_of_tendsto_filter_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4cf1c91-2f55-9ad5-e62f-4bcc4ccbdb76",
  "kind": "theorem",
  "lexical_name": "measure_of_cont_bdd_of_tendsto_filter_indicator",
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
  "slug": "measure-of-cont-bdd-of-tendsto-filter-indicator--1177b16a1a4f963133c23529",
  "source": {
    "blob": "ec701fcd87952986a28066d36ff3c0333ba15ffb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1177b16a1a4f963133c235298cc5648d4d69b81c7aadc997482b4695fbdb3ea5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4cf1c91-2f55-9ad5-e62f-4bcc4ccbdb76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_of_cont_bdd_of_tendsto_filter_indicator {ι : Type*} {L : Filter ι}
    [L.IsCountablyGenerated] (μ : Measure Ω)
    [IsFiniteMeasure μ] {c : ℝ≥0} {E : Set Ω} (E_mble : MeasurableSet E) (fs : ι → Ω →ᵇ ℝ≥0)
    (fs_bdd : ∀ᶠ i in L, ∀ᵐ ω : Ω ∂μ, fs i ω ≤ c)
    (fs_lim : ∀ᵐ ω ∂μ, Tendsto (fun i ↦ fs i ω) L (𝓝 (indicator E (fun _ ↦ (1 : ℝ≥0)) ω))) :
    Tendsto (fun n ↦ lintegral μ fun ω ↦ fs n ω) L (𝓝 (μ E)) := by
  convert! tendsto_lintegral_nn_filter_of_le_const μ fs_bdd fs_lim
  have aux : ∀ ω, indicator E (fun _ ↦ (1 : ℝ≥0∞)) ω = ↑(indicator E (fun _ ↦ (1 : ℝ≥0)) ω) :=
    fun ω ↦ by simp only [ENNReal.coe_indicator, ENNReal.coe_one]
  simp_rw [← aux, lintegral_indicator E_mble]
  simp only [lintegral_one, Measure.restrict_apply, MeasurableSet.univ, univ_inter]

/-- If a sequence of bounded continuous functions tends to the indicator of a measurable set and
the functions are uniformly bounded, then their integrals against a finite measure tend to the
measure of the set.

A similar result with more general assumptions is
`MeasureTheory.measure_of_cont_bdd_of_tendsto_filter_indicator`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HasOuterApproxClosed/Varianta2f296bd9ab99d0061e0f8e3c045f6f35983ce71c03248ec0e35bdc6f014c5f5.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec701fcd87952986a28066d36ff3c0333ba15ffb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
