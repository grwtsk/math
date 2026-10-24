# FiniteMeasure.limsup_measure_closed_le_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f82d04c3-b28b-0eca-86c1-3a3ac1231d42",
  "kind": "theorem",
  "lexical_name": "FiniteMeasure.limsup_measure_closed_le_of_tendsto",
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
  "slug": "finitemeasure-limsup-measure-closed-le-of-tendsto--7257cbe67c28139e4607402a",
  "source": {
    "blob": "239be2dfad1189f9f5eb45f346e635f2dfbd5930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 353,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7257cbe67c28139e4607402abce3cc4587d6fceb56630853bc276474fa406ec4",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f82d04c3-b28b-0eca-86c1-3a3ac1231d42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteMeasure.limsup_measure_closed_le_of_tendsto {Ω ι : Type*} {L : Filter ι}
    [MeasurableSpace Ω] [PseudoEMetricSpace Ω] [OpensMeasurableSpace Ω] {μ : FiniteMeasure Ω}
    {μs : ι → FiniteMeasure Ω} (μs_lim : Tendsto μs L (𝓝 μ)) {F : Set Ω} (F_closed : IsClosed F) :
    (L.limsup fun i => (μs i : Measure Ω) F) ≤ (μ : Measure Ω) F := by
  rcases L.eq_or_neBot with rfl | hne
  · simp only [limsup_bot, bot_le]
  apply ENNReal.le_of_forall_pos_le_add
  intro ε ε_pos _
  let δs := fun n : ℕ => (1 : ℝ) / (n + 1)
  have δs_pos : ∀ n, 0 < δs n := fun n => Nat.one_div_pos_of_nat
  have δs_lim : Tendsto δs atTop (𝓝 0) := tendsto_one_div_add_atTop_nhds_0_nat
  have key₁ :=
    tendsto_lintegral_thickenedIndicator_of_isClosed (μ : Measure Ω) F_closed δs_pos δs_lim
  have room₁ : (μ : Measure Ω) F < (μ : Measure Ω) F + ε / 2 := by
    apply
      ENNReal.lt_add_right (measure_lt_top (μ : Measure Ω) F).ne
        (ENNReal.div_pos_iff.mpr ⟨(ENNReal.coe_pos.mpr ε_pos).ne.symm, ENNReal.two_ne_top⟩).ne.symm
  rcases eventually_atTop.mp (eventually_lt_of_tendsto_lt room₁ key₁) with ⟨M, hM⟩
  have key₂ :=
    FiniteMeasure.tendsto_iff_forall_lintegral_tendsto.mp μs_lim (thickenedIndicator (δs_pos M) F)
  have room₂ :
    (lintegral (μ : Measure Ω) fun a => thickenedIndicator (δs_pos M) F a) <
      (lintegral (μ : Measure Ω) fun a => thickenedIndicator (δs_pos M) F a) + ε / 2 := by
    apply
      ENNReal.lt_add_right (lintegral_lt_top_of_boundedContinuous_to_nnreal (μ : Measure Ω) _).ne
        (ENNReal.div_pos_iff.mpr ⟨(ENNReal.coe_pos.mpr ε_pos).ne.symm, ENNReal.two_ne_top⟩).ne.symm
  have ev_near := Eventually.mono (eventually_lt_of_tendsto_lt room₂ key₂) fun n => le_of_lt
  have ev_near' := Eventually.mono ev_near fun n => le_trans
    (measure_le_lintegral_thickenedIndicator (μs n : Measure Ω) F_closed.measurableSet (δs_pos M))
  apply (Filter.limsup_le_limsup ev_near').trans
  rw [limsup_const]
  apply le_trans (add_le_add (hM M rfl.le).le (le_refl (ε / 2 : ℝ≥0∞)))
  simp only [add_assoc, ENNReal.add_halves, le_refl]
#align measure_theory.finite_measure.limsup_measure_closed_le_of_tendsto MeasureTheory.FiniteMeasure.limsup_measure_closed_le_of_tendsto

/-- One implication of the portmanteau theorem:
Weak convergence of probability measures implies that the limsup of the measures of any closed
set is at most the measure of the closed set under the limit probability measure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Variant91eb7e4b036cf43dd79b2e46f8ad456bbfb147eb499892d2b9a8d8a3b44b29e8.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `239be2dfad1189f9f5eb45f346e635f2dfbd5930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
