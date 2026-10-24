# integral_le_liminf_integral_of_forall_isOpen_measure_le_liminf_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09c0489b-3d04-e5e6-3a50-e22e90b801ce",
  "kind": "lemma",
  "lexical_name": "integral_le_liminf_integral_of_forall_isOpen_measure_le_liminf_measure",
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
  "slug": "integral-le-liminf-integral-of-forall-isopen-measure-le-liminf-measure--b64f4a5c5e51dee9e75c06a5",
  "source": {
    "blob": "14bfefe7634f73bf560897022dc579d3b9efc875",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 491,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b64f4a5c5e51dee9e75c06a5798afddb0138bb647064c811b592652553355e67",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09c0489b-3d04-e5e6-3a50-e22e90b801ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_le_liminf_integral_of_forall_isOpen_measure_le_liminf_measure
    {μ : Measure Ω} {μs : ℕ → Measure Ω} [∀ i, IsProbabilityMeasure (μs i)]
    {f : Ω →ᵇ ℝ} (f_nn : 0 ≤ f)
    (h_opens : ∀ G, IsOpen G → μ G ≤ atTop.liminf (fun i ↦ μs i G)) :
    ∫ x, (f x) ∂μ ≤ atTop.liminf (fun i ↦ ∫ x, (f x) ∂ (μs i)) := by
  have same := lintegral_le_liminf_lintegral_of_forall_isOpen_measure_le_liminf_measure
                  f.continuous f_nn h_opens
  rw [@integral_eq_lintegral_of_nonneg_ae Ω _ μ f (Eventually.of_forall f_nn)
        f.continuous.measurable.aestronglyMeasurable]
  convert ENNReal.toReal_mono ?_ same
  · simp only [fun i ↦ @integral_eq_lintegral_of_nonneg_ae Ω _ (μs i) f (Eventually.of_forall f_nn)
                        f.continuous.measurable.aestronglyMeasurable]
    let g := BoundedContinuousFunction.comp _ Real.lipschitzWith_toNNReal f
    have bound : ∀ i, ∫⁻ x, ENNReal.ofReal (f x) ∂(μs i) ≤ nndist 0 g := fun i ↦ by
      simpa only [coe_nnreal_ennreal_nndist, measure_univ, mul_one, ge_iff_le] using
            BoundedContinuousFunction.lintegral_le_edist_mul (μ := μs i) g
    apply ENNReal.liminf_toReal_eq ENNReal.coe_ne_top (Eventually.of_forall bound)
  · apply ne_of_lt
    have obs := fun (i : ℕ) ↦ @BoundedContinuousFunction.lintegral_nnnorm_le Ω _ _ (μs i) ℝ _ f
    simp only [measure_univ, mul_one] at obs
    apply lt_of_le_of_lt _ (show (‖f‖₊ : ℝ≥0∞) < ∞ from ENNReal.coe_lt_top)
    apply liminf_le_of_le
    · refine ⟨0, .of_forall (by simp only [ge_iff_le, zero_le, forall_const])⟩
    · intro x hx
      obtain ⟨i, hi⟩ := hx.exists
      apply le_trans hi
      convert obs i with x
      have aux := ENNReal.ofReal_eq_coe_nnreal (f_nn x)
      simp only [ContinuousMap.toFun_eq_coe, BoundedContinuousFunction.coe_toContinuousMap] at aux
      rw [aux]
      congr
      exact (Real.norm_of_nonneg (f_nn x)).symm

/-- One implication of the portmanteau theorem:
If for all open sets G we have the liminf condition `μ(G) ≤ liminf μsₙ(G)`, then the measures
μsₙ converge weakly to the measure μ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bfefe7634f73bf560897022dc579d3b9efc875` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
