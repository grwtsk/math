# uniform_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9415515d70227f03c13998dad5a08c9eb1fd7f94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 12,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e4de976-b5b9-36d0-ea12-0dc81d004489",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:327910cd-09a4-7df1-009a-b5bba3b1fa96",
  "kind": "theorem",
  "lexical_name": "uniform_test",
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
  "slug": "uniform-test--27a87e0bcadbe64dabf0c6f8",
  "source": {
    "blob": "9415515d70227f03c13998dad5a08c9eb1fd7f94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 12,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93fSourceBoundaryUn/Varianta1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27a87e0bcadbe64dabf0c6f8fa80d93eeb8b8f1aaf4aeec09ffa34cde5245aee",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93fSourceBoundaryUn/Varianta1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:327910cd-09a4-7df1-009a-b5bba3b1fa96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_test (L : ℝ) :
    TendstoUniformlyOn boundaryKernel boundaryProfile atTop (Icc 0 L) := by
  let F : ℝ → ℝ → ℝ := fun q y ↦
    (y ^ 9 / 16 * endpointPolynomialZero (y * q) +
      y ^ 7 / 2 * endpointPolynomialOne (y * q) +
        y ^ 5 * endpointPolynomialTwo (y * q)) /
      ((4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * q ^ 2 +
        (196608 / 5005 : ℝ) * q ^ 4)
  have hden (q : ℝ) : (4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * q ^ 2 +
      (196608 / 5005 : ℝ) * q ^ 4 ≠ 0 := ne_of_gt (by positivity)
  have hcont : Continuous (Function.uncurry F) := by
    change Continuous (fun p : ℝ × ℝ ↦
      (p.2 ^ 9 / 16 * endpointPolynomialZero (p.2 * p.1) +
        p.2 ^ 7 / 2 * endpointPolynomialOne (p.2 * p.1) +
          p.2 ^ 5 * endpointPolynomialTwo (p.2 * p.1)) /
      ((4096 / 109395 : ℝ) + (65536 / 45045 : ℝ) * p.1 ^ 2 +
        (196608 / 5005 : ℝ) * p.1 ^ 4))
    apply Continuous.div
    · unfold endpointPolynomialZero endpointPolynomialOne endpointPolynomialTwo
      fun_prop
    · fun_prop
    · intro p
      exact hden p.1
  have huc : UniformContinuousOn (Function.uncurry F) ((Icc (-1) 1) ×ˢ (Icc 0 L)) :=
    (isCompact_Icc.prod isCompact_Icc).uniformContinuousOn_of_continuous hcont.continuousOn
  have huf : TendstoUniformlyOn F (F 0) (nhdsWithin (0 : ℝ) (Icc (-1) 1)) (Icc 0 L) :=
    huc.tendstoUniformlyOn (by norm_num)
  have hq : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhdsWithin (0 : ℝ) (Icc (-1) 1)) := by
    apply tendsto_nhdsWithin_iff.mpr
    refine ⟨tendsto_inv_atTop_zero, ?_⟩
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
    constructor
    · linarith [inv_nonneg.mpr (le_of_lt hpos)]
    · exact (inv_le_one₀ hpos).mpr hA
  have hu : TendstoUniformlyOn (fun A : ℝ ↦ F A⁻¹) (F 0) atTop (Icc 0 L) :=
    fun u hu ↦ hq.eventually (huf u hu)
  have heq : ∀ᶠ A : ℝ in atTop, EqOn (F A⁻¹) (boundaryKernel A) (Icc 0 L) := by
    filter_upwards [eventually_ge_atTop (max 1 L)] with A hA
    intro y hy
    have hA1 : 1 ≤ A := (le_max_left _ _).trans hA
    have hAL : L ≤ A := (le_max_right _ _).trans hA
    rw [boundary_kernel_exact A y hA1 hy.1 (by linarith [hy.2]),
      source_normalization_inverse_square]
    unfold F
    simp only [div_eq_mul_inv, inv_pow]
    ring
  have hright : EqOn (F 0) boundaryProfile (Icc 0 L) := by
    intro y _
    norm_num [F, endpointPolynomialZero, endpointPolynomialOne, endpointPolynomialTwo,
      boundaryProfile]
    ring
  exact (hu.congr heq).congr_right hright

end
end FormalResearch.RiemannHypothesis.SourceBoundaryLayer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93fSourceBoundaryUn/Varianta1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93fSourceBoundaryUn/Varianta1120ec61114f76b30733e0d14c11d486be68c2de5dda3046014a6fe641ea93f.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9415515d70227f03c13998dad5a08c9eb1fd7f94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
