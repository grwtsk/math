# Integrable.tendsto_ae_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eee61c90e22fc45ce28b0e191e341db83914e3f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eeaa8046-363e-4084-339f-4da16b3921f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2346a196-7388-c9a5-6f07-9db46e8533d8",
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
  "slug": "integrable-tendsto-ae-condexp--246c3c1dc6dbec69dc6ab02b",
  "source": {
    "blob": "eee61c90e22fc45ce28b0e191e341db83914e3f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 365,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:246c3c1dc6dbec69dc6ab02b7bb4fc4b12a0f71bff17bf63f55774566f2581ac",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2346a196-7388-c9a5-6f07-9db46e8533d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.tendsto_ae_condExp (hg : Integrable g μ)
    (hgmeas : StronglyMeasurable[⨆ n, ℱ n] g) :
    ∀ᵐ x ∂μ, Tendsto (fun n => (μ[g|ℱ n]) x) atTop (𝓝 (g x)) := by
  have hle : ⨆ n, ℱ n ≤ m0 := sSup_le fun m ⟨n, hn⟩ => hn ▸ ℱ.le _
  have hunif : UniformIntegrable (fun n => μ[g|ℱ n]) 1 μ :=
    hg.uniformIntegrable_condExp_filtration
  obtain ⟨R, hR⟩ := hunif.2.2
  have hlimint : Integrable (ℱ.limitProcess (fun n => μ[g|ℱ n]) μ) μ :=
    (memLp_limitProcess_of_eLpNorm_bdd hunif.1 hR).integrable le_rfl
  suffices g =ᵐ[μ] ℱ.limitProcess (fun n x => (μ[g|ℱ n]) x) μ by
    filter_upwards [this, (martingale_condExp g ℱ μ).submartingale.ae_tendsto_limitProcess hR] with
      x heq ht
    rwa [heq]
  have : ∀ n s, MeasurableSet[ℱ n] s →
      ∫ x in s, g x ∂μ = ∫ x in s, ℱ.limitProcess (fun n x => (μ[g|ℱ n]) x) μ x ∂μ := by
    intro n s hs
    rw [← setIntegral_condExp (ℱ.le n) hg hs, ← setIntegral_condExp (ℱ.le n) hlimint hs]
    refine setIntegral_congr_ae (ℱ.le _ _ hs) ?_
    filter_upwards [(martingale_condExp g ℱ μ).ae_eq_condExp_limitProcess hunif n] with x hx _
    rw [hx]
  refine ae_eq_of_forall_setIntegral_eq_of_sigmaFinite' hle (fun s _ _ => hg.integrableOn)
    (fun s _ _ => hlimint.integrableOn) (fun s hs _ => ?_) hgmeas.aestronglyMeasurable
    stronglyMeasurable_limitProcess.aestronglyMeasurable
  have hpi : IsPiSystem {s | ∃ n, MeasurableSet[ℱ n] s} := by
    rw [Set.setOf_exists]
    exact isPiSystem_iUnion_of_monotone _ (fun n ↦ (ℱ n).isPiSystem_measurableSet) fun _ _ ↦ ℱ.mono
  induction s, hs
    using MeasurableSpace.induction_on_inter (MeasurableSpace.measurableSpace_iSup_eq ℱ) hpi with
  | empty =>
    simp only [measure_empty, Measure.restrict_empty, integral_zero_measure]
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

@[deprecated (since := "2025-01-21")]
alias Integrable.tendsto_ae_condexp := Integrable.tendsto_ae_condExp

/-- Part c of the **L¹ martingale convergence theorem**: Given an integrable function `g` which
is measurable with respect to `⨆ n, ℱ n` where `ℱ` is a filtration, the martingale defined by
`𝔼[g | ℱ n]` converges in L¹ to `g`.

This martingale also converges to `g` almost everywhere and this result is provided by
`MeasureTheory.Integrable.tendsto_ae_condExp` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Convergence/Variant2d3e3fa3c576c2fc0c88d8d025b8c58ef9742b6ba942c90f911f93fbc324b548.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eee61c90e22fc45ce28b0e191e341db83914e3f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
