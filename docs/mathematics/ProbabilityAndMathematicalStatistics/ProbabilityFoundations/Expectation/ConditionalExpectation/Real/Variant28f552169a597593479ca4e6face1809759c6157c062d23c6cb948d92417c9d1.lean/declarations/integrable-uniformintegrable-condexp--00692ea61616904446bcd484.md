# Integrable.uniformIntegrable_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bae70a0814cdbf4b3d04248c71387e38d48603e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 304,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df391aff-c180-0e8d-9865-80c21562929f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ff1b8e3-188e-312d-e655-668017395b90",
  "kind": "theorem",
  "lexical_name": "Integrable.uniformIntegrable_condExp",
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
  "slug": "integrable-uniformintegrable-condexp--00692ea61616904446bcd484",
  "source": {
    "blob": "5bae70a0814cdbf4b3d04248c71387e38d48603e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 304,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00692ea61616904446bcd4845b253a9fd3f5f306458aa9390416d73c9382262d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ff1b8e3-188e-312d-e655-668017395b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.uniformIntegrable_condExp {ι : Type*} [IsFiniteMeasure μ] {g : α → ℝ}
    (hint : Integrable g μ) {ℱ : ι → MeasurableSpace α} (hℱ : ∀ i, ℱ i ≤ m0) :
    UniformIntegrable (fun i => μ[g | ℱ i]) 1 μ := by
  let A : MeasurableSpace α := m0
  have hmeas : ∀ n, ∀ C, MeasurableSet {x | C ≤ ‖(μ[g|ℱ n]) x‖₊} := fun n C =>
    measurableSet_le measurable_const (stronglyMeasurable_condExp.mono (hℱ n)).measurable.nnnorm
  have hg : MemLp g 1 μ := memLp_one_iff_integrable.2 hint
  refine uniformIntegrable_of le_rfl one_ne_top
    (fun n => (stronglyMeasurable_condExp.mono (hℱ n)).aestronglyMeasurable) fun ε hε => ?_
  by_cases hne : eLpNorm g 1 μ = 0
  · rw [eLpNorm_eq_zero_iff one_ne_zero] at hne
    refine ⟨0, fun n => (le_of_eq <|
      (eLpNorm_eq_zero_iff one_ne_zero).2 ?_).trans zero_le⟩
    filter_upwards [condExp_congr_ae (m := ℱ n) hne] with x hx
    simp [hx]
  obtain ⟨δ, hδ, h⟩ := hg.eLpNorm_indicator_le le_rfl one_ne_top hε
  rcases eq_top_or_lt_top δ with rfl | hδ_top
  · refine ⟨0, fun i ↦ ?_⟩
    specialize h .univ
    simp only [zero_le, Set.ofPred_true, Set.indicator_univ, MeasurableSet.univ, le_top,
      forall_const] at h ⊢
    exact (eLpNorm_condExp_le_eLpNorm g le_rfl).trans h
  set C : ℝ≥0 := δ⁻¹.toNNReal * (eLpNorm g 1 μ).toNNReal with hC
  have hCpos : 0 < C := _root_.mul_pos (toNNReal_pos (ENNReal.inv_ne_zero.2 hδ_top.ne)
    (inv_ne_top.2 hδ.ne')) (toNNReal_pos hne hg.ne)
  have : ∀ n, μ {x : α | C ≤ ‖(μ[g|ℱ n]) x‖₊} ≤ δ := by
    intro n
    have : C ^ ENNReal.toReal 1 * μ {x | ENNReal.ofNNReal C ≤ ‖μ[g|ℱ n] x‖₊} ≤
        eLpNorm μ[g | ℱ n] 1 μ ^ ENNReal.toReal 1 := by
      rw [toReal_one, rpow_one]
      convert!
        mul_meas_ge_le_pow_eLpNorm μ one_ne_zero ENNReal.one_ne_top C
      · rw [ENNReal.toReal_one, ENNReal.rpow_one, enorm_eq_nnnorm]
    rw [toReal_one, rpow_one, mul_comm,
      ← ENNReal.le_div_iff_mul_le (Or.inl (coe_ne_zero.2 hCpos.ne'))
        (Or.inl coe_lt_top.ne)] at this
    simp_rw [coe_le_coe] at this
    refine this.trans ?_
    rw [ENNReal.div_le_iff_le_mul (.inl (coe_ne_zero.2 hCpos.ne')) (.inl coe_lt_top.ne),
      hC, ← toNNReal_mul, coe_toNNReal (mul_ne_top (inv_ne_top.2 hδ.ne') hg.ne),
      ← mul_assoc, ENNReal.mul_inv_cancel hδ.ne' hδ_top.ne, one_mul, rpow_one]
    exact eLpNorm_condExp_le_eLpNorm g (le_refl 1)
  refine ⟨C, fun n => le_trans ?_ (h {x : α | C ≤ ‖(μ[g|ℱ n]) x‖₊} (hmeas n C) (this n))⟩
  have hmeasℱ : MeasurableSet[ℱ n] {x : α | C ≤ ‖(μ[g|ℱ n]) x‖₊} :=
    @measurableSet_le _ _ _ _ _ (ℱ n) _ _ _ _ _ measurable_const
      (@Measurable.nnnorm _ _ _ _ _ (ℱ n) _ stronglyMeasurable_condExp.measurable)
  rw [← eLpNorm_congr_ae (condExp_indicator hint hmeasℱ)]
  exact eLpNorm_condExp_le_eLpNorm _ le_rfl

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bae70a0814cdbf4b3d04248c71387e38d48603e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
