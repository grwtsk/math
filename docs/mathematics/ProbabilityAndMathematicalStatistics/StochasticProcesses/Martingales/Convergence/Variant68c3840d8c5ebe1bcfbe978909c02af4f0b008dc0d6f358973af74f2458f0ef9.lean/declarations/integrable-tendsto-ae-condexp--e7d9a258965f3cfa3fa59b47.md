# Integrable.tendsto_ae_condexp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e72e301-8351-bc5d-5258-e1c26ceb09d6",
  "kind": "theorem",
  "lexical_name": "Integrable.tendsto_ae_condexp",
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
  "slug": "integrable-tendsto-ae-condexp--e7d9a258965f3cfa3fa59b47",
  "source": {
    "blob": "2b11d6d178c04ff0cf0a9d71511894b86008c39d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 380,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7d9a258965f3cfa3fa59b47041182039d33ead1f888784812b6e508b380a93d",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e72e301-8351-bc5d-5258-e1c26ceb09d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.tendsto_ae_condexp (hg : Integrable g μ)
    (hgmeas : StronglyMeasurable[⨆ n, ℱ n] g) :
    ∀ᵐ x ∂μ, Tendsto (fun n => (μ[g|ℱ n]) x) atTop (𝓝 (g x)) := by
  have hle : ⨆ n, ℱ n ≤ m0 := sSup_le fun m ⟨n, hn⟩ => hn ▸ ℱ.le _
  have hunif : UniformIntegrable (fun n => μ[g|ℱ n]) 1 μ :=
    hg.uniformIntegrable_condexp_filtration
  obtain ⟨R, hR⟩ := hunif.2.2
  have hlimint : Integrable (ℱ.limitProcess (fun n => μ[g|ℱ n]) μ) μ :=
    (memℒp_limitProcess_of_snorm_bdd hunif.1 hR).integrable le_rfl
  suffices g =ᵐ[μ] ℱ.limitProcess (fun n x => (μ[g|ℱ n]) x) μ by
    filter_upwards [this, (martingale_condexp g ℱ μ).submartingale.ae_tendsto_limitProcess hR] with
      x heq ht
    rwa [heq]
  have : ∀ n s, MeasurableSet[ℱ n] s →
      ∫ x in s, g x ∂μ = ∫ x in s, ℱ.limitProcess (fun n x => (μ[g|ℱ n]) x) μ x ∂μ := by
    intro n s hs
    rw [← set_integral_condexp (ℱ.le n) hg hs, ← set_integral_condexp (ℱ.le n) hlimint hs]
    refine' set_integral_congr_ae (ℱ.le _ _ hs) _
    filter_upwards [(martingale_condexp g ℱ μ).ae_eq_condexp_limitProcess hunif n] with x hx _
    rw [hx]
  refine' ae_eq_of_forall_set_integral_eq_of_sigmaFinite' hle (fun s _ _ => hg.integrableOn)
    (fun s _ _ => hlimint.integrableOn) (fun s hs => _) hgmeas.aeStronglyMeasurable'
    stronglyMeasurable_limitProcess.aeStronglyMeasurable'
  apply @MeasurableSpace.induction_on_inter _ _ _ (⨆ n, ℱ n)
    (MeasurableSpace.measurableSpace_iSup_eq ℱ) _ _ _ _ _ _ hs
  · rintro s ⟨n, hs⟩ t ⟨m, ht⟩ -
    by_cases hnm : n ≤ m
    · exact ⟨m, (ℱ.mono hnm _ hs).inter ht⟩
    · exact ⟨n, hs.inter (ℱ.mono (not_le.1 hnm).le _ ht)⟩
  · simp only [measure_empty, WithTop.zero_lt_top, Measure.restrict_empty, integral_zero_measure,
      forall_true_left]
  · rintro t ⟨n, ht⟩ -
    exact this n _ ht
  · rintro t htmeas ht -
    have hgeq := @integral_add_compl _ _ (⨆ n, ℱ n) _ _ _ _ _ htmeas (hg.trim hle hgmeas)
    have hheq := @integral_add_compl _ _ (⨆ n, ℱ n) _ _ _ _ _ htmeas
      (hlimint.trim hle stronglyMeasurable_limitProcess)
    rw [add_comm, ← eq_sub_iff_add_eq] at hgeq hheq
    rw [set_integral_trim hle hgmeas htmeas.compl,
      set_integral_trim hle stronglyMeasurable_limitProcess htmeas.compl, hgeq, hheq, ←
      set_integral_trim hle hgmeas htmeas, ←
      set_integral_trim hle stronglyMeasurable_limitProcess htmeas, ← integral_trim hle hgmeas, ←
      integral_trim hle stronglyMeasurable_limitProcess, ← integral_univ,
      this 0 _ MeasurableSet.univ, integral_univ, ht (measure_lt_top _ _)]
  · rintro f hf hfmeas heq -
    rw [integral_iUnion (fun n => hle _ (hfmeas n)) hf hg.integrableOn,
      integral_iUnion (fun n => hle _ (hfmeas n)) hf hlimint.integrableOn]
    exact tsum_congr fun n => heq _ (measure_lt_top _ _)
#align measure_theory.integrable.tendsto_ae_condexp MeasureTheory.Integrable.tendsto_ae_condexp

/-- Part c of the **L¹ martingale convergence theorem**: Given an integrable function `g` which
is measurable with respect to `⨆ n, ℱ n` where `ℱ` is a filtration, the martingale defined by
`𝔼[g | ℱ n]` converges in L¹ to `g`.

This martingale also converges to `g` almost everywhere and this result is provided by
`MeasureTheory.Integrable.tendsto_ae_condexp` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant68c3840d8c5ebe1bcfbe978909c02af4f0b008dc0d6f358973af74f2458f0ef9.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b11d6d178c04ff0cf0a9d71511894b86008c39d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
