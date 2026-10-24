# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2273826a6971fc3a62314bc85e68a2cd08bda56fdb11d834321512fb6082e2d",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--a6c5e4d65dc5af7dbaff3258",
  "source": {
    "blob": "9760e3566e069c7d757a5c93d895bcc77d890a06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1323,
    "line": 1311,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantfd52eb9f4ac280e29337c26b88bf5a3d4c6ba1d7d0ae8298a31af536b3173fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6c5e4d65dc5af7dbaff325871ef57bbf23c1cbb91fcf78bc514edd94dd41c3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantfd52eb9f4ac280e29337c26b88bf5a3d4c6ba1d7d0ae8298a31af536b3173fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2273826a6971fc3a62314bc85e68a2cd08bda56fdb11d834321512fb6082e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1311–1323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (P : Finset ℕ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
        4 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius d : ℝ) * SourceSampling.sourceSamplingKernel A d) +
        2 * (∫ x : ℝ, x * Real.exp (x / 2) *
          normalizedTest Realization.explicitSecondDerivative A x) ^ 2 *
          (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)) ^ 2 +
        2 * (∑ p ∈ roughClasses A P, classMean A p.1 p.2) +
        2 * primeSupportedBlock A P +
        2 * (roughRatioRemainder A P - (∑ p ∈ roughClasses A P, classMean A p.1 p.2)) :=
  RoughClassReduction.sourceQuadraticValue_eq_mean_add_error A P hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantfd52eb9f4ac280e29337c26b88bf5a3d4c6ba1d7d0ae8298a31af536b3173fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variantfd52eb9f4ac280e29337c26b88bf5a3d4c6ba1d7d0ae8298a31af536b3173fd7.lean#L1311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9760e3566e069c7d757a5c93d895bcc77d890a06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
