# fixture03

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3332a6f-48ea-014b-8e22-8e7995064d10",
  "kind": "theorem",
  "lexical_name": "fixture03",
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
  "slug": "fixture03--d95acaf5f1f01f4573b5786d",
  "source": {
    "blob": "5b3588826dbce6e438fc67022bca610835c01fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GreenReadoutFixturesPrepared/Varianta42ba416d9a9b3da4a6a2298f1402616a70512719298092493604920f2348aa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d95acaf5f1f01f4573b5786dac8fd26379024f0e7e7225c4275317748a94d308",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GreenReadoutFixturesPrepared/Varianta42ba416d9a9b3da4a6a2298f1402616a70512719298092493604920f2348aa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3332a6f-48ea-014b-8e22-8e7995064d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixture03 : (∫ u in (0 : ℝ)..2,
    criticalDirichletTent 2 u 1 * deriv (deriv (fun x : ℝ => x ^ 2)) u) = 1 := by
  have hd : ContDiff ℝ 1 (fun x : ℝ => x ^ 2) := by fun_prop
  have htwo : ContDiff ℝ 2 (fun x : ℝ => x ^ 2) := by fun_prop
  have hderiv : ContDiff ℝ 1 (deriv (fun x : ℝ => x ^ 2)) := htwo.deriv'
  have hi := dirichletTent_integral_second_deriv_eq_endpoint_interpolation
    (D := fun x : ℝ => x ^ 2) (show (0 : ℝ) < 2 by norm_num)
    (show (1 : ℝ) ∈ Icc 0 2 by norm_num) hd
    hderiv.contDiffOn.absolutelyContinuousOnInterval
  norm_num at hi
  exact hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GreenReadoutFixturesPrepared/Varianta42ba416d9a9b3da4a6a2298f1402616a70512719298092493604920f2348aa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GreenReadoutFixturesPrepared/Varianta42ba416d9a9b3da4a6a2298f1402616a70512719298092493604920f2348aa5.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3588826dbce6e438fc67022bca610835c01fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
