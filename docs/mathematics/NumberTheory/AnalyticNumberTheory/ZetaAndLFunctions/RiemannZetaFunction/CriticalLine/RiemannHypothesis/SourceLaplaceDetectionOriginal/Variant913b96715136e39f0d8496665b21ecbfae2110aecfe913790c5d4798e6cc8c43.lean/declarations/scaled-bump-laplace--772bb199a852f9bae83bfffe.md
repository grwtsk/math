# scaled_bump_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b76fbe8-8fec-ca99-364a-32dc0293d004",
  "kind": "theorem",
  "lexical_name": "scaled_bump_laplace",
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
  "slug": "scaled-bump-laplace--772bb199a852f9bae83bfffe",
  "source": {
    "blob": "e66b101930822c98363e2ca4ebcd43dff251f0d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 231,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:772bb199a852f9bae83bfffe1f96130c49adcf246d1f5f996b264be05c4bb3ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b76fbe8-8fec-ca99-364a-32dc0293d004`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_bump_laplace (A : ℝ) (z : ℂ) (hA : 0 < A) :
    bilateralLaplace (scaledBump A) z =
      (A : ℂ) / (Real.sqrt A : ℂ) * bilateralLaplace sourceBump ((A : ℂ) * z) := by
  unfold bilateralLaplace scaledBump
  simp_rw [Complex.ofReal_div, div_mul_eq_mul_div]
  rw [integral_div]
  have he : (fun x : ℝ ↦ (sourceBump (x / A) : ℂ) * Complex.exp (z * (x : ℂ))) =
      fun x : ℝ ↦ ((sourceBump (x / A) : ℂ) *
        Complex.exp (((A : ℂ) * z) * ((x / A : ℝ) : ℂ))) := by
    funext x
    congr 2
    rw [Complex.ofReal_div]
    field_simp [ne_of_gt hA]
  have hd : (∫ x : ℝ, (sourceBump (x / A) : ℂ) *
      Complex.exp (((A : ℂ) * z) * ((x / A : ℝ) : ℂ))) =
      (A : ℂ) * ∫ y : ℝ, (sourceBump y : ℂ) * Complex.exp (((A : ℂ) * z) * (y : ℂ)) := by
    simpa only [abs_of_pos hA, Complex.real_smul] using
      Measure.integral_comp_div (fun y : ℝ ↦ (sourceBump y : ℂ) *
        Complex.exp (((A : ℂ) * z) * (y : ℂ))) A
  rw [he, hd]

/-- The global actual zero-extended bump transform equals the fixed source interval transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLaplaceDetectionOriginal/Variant913b96715136e39f0d8496665b21ecbfae2110aecfe913790c5d4798e6cc8c43.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e66b101930822c98363e2ca4ebcd43dff251f0d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
