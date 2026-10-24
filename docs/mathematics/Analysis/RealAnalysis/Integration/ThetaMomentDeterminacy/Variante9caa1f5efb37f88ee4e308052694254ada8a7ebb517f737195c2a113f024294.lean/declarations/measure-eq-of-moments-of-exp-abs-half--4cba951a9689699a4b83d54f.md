# measure_eq_of_moments_of_exp_abs_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b5bfa168a4ac50a54f1f3f399696334a4f4c634",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9abd006c-0384-5d8b-0211-f7412346097c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c401e085-67ac-a001-aa18-e3b1f1ae2423",
  "kind": "theorem",
  "lexical_name": "measure_eq_of_moments_of_exp_abs_half",
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
  "slug": "measure-eq-of-moments-of-exp-abs-half--4cba951a9689699a4b83d54f",
  "source": {
    "blob": "7b5bfa168a4ac50a54f1f3f399696334a4f4c634",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 117,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cba951a9689699a4b83d54f3cf468fb8bf53134e4601ae6b88862a9ada08661",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c401e085-67ac-a001-aa18-e3b1f1ae2423`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_eq_of_moments_of_exp_abs_half
    (μ ν : Measure ℝ) [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (hμexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) μ)
    (hνexp : Integrable (fun x : ℝ => Real.exp (|x| / 2)) ν)
    (hmom : ∀ n : ℕ, (∫ x : ℝ, x ^ n ∂μ) = ∫ x : ℝ, x ^ n ∂ν) : μ = ν := by
  have hμ := half_interval_subset_interior_integrableExpSet μ hμexp
  have hν := half_interval_subset_interior_integrableExpSet ν hνexp
  have hzero : (0 : ℝ) ∈ Ioo (- (1 / 2 : ℝ)) (1 / 2 : ℝ) := by norm_num
  have hμzero : (0 : ℝ) ∈ interior (integrableExpSet id μ) := hμ hzero
  have hνzero : (0 : ℝ) ∈ interior (integrableExpSet id ν) := hν hzero
  have hderiv (n : ℕ) :
      iteratedDeriv n (complexMGF id μ) (0 : ℂ) =
        iteratedDeriv n (complexMGF id ν) (0 : ℂ) := by
    rw [iteratedDeriv_complexMGF (by simpa using hμzero),
      iteratedDeriv_complexMGF (by simpa using hνzero)]
    simp only [id_eq, zero_mul, Complex.exp_zero, mul_one, ← Complex.ofReal_pow]
    rw [integral_complex_ofReal, integral_complex_ofReal, hmom n]
  have hμseries := (analyticAt_complexMGF (by simpa using hμzero) :
    AnalyticAt ℂ (complexMGF id μ) 0).hasFPowerSeriesAt
  have hνseries : HasFPowerSeriesAt (complexMGF id ν)
      (FormalMultilinearSeries.ofScalars ℂ
        (fun n => iteratedDeriv n (complexMGF id μ) 0 / n.factorial)) 0 := by
    simpa only [hderiv] using (analyticAt_complexMGF (by simpa using hνzero) :
      AnalyticAt ℂ (complexMGF id ν) 0).hasFPowerSeriesAt
  have hlocal : complexMGF id μ =ᶠ[𝓝 (0 : ℂ)] complexMGF id ν := by
    filter_upwards [hμseries.eventually_hasSum_sub, hνseries.eventually_hasSum_sub] with z hμz hνz
    exact hμz.unique hνz
  let S : Set ℂ := {z | z.re ∈ Ioo (- (1 / 2 : ℝ)) (1 / 2 : ℝ)}
  have hμanalytic : AnalyticOnNhd ℂ (complexMGF id μ) S :=
    fun z hz => analyticAt_complexMGF (hμ hz)
  have hνanalytic : AnalyticOnNhd ℂ (complexMGF id ν) S :=
    fun z hz => analyticAt_complexMGF (hν hz)
  have hS : IsPreconnected S :=
    ((convex_Ioo (- (1 / 2 : ℝ)) (1 / 2 : ℝ)).linear_preimage Complex.reLm).isPreconnected
  have hEq := hμanalytic.eqOn_of_preconnected_of_eventuallyEq hνanalytic hS
    (show (0 : ℂ) ∈ S by simp [S]) hlocal
  apply Measure.ext_of_charFun
  ext s
  rw [← complexMGF_id_mul_I, ← complexMGF_id_mul_I]
  apply hEq
  simp [S]

/-- Actual theta moments uniquely determine the positive magnitude measure
among all finite real-line measures with integrable matching power moments.
No support or exponential-integrability premise is imposed on the competitor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variante9caa1f5efb37f88ee4e308052694254ada8a7ebb517f737195c2a113f024294.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b5bfa168a4ac50a54f1f3f399696334a4f4c634` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
