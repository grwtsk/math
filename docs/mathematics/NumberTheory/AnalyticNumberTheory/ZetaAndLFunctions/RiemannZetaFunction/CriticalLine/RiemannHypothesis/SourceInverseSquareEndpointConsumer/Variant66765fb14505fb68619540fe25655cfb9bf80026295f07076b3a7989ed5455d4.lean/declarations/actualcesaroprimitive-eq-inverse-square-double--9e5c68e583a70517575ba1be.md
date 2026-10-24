# actualCesaroPrimitive_eq_inverse_square_double

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2053dcc6-ef03-7a96-853c-bad2bfd3cf85",
  "kind": "theorem",
  "lexical_name": "actualCesaroPrimitive_eq_inverse_square_double",
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
  "slug": "actualcesaroprimitive-eq-inverse-square-double--9e5c68e583a70517575ba1be",
  "source": {
    "blob": "944e9eb6413d956a6f43ec665297f170bf2d3fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceInverseSquareEndpointConsumer/Variant66765fb14505fb68619540fe25655cfb9bf80026295f07076b3a7989ed5455d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e5c68e583a70517575ba1bee63f8889af7c318e09b662c58afb2c4591f6a00d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceInverseSquareEndpointConsumer/Variant66765fb14505fb68619540fe25655cfb9bf80026295f07076b3a7989ed5455d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2053dcc6-ef03-7a96-853c-bad2bfd3cf85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCesaroPrimitive_eq_inverse_square_double (t : ℝ) (ht : Real.log 2 ≤ t) :
    actualCesaroPrimitive t =
      ∫ s in Real.log 2..t, ∫ r in Real.log 2..s, Real.exp (r / 2) *
        ((∫ y in 2..Real.exp r, shiftedActualChebyshev y / y ^ 2) +
          shiftedActualChebyshev (Real.exp r) / Real.exp r) := by
  unfold actualCesaroPrimitive
  apply intervalIntegral.integral_congr
  intro s hs
  have hsl : Real.log 2 ≤ s := by
    rw [uIcc_of_le ht] at hs
    exact hs.1
  rw [centeredCriticalPrimitive_eq_lower_integral s hsl]
  apply intervalIntegral.integral_congr
  intro r hr
  have hrl : Real.log 2 ≤ r := by
    rw [uIcc_of_le hsl] at hr
    exact hr.1
  exact primitiveDensity_eq_inverse_square r hrl

/-- First inverse-square component substitution keeps the second component literally intact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceInverseSquareEndpointConsumer/Variant66765fb14505fb68619540fe25655cfb9bf80026295f07076b3a7989ed5455d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceInverseSquareEndpointConsumer/Variant66765fb14505fb68619540fe25655cfb9bf80026295f07076b3a7989ed5455d4.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `944e9eb6413d956a6f43ec665297f170bf2d3fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
