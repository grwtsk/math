# full_model_integral_eq_main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:229f785b-0c41-8c38-ee2e-b9df8036e72f",
  "kind": "theorem",
  "lexical_name": "full_model_integral_eq_main",
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
  "slug": "full-model-integral-eq-main--b29187805851a29829520c90",
  "source": {
    "blob": "117f2b48d2a8e0270ee9588f70c190ba6a661ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29187805851a29829520c90cc96e5f944f73e1605f970095bfcafe09de37650",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:229f785b-0c41-8c38-ee2e-b9df8036e72f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_model_integral_eq_main (A k : ℝ) :
    (∫ u in Ioi (0 : ℝ), Int.fract u * cubicLogModelDerivative A k u) =
      wholeCubicMainTerm A k := by
  let c0 := sourceCorrelation explicitSecondDerivative A (Real.log k)
  let c1 := deriv (sourceCorrelation explicitSecondDerivative A) (Real.log k)
  let c2 := deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (Real.log k) / 2
  let c3 := deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) (Real.log k) / 6
  have h0 := (fullPositiveKappaWeight_integrable 1).const_mul c0
  have h1 := (fullPositiveKappaWeight_integrable 2).const_mul c1
  have h2 := (fullPositiveKappaWeight_integrable 3).const_mul c2
  have h3 := (fullPositiveKappaWeight_integrable 4).const_mul c3
  have hs3 := integral_add ((h0.add h1).add h2) h3
  have hs2 := integral_add (h0.add h1) h2
  have hs1 := integral_add h0 h1
  simp only [Pi.add_apply, c0, c1, c2, c3] at hs3 hs2 hs1
  simp_rw [full_model_density_eq]
  rw [integral_const_mul, hs3, hs2, hs1]
  simp_rw [integral_const_mul]
  unfold wholeCubicMainTerm fullPositiveKappa
  ring

/-- Actual finite samples recover the complete full-axis main and literal actual error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Varianta6ca1bb4721b0407600c1e37c131647395b86c6a5d9bc10db1e291711e3ae75e.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `117f2b48d2a8e0270ee9588f70c190ba6a661ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
