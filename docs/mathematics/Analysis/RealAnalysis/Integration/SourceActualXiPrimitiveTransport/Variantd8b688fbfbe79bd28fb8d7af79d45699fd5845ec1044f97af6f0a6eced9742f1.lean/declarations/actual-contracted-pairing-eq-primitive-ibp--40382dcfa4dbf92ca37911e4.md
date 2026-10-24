# actual_contracted_pairing_eq_primitive_IBP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57202319-d90b-2b51-0812-d632566ea2e3",
  "kind": "theorem",
  "lexical_name": "actual_contracted_pairing_eq_primitive_IBP",
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
  "slug": "actual-contracted-pairing-eq-primitive-ibp--40382dcfa4dbf92ca37911e4",
  "source": {
    "blob": "28f9c2d4e5120345333f1223793d13d437fc8353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40382dcfa4dbf92ca37911e4e5ce54f54eaec05641ab247108720c8a45d69e2f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57202319-d90b-2b51-0812-d632566ea2e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_contracted_pairing_eq_primitive_IBP (A : ℝ) (hA : 1 ≤ A) :
    (∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) =
      -(∫ t in Real.log 2..2 * A,
        actualXiLogPrimitive t * deriv (fullXiLogWeight A) t) := by
  have hp : 0 < A := by linarith
  have hf := actualXiLogPrimitive_absolutelyContinuous (2 * A)
  have hw := actual_log_weight_absolutelyContinuous A (Real.log 2) (2 * A) hp
  have hibp := hf.integral_mul_deriv_eq_deriv_mul hw
  rw [actual_log_weight_at_upper A hp, actualXiLogPrimitive_at_anchor,
    mul_zero, zero_mul, sub_zero, zero_sub] at hibp
  have he : (∫ t in Real.log 2..2 * A,
      deriv actualXiLogPrimitive t * fullXiLogWeight A t) =
      ∫ t in Real.log 2..2 * A, actualXiLogDensity t * fullXiLogWeight A t := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualXiLogPrimitive_ae_hasDerivAt (2 * A)] with t ht
    intro hmem
    rw [(ht (uIoc_subset_uIcc hmem)).deriv]
  rw [he] at hibp
  rw [actual_logarithmic_substitution A hA]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransport/Variantd8b688fbfbe79bd28fb8d7af79d45699fd5845ec1044f97af6f0a6eced9742f1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f9c2d4e5120345333f1223793d13d437fc8353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
