# integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a682b2461766e00d3d9b98dd4b3428cdc7bae98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fb81ed3-60a7-e928-5cde-6d67737cfb64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4f18b8c-a430-fe27-1a3f-6f1fedc352b3",
  "kind": "theorem",
  "lexical_name": "integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable",
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
  "slug": "integral-bilinear-haslinederivat-right-eq-neg-left-of-integrable--c2eeca9463cfeabbaf465c09",
  "source": {
    "blob": "9a682b2461766e00d3d9b98dd4b3428cdc7bae98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2eeca9463cfeabbaf465c091da1e58923851a57b9c392e96d4990b1dea5f6c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4f18b8c-a430-fe27-1a3f-6f1fedc352b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable
    {f f' : E → F} {g g' : E → G} {v : E} {B : F →L[ℝ] G →L[ℝ] W}
    (hf'g : Integrable (fun x ↦ B (f' x) (g x)) μ) (hfg' : Integrable (fun x ↦ B (f x) (g' x)) μ)
    (hfg : Integrable (fun x ↦ B (f x) (g x)) μ)
    (hf : ∀ x, HasLineDerivAt ℝ f (f' x) x v) (hg : ∀ x, HasLineDerivAt ℝ g (g' x) x v) :
    ∫ x, B (f x) (g' x) ∂μ = - ∫ x, B (f' x) (g x) ∂μ := by
  by_cases hW : CompleteSpace W; swap
  · simp [integral, hW]
  rcases eq_or_ne v 0 with rfl|hv
  · have Hf' x : f' x = 0 := by
      simpa [(hasLineDerivAt_zero (f := f) (x := x)).lineDeriv] using (hf x).lineDeriv.symm
    have Hg' x : g' x = 0 := by
      simpa [(hasLineDerivAt_zero (f := g) (x := x)).lineDeriv] using (hg x).lineDeriv.symm
    simp [Hf', Hg']
  have : Nontrivial E := nontrivial_iff.2 ⟨v, 0, hv⟩
  let n := finrank ℝ E
  let E' := Fin (n - 1) → ℝ
  obtain ⟨L, hL⟩ : ∃ L : E ≃L[ℝ] (E' × ℝ), L v = (0, 1) := by
    have : finrank ℝ (E' × ℝ) = n := by simpa [this, E'] using Nat.sub_add_cancel finrank_pos
    have L₀ : E ≃L[ℝ] (E' × ℝ) := (ContinuousLinearEquiv.ofFinrankEq this).symm
    obtain ⟨M, hM⟩ : ∃ M : (E' × ℝ) ≃L[ℝ] (E' × ℝ), M (L₀ v) = (0, 1) := by
      apply SeparatingDual.exists_continuousLinearEquiv_apply_eq
      · simpa using hv
      · simp
    exact ⟨L₀.trans M, by simp [hM]⟩
  let ν := Measure.map L μ
  suffices H : ∫ (x : E' × ℝ), (B (f (L.symm x))) (g' (L.symm x)) ∂ν =
      -∫ (x : E' × ℝ), (B (f' (L.symm x))) (g (L.symm x)) ∂ν by
    have : μ = Measure.map L.symm ν := by
      simp [ν, Measure.map_map L.symm.continuous.measurable L.continuous.measurable]
    have hL : IsClosedEmbedding L.symm := L.symm.toHomeomorph.isClosedEmbedding
    simpa [this, hL.integral_map] using H
  have L_emb : MeasurableEmbedding L := L.toHomeomorph.measurableEmbedding
  apply integral_bilinear_hasLineDerivAt_right_eq_neg_left_of_integrable_aux2
  · simpa [ν, L_emb.integrable_map_iff, Function.comp_def] using hf'g
  · simpa [ν, L_emb.integrable_map_iff, Function.comp_def] using hfg'
  · simpa [ν, L_emb.integrable_map_iff, Function.comp_def] using hfg
  · intro x
    have : f = (f ∘ L.symm) ∘ (L : E →ₗ[ℝ] (E' × ℝ)) := by ext y; simp
    specialize hf (L.symm x)
    rw [this] at hf
    convert hf.of_comp using 1
    · simp
    · simp [← hL]
  · intro x
    have : g = (g ∘ L.symm) ∘ (L : E →ₗ[ℝ] (E' × ℝ)) := by ext y; simp
    specialize hg (L.symm x)
    rw [this] at hg
    convert hg.of_comp using 1
    · simp
    · simp [← hL]

/-- **Integration by parts for Fréchet derivatives**
Version with a general bilinear form `B`.
If `B f g` is integrable, as well as `B f' g` and `B f g'` where `f'` and `g'` are derivatives
of `f` and `g` in a given direction `v`, then `∫ B f g' = - ∫ B f' g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationByParts/Variant4a18261bd535099251f962270be7c1da84eef2dc1586a200a4c58ed20028e711.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a682b2461766e00d3d9b98dd4b3428cdc7bae98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
