# boundary_riesz_transform_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74e97fba1a99108bd87790ed46e35351bb183617",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cb28161-8863-9932-0769-65e37ec7913f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7f3a782-8a39-cf16-5c2f-e1e14a4b570f",
  "kind": "theorem",
  "lexical_name": "boundary_riesz_transform_tendsto",
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
  "slug": "boundary-riesz-transform-tendsto--8394ae13aba7b59c5af69e53",
  "source": {
    "blob": "74e97fba1a99108bd87790ed46e35351bb183617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8394ae13aba7b59c5af69e53a559397b0b7a3d152afd0b00a8267a1f2c1672b9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7f3a782-8a39-cf16-5c2f-e1e14a4b570f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_riesz_transform_tendsto (s : ℂ) (_hs : s ≠ 0) :
    Tendsto (fun A : ℝ ↦ boundaryRieszTransform A s) atTop
      (nhds (3938220 * (s ^ 2 - 1 / 4) ^ 2 / s ^ 10)) := by
  have hi : Tendsto (fun A : ℝ ↦ (A⁻¹ : ℂ)) atTop (nhds 0) := by
    simpa only [Function.comp_def, Complex.ofReal_zero, Complex.ofReal_inv] using
      Complex.continuous_ofReal.continuousAt.tendsto.comp
        (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0))
  have hj (j : ℕ) : Tendsto
      (fun A : ℝ ↦ (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
        ((A : ℂ) ^ j * s ^ (j + 10))) atTop
      (nhds (if j = 0 then (rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) /
        s ^ (j + 10) else 0)) := by
    by_cases hz : j = 0
    · subst j
      simp only [pow_zero, one_mul]
      exact tendsto_const_nhds
    · have hp := (hi.pow j).const_mul
        ((rieszCoefficient j : ℂ) * ((j + 9).factorial : ℂ) / s ^ (j + 10))
      convert hp using 1
      · funext A
        simp only [div_eq_mul_inv, mul_inv_rev, inv_pow]
        ring
      · simp [hz]
  have hsum := tendsto_finsetSum (Finset.range 9) (fun j _ ↦ hj j)
  have hZ : Tendsto (fun A : ℝ ↦ (sourceNormalization A : ℂ)) atTop
      (nhds ((4096 / 109395 : ℝ) : ℂ)) := by
    exact Complex.continuous_ofReal.continuousAt.tendsto.comp
      FormalResearch.RiemannHypothesis.PhaseKernelBoundary.source_normalization_tendsto
  have hfactor := (tendsto_const_nhds : Tendsto
    (fun _ : ℝ ↦ (s ^ 2 - 1 / 4) ^ 2) atTop (nhds ((s ^ 2 - 1 / 4) ^ 2))).div
      hZ (by norm_num)
  have he : (s ^ 2 - 1 / 4) ^ 2 / ((4096 / 109395 : ℝ) : ℂ) *
      (∑ j ∈ Finset.range 9, if j = 0 then (rieszCoefficient j : ℂ) *
        ((j + 9).factorial : ℂ) / s ^ (j + 10) else 0) =
        3938220 * (s ^ 2 - 1 / 4) ^ 2 / s ^ 10 := by
    norm_num [Finset.sum_range_succ, Finset.sum_range_zero, rieszCoefficient]
    ring
  have ht := hfactor.mul hsum
  rw [he] at ht
  exact ht

/-- The actual finite integral transforms converge in the genuine right half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BoundaryRieszLaplace/Variant7ef33dfbd77e7d1b062602c0b4cbfb7af0688cb38685d5248a78ad4df97de44f.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74e97fba1a99108bd87790ed46e35351bb183617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
