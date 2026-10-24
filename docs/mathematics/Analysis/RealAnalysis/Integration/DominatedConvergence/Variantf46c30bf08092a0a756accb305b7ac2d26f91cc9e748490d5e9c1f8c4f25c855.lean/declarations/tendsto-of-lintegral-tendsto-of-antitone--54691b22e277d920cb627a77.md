# tendsto_of_lintegral_tendsto_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:947a0514-821a-dfa0-9de1-59ce8126c6f7",
  "kind": "lemma",
  "lexical_name": "tendsto_of_lintegral_tendsto_of_antitone",
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
  "slug": "tendsto-of-lintegral-tendsto-of-antitone--54691b22e277d920cb627a77",
  "source": {
    "blob": "b9eeeceba049f8dbd7dca85b6502d9a4b1d37a9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 213,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54691b22e277d920cb627a77cae7b533712a74718aef7c1a99299ea16cf35f35",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:947a0514-821a-dfa0-9de1-59ce8126c6f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_of_lintegral_tendsto_of_antitone {α : Type*} {mα : MeasurableSpace α}
    {f : ℕ → α → ℝ≥0∞} {F : α → ℝ≥0∞} {μ : Measure α}
    (hf_meas : ∀ n, AEMeasurable (f n) μ)
    (hf_tendsto : Tendsto (fun i ↦ ∫⁻ a, f i a ∂μ) atTop (𝓝 (∫⁻ a, F a ∂μ)))
    (hf_mono : ∀ᵐ a ∂μ, Antitone (fun i ↦ f i a))
    (h_bound : ∀ᵐ a ∂μ, ∀ i, F a ≤ f i a) (h0 : ∫⁻ a, f 0 a ∂μ ≠ ∞) :
    ∀ᵐ a ∂μ, Tendsto (fun i ↦ f i a) atTop (𝓝 (F a)) := by
  have h_int_finite : ∫⁻ a, F a ∂μ ≠ ∞ := by
    refine ((lintegral_mono_ae ?_).trans_lt h0.lt_top).ne
    filter_upwards [h_bound] with a ha using ha 0
  have h_exists : ∀ᵐ a ∂μ, ∃ l, Tendsto (fun i ↦ f i a) atTop (𝓝 l) := by
    filter_upwards [hf_mono] with a h_mono
    rcases _root_.tendsto_atTop_of_antitone h_mono with h | h
    · refine ⟨0, h.mono_right ?_⟩
      rw [OrderBot.atBot_eq]
      exact pure_le_nhds _
    · exact h
  classical
  let F' : α → ℝ≥0∞ := fun a ↦ if h : ∃ l, Tendsto (fun i ↦ f i a) atTop (𝓝 l)
    then h.choose else ∞
  have hF'_tendsto : ∀ᵐ a ∂μ, Tendsto (fun i ↦ f i a) atTop (𝓝 (F' a)) := by
    filter_upwards [h_exists] with a ha
    simp_rw [F', dite_eq_left ha]
    exact ha.choose_spec
  suffices F' =ᵐ[μ] F by
    filter_upwards [this, hF'_tendsto] with a h_eq h_tendsto using h_eq ▸ h_tendsto
  have hF'_le : F ≤ᵐ[μ] F' := by
    filter_upwards [h_bound, hF'_tendsto] with a h_le h_tendsto
    exact ge_of_tendsto' h_tendsto (fun m ↦ h_le _)
  suffices ∫⁻ a, F' a ∂μ = ∫⁻ a, F a ∂μ by
    refine (ae_eq_of_ae_le_of_lintegral_le hF'_le h_int_finite ?_ this.le).symm
    exact ENNReal.aemeasurable_of_tendsto hf_meas hF'_tendsto
  refine tendsto_nhds_unique ?_ hf_tendsto
  exact lintegral_tendsto_of_tendsto_of_antitone hf_meas hf_mono h0 hF'_tendsto

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variantf46c30bf08092a0a756accb305b7ac2d26f91cc9e748490d5e9c1f8c4f25c855.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9eeeceba049f8dbd7dca85b6502d9a4b1d37a9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
