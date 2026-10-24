# tendsto_testAgainstNN_of_tendsto_normalize_testAgainstNN_of_tendsto_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0716c2cc-482b-a9e9-6e47-94776bc3fca9",
  "kind": "theorem",
  "lexical_name": "tendsto_testAgainstNN_of_tendsto_normalize_testAgainstNN_of_tendsto_mass",
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
  "slug": "tendsto-testagainstnn-of-tendsto-normalize-testagainstnn-of-tendsto-mass--761bc35e1738b79926868d4c",
  "source": {
    "blob": "8d46b47d5bb5db46fe2deda3c4ab94a407caf6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 423,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:761bc35e1738b79926868d4c4f6ff597d189e7bc302b09110ee4ee2b7c9ac645",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0716c2cc-482b-a9e9-6e47-94776bc3fca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_testAgainstNN_of_tendsto_normalize_testAgainstNN_of_tendsto_mass {γ : Type*}
    {F : Filter γ} {μs : γ → FiniteMeasure Ω}
    (μs_lim : Tendsto (fun i => (μs i).normalize) F (𝓝 μ.normalize))
    (mass_lim : Tendsto (fun i => (μs i).mass) F (𝓝 μ.mass)) (f : Ω →ᵇ ℝ≥0) :
    Tendsto (fun i => (μs i).testAgainstNN f) F (𝓝 (μ.testAgainstNN f)) := by
  by_cases h_mass : μ.mass = 0
  · simp only [μ.mass_zero_iff.mp h_mass, zero_testAgainstNN_apply, zero_mass,
      eq_self_iff_true] at *
    exact tendsto_zero_testAgainstNN_of_tendsto_zero_mass mass_lim f
  simp_rw [fun i => (μs i).testAgainstNN_eq_mass_mul f, μ.testAgainstNN_eq_mass_mul f]
  rw [ProbabilityMeasure.tendsto_nhds_iff_toFiniteMeasure_tendsto_nhds] at μs_lim
  rw [tendsto_iff_forall_testAgainstNN_tendsto] at μs_lim
  have lim_pair :
    Tendsto (fun i => (⟨(μs i).mass, (μs i).normalize.toFiniteMeasure.testAgainstNN f⟩ : ℝ≥0 × ℝ≥0))
      F (𝓝 ⟨μ.mass, μ.normalize.toFiniteMeasure.testAgainstNN f⟩) :=
    (Prod.tendsto_iff _ _).mpr ⟨mass_lim, μs_lim f⟩
  exact tendsto_mul.comp lim_pair
#align measure_theory.finite_measure.tendsto_test_against_nn_of_tendsto_normalize_test_against_nn_of_tendsto_mass MeasureTheory.FiniteMeasure.tendsto_testAgainstNN_of_tendsto_normalize_testAgainstNN_of_tendsto_mass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d46b47d5bb5db46fe2deda3c4ab94a407caf6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
