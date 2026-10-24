# actual_factorization_keeps_independent_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d83b450e-492d-bef0-7140-cae40693a3a3",
  "kind": "theorem",
  "lexical_name": "actual_factorization_keeps_independent_rows",
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
  "slug": "actual-factorization-keeps-independent-rows--4f2da64d510020ea9e76dd40",
  "source": {
    "blob": "4d514aa19ccd0f3abde9553450d79cf6ed21eab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMixedWorkFubiniFixtures/Variant58ac341911a671e82e5eba8f4b6c5737c4742ecdfb8cc0df56705c25c8356f45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f2da64d510020ea9e76dd40d0e0257500efdb5ee46492d535dad9e438bdca45",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMixedWorkFubiniFixtures/Variant58ac341911a671e82e5eba8f4b6c5737c4742ecdfb8cc0df56705c25c8356f45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d83b450e-492d-bef0-7140-cae40693a3a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_factorization_keeps_independent_rows (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let N := sourceKernelCutoff A
    let K := N / (U + 1)
    let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
    let q : ℝ → ℝ := normalizedTest explicitSecondDerivative A
    let X0 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * q (v - t)
    let X1 : ℝ → ℝ := fun v => ∫ t in Real.log (U : ℝ)..Real.log (N : ℝ),
      mangoldtLogError t * Real.exp (t / 2) * deriv q (v - t)
    let Y0 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), q (v + Real.log u) / (u * Real.sqrt u))
    let Y1 : ℝ → ℝ := fun v => ∑ k ∈ Finset.Ico (U + 1) K,
      B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), deriv q (v + Real.log u) /
        (u * Real.sqrt u))
    SourceJointMangoldtWork.jointMangoldtErrorWork A =
      (∫ v : ℝ, X1 v * Y1 v) + (1 / 4 : ℝ) * (∫ v : ℝ, X0 v * Y0 v) := by
  exact jointMangoldtErrorWork_eq_actual_bilinear_profiles A hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMixedWorkFubiniFixtures/Variant58ac341911a671e82e5eba8f4b6c5737c4742ecdfb8cc0df56705c25c8356f45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMixedWorkFubiniFixtures/Variant58ac341911a671e82e5eba8f4b6c5737c4742ecdfb8cc0df56705c25c8356f45.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d514aa19ccd0f3abde9553450d79cf6ed21eab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
