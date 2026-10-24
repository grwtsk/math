# criticalWeight_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43531b1ffec45987956abb64b102ff1bc35eae78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3da1bf33b5320fef1ffc7e3e13d9c7713c07fb81aa0f39480d9cb5b8067d2da3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:883f63a2-9100-9482-52d2-04790a981a73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:375f2e97-acff-4287-4606-e4215c2d12ca",
  "kind": "theorem",
  "lexical_name": "criticalWeight_hasDerivAt",
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
  "slug": "criticalweight-hasderivat--6424ea0111e98566756a66f1",
  "source": {
    "blob": "43531b1ffec45987956abb64b102ff1bc35eae78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3da1bf33b5320fef1ffc7e3e13d9c7713c07fb81aa0f39480d9cb5b8067d2da3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6424ea0111e98566756a66f10465fbb90b2067ad3f19900dbf644d6f9fc18488",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3da1bf33b5320fef1ffc7e3e13d9c7713c07fb81aa0f39480d9cb5b8067d2da3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:375f2e97-acff-4287-4606-e4215c2d12ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalWeight_hasDerivAt (A x : ℝ) (hA : 0 < A) (hx : 0 < x) :
    HasDerivAt (criticalWeight A)
      ((deriv (unitCorrelation A) (Real.log x / A) / A -
        unitCorrelation A (Real.log x / A) / 2) / (x * Real.sqrt x)) x := by
  have hK := unitCorrelation_contDiff A hA
  have hCt : ContDiff ℝ 1 (fun t : ℝ ↦ unitCorrelation A (t/A)) :=
    hK.comp (contDiff_id.div_const A)
  have hF := exponentialTest_contDiff (fun t ↦ unitCorrelation A (t/A)) hCt
  have hdF := ((contDiff_one_iff_deriv.mp hF).1 (Real.log x)).hasDerivAt
  have hKC := ((contDiff_one_iff_deriv.mp hK).1 (Real.log x/A)).hasDerivAt
  have hKt := hKC.comp (Real.log x) ((hasDerivAt_id (Real.log x)).div_const A)
  have hD : deriv (fun t ↦ unitCorrelation A (t/A)) (Real.log x) =
      deriv (unitCorrelation A) (Real.log x/A) / A := by
    simpa only [Function.comp_def, id_eq, div_eq_mul_inv, one_mul] using hKt.deriv
  rw [exponentialTest_deriv (fun t ↦ unitCorrelation A (t/A)) hCt, hD] at hdF
  have hd := hdF.comp x (Real.hasDerivAt_log hx.ne')
  have hexp : Real.exp (-Real.log x / 2) = 1 / Real.sqrt x := by
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hx]
    ring
  have hd' := hd.congr_of_eventuallyEq (f₁ := criticalWeight A) ?_
  · have hcoef : Real.exp (-Real.log x/2) *
        (deriv (unitCorrelation A) (Real.log x/A) / A -
          unitCorrelation A (Real.log x/A) / 2) * x⁻¹ =
        (deriv (unitCorrelation A) (Real.log x/A) / A -
          unitCorrelation A (Real.log x/A) / 2) / (x * Real.sqrt x) := by
      rw [hexp]
      ring
    rw [hcoef] at hd'
    exact hd'
  · filter_upwards [eventually_gt_nhds hx] with z hz
    dsimp [exponentialTest, criticalWeight]
    rw [neg_div, Real.exp_neg, Real.exp_half, Real.exp_log hz]
    ring

end
end EstimateCriticalPrimeError
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3da1bf33b5320fef1ffc7e3e13d9c7713c07fb81aa0f39480d9cb5b8067d2da3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant3da1bf33b5320fef1ffc7e3e13d9c7713c07fb81aa0f39480d9cb5b8067d2da3.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43531b1ffec45987956abb64b102ff1bc35eae78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
