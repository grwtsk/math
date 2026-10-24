# autocorr_deriv_facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1703,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ea2cd5c-2ed9-cf28-4523-434aa1ba3470",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40c5097b-1c1e-00a8-a568-c51afe28d382",
  "kind": "theorem",
  "lexical_name": "autocorr_deriv_facts",
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
  "slug": "autocorr-deriv-facts--348ba93fc2bb26e4933151ee",
  "source": {
    "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1749,
    "line": 1703,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:348ba93fc2bb26e4933151ee1ecb32c6d16ebfaa438024592642dc6a7549c583",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40c5097b-1c1e-00a8-a568-c51afe28d382`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1703–1749.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem autocorr_deriv_facts (hC : ContDiff ℝ 1 h) (hcs : HasCompactSupport h)
    (heven : ∀ x : ℝ, h (-x) = h x) (hb : ∀ u : ℝ, |h u| ≤ 1)
    (hI : ∫ u, |deriv h u| ≤ 2) :
    Differentiable ℝ (Params.autocorr h) ∧ Continuous (deriv (Params.autocorr h))
      ∧ ∀ y : ℝ, |deriv (Params.autocorr h) y| ≤ 2 := by
  have hloc : MeasureTheory.LocallyIntegrable h MeasureTheory.volume :=
    (hC.continuous.integrable_of_hasCompactSupport hcs).locallyIntegrable
  have hD : ∀ y : ℝ, HasDerivAt (Params.autocorr h)
      ((h ⋆[ContinuousLinearMap.mul ℝ ℝ] deriv h) y) y := by
    intro y
    rw [autocorr_eq_conv heven]
    exact HasCompactSupport.hasDerivAt_convolution_right _ hloc hcs hC y
  have hdiff : Differentiable ℝ (Params.autocorr h) := fun y => (hD y).differentiableAt
  have hderiv_eq : deriv (Params.autocorr h) = h ⋆[ContinuousLinearMap.mul ℝ ℝ] deriv h :=
    funext fun y => (hD y).deriv
  have hcs' : HasCompactSupport (deriv h) := hcs.deriv
  have hcont' : Continuous (deriv h) := hC.continuous_deriv le_rfl
  refine ⟨hdiff, ?_, ?_⟩
  · rw [hderiv_eq]
    exact hcs'.continuous_convolution_right _ hloc hcont'
  · intro y
    rw [hderiv_eq]
    show |∫ t, h t * deriv h (y - t)| ≤ 2
    have hint' : MeasureTheory.Integrable (fun t => deriv h (y - t)) := by
      have h1 : MeasureTheory.Integrable (deriv h) :=
        hcont'.integrable_of_hasCompactSupport hcs'
      have h2 := h1.comp_sub_left y
      exact h2
    calc |∫ t, h t * deriv h (y - t)| ≤ ∫ t, |h t * deriv h (y - t)| :=
          MeasureTheory.abs_integral_le_integral_abs
      _ ≤ ∫ t, |deriv h (y - t)| := by
          apply MeasureTheory.integral_mono_of_nonneg
            (MeasureTheory.ae_of_all _ fun t => abs_nonneg _) hint'.abs
            (MeasureTheory.ae_of_all _ fun t => ?_)
          show |h t * deriv h (y - t)| ≤ |deriv h (y - t)|
          rw [abs_mul]
          calc |h t| * |deriv h (y - t)| ≤ 1 * |deriv h (y - t)| :=
                mul_le_mul_of_nonneg_right (hb t) (abs_nonneg _)
            _ = |deriv h (y - t)| := one_mul _
      _ = ∫ t, |deriv h t| := by
          have := MeasureTheory.integral_sub_left_eq_self (fun t => |deriv h t|)
            (μ := MeasureTheory.volume) y
          exact this
      _ ≤ 2 := hI

/-- the φ_D²-instance: g_D := autocorr(φ_D²) is C¹ with |g_D'| ≤ 2 (the paper's
"|g'| ≤ ‖(φ²)'‖₁ ≤ 2"), the exact hypotheses of ThmD/PP.sumA2g_close. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean#L1703).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
