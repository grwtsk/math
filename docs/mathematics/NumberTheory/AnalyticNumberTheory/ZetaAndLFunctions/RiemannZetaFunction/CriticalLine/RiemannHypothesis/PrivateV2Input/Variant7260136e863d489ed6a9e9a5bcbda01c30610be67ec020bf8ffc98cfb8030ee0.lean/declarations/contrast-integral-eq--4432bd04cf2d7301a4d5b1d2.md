# contrast_integral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a66a6b66-f69d-c6a7-1d61-6a60e5b7f1d2",
  "kind": "theorem",
  "lexical_name": "contrast_integral_eq",
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
  "slug": "contrast-integral-eq--4432bd04cf2d7301a4d5b1d2",
  "source": {
    "blob": "54440d8066b3a00ad4b509dbdc4c7a783a8489ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4432bd04cf2d7301a4d5b1d21d773507923636e3de945ededfd2781963b3edec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66a6b66-f69d-c6a7-1d61-6a60e5b7f1d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contrast_integral_eq {A : ℝ} (hA : 0 < A) :
    (∫ s in 0..2*A, ∫ t in 0..2*A,
      (primeLogError s - primeLogError t) * positiveSlope A s * negativeSlope A t) =
      negativeMass A * positiveSlopeWork A - negativeSlopeWork A * positiveMass A := by
  simp_rw [contrast_inner_eq hA]
  have he : (fun s : ℝ => positiveSlope A s *
      (primeLogError s * negativeMass A - negativeSlopeWork A)) =
      (fun s : ℝ => negativeMass A * (primeLogError s * positiveSlope A s) -
        negativeSlopeWork A * positiveSlope A s) := by
    funext s
    ring
  rw [he, intervalIntegral.integral_sub
    ((positiveSlopeWork_intervalIntegrable hA).const_mul (negativeMass A))
    ((positiveSlope_intervalIntegrable hA).const_mul (negativeSlopeWork A)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54440d8066b3a00ad4b509dbdc4c7a783a8489ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
