# criticalPrimeTest_second_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76eda8ac-2ff1-6837-9c99-80c6543be6ca",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_second_deriv",
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
  "slug": "criticalprimetest-second-deriv--5d51cdfb3069de9e0de37379",
  "source": {
    "blob": "48e95454f2e12880f884de60bc751dcf5c9bd812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d51cdfb3069de9e0de373794574fbc92dab1022bbf40037a9240a1460a7d1e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76eda8ac-2ff1-6837-9c99-80c6543be6ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_second_deriv {A : ℝ} (hA : 0 < A) (u : ℝ) :
    deriv (deriv (criticalPrimeTest A)) u = Real.exp (u/2) *
      (sourceCorrelation explicitSecondDerivative A u / 4 +
       deriv (sourceCorrelation explicitSecondDerivative A) u +
       deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u) := by
  have heq : deriv (criticalPrimeTest A) = fun t => Real.exp (t/2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
       deriv (sourceCorrelation explicitSecondDerivative A) t) :=
    funext fun t => criticalPrimeTest_deriv A t hA
  rw [heq]
  have he := ((hasDerivAt_id u).div_const 2).exp
  have hc := ((sourceCorrelation_contDiff A hA).differentiable_one u).hasDerivAt
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable_one u).hasDerivAt
  have hprod : HasDerivAt (fun t => Real.exp (t/2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
       deriv (sourceCorrelation explicitSecondDerivative A) t))
      (Real.exp (u/2) * (sourceCorrelation explicitSecondDerivative A u / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) u +
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u)) u := by
    convert (he.mul ((hc.div_const 2).add hd)) using 1 <;> first | rfl | (dsimp; ring)
  exact hprod.deriv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCurvatureBudget/Variant3a8b790bf11a1da57740c7bc7906e93eece63ef495612fa999a01f53d11b2988.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e95454f2e12880f884de60bc751dcf5c9bd812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
