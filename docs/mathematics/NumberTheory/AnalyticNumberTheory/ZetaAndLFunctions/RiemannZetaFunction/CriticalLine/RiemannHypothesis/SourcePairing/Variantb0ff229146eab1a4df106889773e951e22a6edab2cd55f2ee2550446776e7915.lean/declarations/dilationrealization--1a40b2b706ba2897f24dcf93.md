# DilationRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:262bc5d48b07039004bb8671a46be966d58c0cebd0f4390b1cd81a082e604916",
  "kind": "structure",
  "lexical_name": "DilationRealization",
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
  "slug": "dilationrealization--1a40b2b706ba2897f24dcf93",
  "source": {
    "blob": "5182ac087f0d9ba49f57ca21141ef5a94f8f9027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a40b2b706ba2897f24dcf93c5db6ca8659c6765fd288378656636e9e561fa2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:262bc5d48b07039004bb8671a46be966d58c0cebd0f4390b1cd81a082e604916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DilationRealization where
  /-- A proposed weak second derivative at each radius, constrained by the following proofs. -/
  secondDerivative : ℝ → ℝ → ℝ
  weak_second_derivative : ∀ A, 1 ≤ A →
    IsWeakSecondDerivative (scaledBump A) (secondDerivative A)
  zero_extension : ∀ A, 1 ≤ A → ∀ x, x ∉ Set.Icc (-A) A →
    dilationTest secondDerivative A x = 0
  test_integrable : ∀ A, 1 ≤ A → Integrable (dilationTest secondDerivative A) volume
  test_square_integrable : ∀ A, 1 ≤ A →
    Integrable (fun x ↦ dilationTest secondDerivative A x ^ 2) volume
  normalization : ∀ A, 1 ≤ A →
    (∫ x, dilationTest secondDerivative A x ^ 2) = sourceNormalization A
  positive_pole_integrable : ∀ A, 1 ≤ A →
    Integrable (fun x ↦ normalizedTest secondDerivative A x * Real.exp (x / 2)) volume
  negative_pole_integrable : ∀ A, 1 ≤ A →
    Integrable (fun x ↦ normalizedTest secondDerivative A x * Real.exp (-x / 2)) volume
  positive_pole_zero : ∀ A, 1 ≤ A →
    (∫ x, normalizedTest secondDerivative A x * Real.exp (x / 2)) = 0
  negative_pole_zero : ∀ A, 1 ≤ A →
    (∫ x, normalizedTest secondDerivative A x * Real.exp (-x / 2)) = 0
  correlation_product_integrable : ∀ A, 1 ≤ A → ∀ t,
    Integrable (fun x ↦ normalizedTest secondDerivative A x *
      normalizedTest secondDerivative A (x - t)) volume
  correlation_regular : ∀ A, 1 ≤ A → ContDiff ℝ 1 (sourceCorrelation secondDerivative A)
  archimedean_integrable : ∀ A, 1 ≤ A →
    Integrable (archimedeanIntegrand secondDerivative A) volume
  signed_pairing_integrable : ∀ A, 1 ≤ A →
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight secondDerivative A t)
      volume lowerEndpoint (2 * A)

/-- Existence itself is an open obligation; no realization is selected by
`Classical.choose`, and no witness is postulated as an axiom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairing/Variantb0ff229146eab1a4df106889773e951e22a6edab2cd55f2ee2550446776e7915.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5182ac087f0d9ba49f57ca21141ef5a94f8f9027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
