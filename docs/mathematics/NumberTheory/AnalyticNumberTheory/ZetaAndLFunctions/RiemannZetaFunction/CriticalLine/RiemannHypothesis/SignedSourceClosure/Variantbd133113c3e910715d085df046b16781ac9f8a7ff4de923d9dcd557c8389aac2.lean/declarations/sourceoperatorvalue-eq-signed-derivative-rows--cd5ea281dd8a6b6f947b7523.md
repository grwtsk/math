# sourceOperatorValue_eq_signed_derivative_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0c523a3-41a6-1932-445e-9140f96378d9",
  "kind": "theorem",
  "lexical_name": "sourceOperatorValue_eq_signed_derivative_rows",
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
  "slug": "sourceoperatorvalue-eq-signed-derivative-rows--cd5ea281dd8a6b6f947b7523",
  "source": {
    "blob": "c3aad05aac66e14db6e063ec4175f303145e70fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedSourceClosure/Variantbd133113c3e910715d085df046b16781ac9f8a7ff4de923d9dcd557c8389aac2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd5ea281dd8a6b6f947b752329c0dc31e7de5cd6fc328e194c9df43f51707eac",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedSourceClosure/Variantbd133113c3e910715d085df046b16781ac9f8a7ff4de923d9dcd557c8389aac2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0c523a3-41a6-1932-445e-9140f96378d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceOperatorValue_eq_signed_derivative_rows (A : ℝ) (hA : 1 ≤ A) :
    sourceOperatorValue A =
      -2 * (∫ x in Ioc 1 (sourceUpper A), mertens x *
        (∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
          Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
            (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
                (Real.log (x * (k : ℝ))) -
              sourceCorrelation Realization.explicitSecondDerivative A
                (Real.log (x * (k : ℝ))) / 2))) := by
  rw [sourceOperatorValue_eq_signed_abel A hA]
  congr 1
  apply setIntegral_congr_fun measurableSet_Ioc
  intro x hx
  dsimp only
  rw [sourceMobiusKernel_deriv A x (by linarith) (by linarith [hx.1])]

/-- The remaining signed analytic estimate is an exact equivalent, with its
inequality direction frozen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedSourceClosure/Variantbd133113c3e910715d085df046b16781ac9f8a7ff4de923d9dcd557c8389aac2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SignedSourceClosure/Variantbd133113c3e910715d085df046b16781ac9f8a7ff4de923d9dcd557c8389aac2.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3aad05aac66e14db6e063ec4175f303145e70fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
