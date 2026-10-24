# Integrable.tendsto_ae_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10d4be14-b672-a3ed-f7d6-94c28328b6b7",
  "kind": "theorem",
  "lexical_name": "Integrable.tendsto_ae_condExp",
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
  "slug": "integrable-tendsto-ae-condexp--5e2b276110951561d035216f",
  "source": {
    "blob": "238d5ecb63710a9b1c7893e86411c34b930ad73c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 370,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant530bdead48975d6edea0b8b8b20239bb0e53baa3eadb81467cfe2c5ae9ec3125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e2b276110951561d035216f42a29fc89cbd0cf601d19b3f8dc6501340b33656",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant530bdead48975d6edea0b8b8b20239bb0e53baa3eadb81467cfe2c5ae9ec3125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10d4be14-b672-a3ed-f7d6-94c28328b6b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.tendsto_ae_condExp (hg : Integrable g μ)
    (hgmeas : StronglyMeasurable[⨆ n, ℱ n] g) :
    ∀ᵐ x ∂μ, Tendsto (fun n => (μ[g | ℱ n]) x) atTop (𝓝 (g x)) := by
  have hle : ⨆ n, ℱ n ≤ m0 := sSup_le fun m ⟨n, hn⟩ => hn ▸ ℱ.le _
  have hunif : UniformIntegrable (fun n => μ[g | ℱ n]) 1 μ :=
    hg.uniformIntegrable_condExp_filtration
  obtain ⟨R, hR⟩ := hunif.2
  have hlimint : Integrable (ℱ.limitProcess (fun n => μ[g | ℱ n]) μ) μ :=
    (memLp_limitProcess_of_eLpNorm_bdd hunif.aestronglyMeasurable hR).integrable le_rfl
  suffices g =ᵐ[μ] ℱ.limitProcess (fun n x => (μ[g | ℱ n]) x) μ by
    filter_upwards [this, (martingale_condExp g ℱ μ).submartingale.ae_tendsto_limitProcess hR] with
      x heq ht
    rwa [heq]
  have : ∀ n s, MeasurableSet[ℱ n] s →
      ∫ x in s, g x ∂μ = ∫ x in s, ℱ.limitProcess (fun n x => (μ[g | ℱ n]) x) μ x ∂μ := by
    intro n s hs
    rw [← setIntegral_condExp (ℱ.le n) hg hs, ← setIntegral_condExp (ℱ.le n) hlimint hs]
    refine setIntegral_congr_ae (ℱ.le _ _ hs) ?_
    filter_upwards [(martingale_condExp g ℱ μ).ae_eq_condExp_limitProcess hunif n] with x hx _
    rw [hx]
  refine ae_eq_of_forall_setIntegral_eq_of_sigmaFinite' hle (fun s _ _ => hg.integrableOn)
    (fun s _ _ => hlimint.integrableOn) (fun s hs _ => ?_) hgmeas.aestronglyMeasurable
    stronglyMeasurable_limitProcess.aestronglyMeasurable
  have hpi : IsPiSystem {s | ∃ n, MeasurableSet[ℱ n] s} := by
    rw [Set.ofPred_exists]
    exact isPiSystem_iUnion_of_monotone _ (fun n ↦ (ℱ n).isPiSystem_measurableSet) fun _ _ ↦ ℱ.mono
  induction s, hs
    using MeasurableSpace.induction_on_inter (MeasurableSpace.measurableSpace_iSup_eq ℱ) hpi with
  | empty =>
    simp only [Measure.restrict_empty, integral_zero_measure]
  | basic s hs =>
    rcases hs with ⟨n, hn⟩
    exact this n _ hn
  | compl t htmeas ht =>
    have hgeq := @setIntegral_compl _ _ (⨆ n, ℱ n) _ _ _ _ _ htmeas (hg.trim hle hgmeas)
    have hheq := @setIntegral_compl _ _ (⨆ n, ℱ n) _ _ _ _ _ htmeas
      (hlimint.trim hle stronglyMeasurable_limitProcess)
    rw [setIntegral_trim hle hgmeas htmeas.compl,
      setIntegral_trim hle stronglyMeasurable_limitProcess htmeas.compl, hgeq, hheq, ←
      setIntegral_trim hle hgmeas htmeas, ←
      setIntegral_trim hle stronglyMeasurable_limitProcess htmeas, ← integral_trim hle hgmeas, ←
      integral_trim hle stronglyMeasurable_limitProcess, ← setIntegral_univ,
      this 0 _ MeasurableSet.univ, setIntegral_univ, ht (measure_lt_top _ _)]
  | iUnion f hf hfmeas heq =>
    rw [integral_iUnion (fun n => hle _ (hfmeas n)) hf hg.integrableOn,
      integral_iUnion (fun n => hle _ (hfmeas n)) hf hlimint.integrableOn]
    exact tsum_congr fun n => heq _ (measure_lt_top _ _)

/-- Part c of the **L¹ martingale convergence theorem**: Given an integrable function `g` which
is measurable with respect to `⨆ n, ℱ n` where `ℱ` is a filtration, the martingale defined by
`𝔼[g | ℱ n]` converges in L¹ to `g`.

This martingale also converges to `g` almost everywhere and this result is provided by
`MeasureTheory.Integrable.tendsto_ae_condExp` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant530bdead48975d6edea0b8b8b20239bb0e53baa3eadb81467cfe2c5ae9ec3125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant530bdead48975d6edea0b8b8b20239bb0e53baa3eadb81467cfe2c5ae9ec3125.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `238d5ecb63710a9b1c7893e86411c34b930ad73c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
