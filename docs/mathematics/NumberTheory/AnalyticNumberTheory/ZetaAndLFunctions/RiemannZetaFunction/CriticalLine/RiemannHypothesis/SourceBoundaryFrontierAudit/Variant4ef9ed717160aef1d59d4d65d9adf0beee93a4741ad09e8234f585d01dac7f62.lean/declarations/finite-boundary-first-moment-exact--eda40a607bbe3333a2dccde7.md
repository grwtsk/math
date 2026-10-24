# finite_boundary_first_moment_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f46472608fc10339d11a256760793b70057cced",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fee35960-1dd9-ac37-8e56-881530276e57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d64d1f32-aa86-6798-71e0-31f730ff38cc",
  "kind": "theorem",
  "lexical_name": "finite_boundary_first_moment_exact",
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
  "slug": "finite-boundary-first-moment-exact--eda40a607bbe3333a2dccde7",
  "source": {
    "blob": "7f46472608fc10339d11a256760793b70057cced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 198,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variant4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eda40a607bbe3333a2dccde754a38bffd25ab42b98df44d0b8238e12d5eeeca5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variant4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d64d1f32-aa86-6798-71e0-31f730ff38cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_boundary_first_moment_exact (A : ℝ) (hA : 1 ≤ A) :
    finiteBoundaryMoment A 1 = boundaryScale A *
      (2 * A * (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) -
        GeneralizedPoleBoundary.positiveHalfMoment A) := by
  let f : ℝ → ℝ := fun y ↦ y * Real.exp (-y / 2) * boundaryKernel A y
  have hc := (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith)).continuous
  have hi := source_continuum_integrable A hA
  have hj : IntervalIntegrable (fun t ↦ t * Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) volume 0 (2 * A) :=
    ((by fun_prop : Continuous (fun t : ℝ ↦ t * Real.exp (t / 2))).mul hc).intervalIntegrable _ _
  calc
    _ = ∫ t in (0 : ℝ)..2 * A, f (2 * A - t) := by
      simpa only [finiteBoundaryMoment, pow_one, sub_self, sub_zero] using
        (intervalIntegral.integral_comp_sub_left f (2 * A) (a := 0) (b := 2 * A)).symm
    _ = ∫ t in (0 : ℝ)..2 * A, boundaryScale A *
        (2 * A * (Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) -
          t * Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t) := by
      apply intervalIntegral.integral_congr
      intro t _
      dsimp [f, boundaryKernel, boundaryScale]
      rw [show 2 * A - (2 * A - t) = t by ring,
        show -(2 * A - t) / 2 = -A + t / 2 by ring, Real.exp_add]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_const_mul,
        intervalIntegral.integral_sub (hi.const_mul (2 * A)) hj,
        intervalIntegral.integral_const_mul]
      rfl

/-- The finite affine moment is exponentially small with an explicit polynomial factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variant4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variant4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f46472608fc10339d11a256760793b70057cced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
