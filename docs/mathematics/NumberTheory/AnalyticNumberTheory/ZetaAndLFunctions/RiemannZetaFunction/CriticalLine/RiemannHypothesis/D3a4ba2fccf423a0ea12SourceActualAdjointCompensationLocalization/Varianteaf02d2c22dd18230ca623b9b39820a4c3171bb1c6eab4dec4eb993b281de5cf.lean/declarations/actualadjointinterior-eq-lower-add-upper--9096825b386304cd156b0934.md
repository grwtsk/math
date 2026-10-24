# actualAdjointInterior_eq_lower_add_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ab7541d-561d-4854-25a2-2c9a64822a6c",
  "kind": "theorem",
  "lexical_name": "actualAdjointInterior_eq_lower_add_upper",
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
  "slug": "actualadjointinterior-eq-lower-add-upper--9096825b386304cd156b0934",
  "source": {
    "blob": "42c01079606ba207d63070629b865bd2e9808f2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 72,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9096825b386304cd156b0934b576040b517985b7dc2cb8f4835901f150f045e9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ab7541d-561d-4854-25a2-2c9a64822a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointInterior_eq_lower_add_upper {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    actualAdjointInterior A =
      actualLowerStripInterior A 0 w + actualUpperAdjointInterior A w := by
  have ht := (actual_box_orders (by linarith : 1 ≤ A)).1
  have hc : actualLowerStripUpper A w ∈
      uIcc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
    rw [uIcc_of_le ht]
    exact ⟨le_min ht (by linarith), min_le_left _ _⟩
  have hi := actual_full_interior_intervalIntegrable (by linarith : 1 ≤ A)
  obtain ⟨hl, hu⟩ := (IntervalIntegrable.trans_iff hc).mp hi
  have he := intervalIntegral.integral_add_adjacent_intervals hl hu
  simpa only [actualAdjointInterior, actualLowerStripInterior, actualUpperAdjointInterior,
    actualLowerStripUpper, actualLowerStripDensity] using he.symm

/-- The original compensated work differs from the independently literal remainder by the strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D3a4ba2fccf423a0ea12SourceActualAdjointCompensationLocalization/Varianteaf02d2c22dd18230ca623b9b39820a4c3171bb1c6eab4dec4eb993b281de5cf.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c01079606ba207d63070629b865bd2e9808f2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
