# negativeSlopeWork_abs_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f7d6140-8d6e-72b4-ef60-a7e6f99b3025",
  "kind": "theorem",
  "lexical_name": "negativeSlopeWork_abs_le_mass",
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
  "slug": "negativeslopework-abs-le-mass--b7931f9b98d2bbed38f2928b",
  "source": {
    "blob": "54440d8066b3a00ad4b509dbdc4c7a783a8489ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7931f9b98d2bbed38f2928b2e278708b8ca96a857dadb99c92107fd95464ae4",
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

Occurrence: `result:2f7d6140-8d6e-72b4-ef60-a7e6f99b3025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSlopeWork_abs_le_mass {A : ℝ} (hA : 1 ≤ A) (C : ℝ)
    (hC : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C) :
    |negativeSlopeWork A| ≤ C * negativeMass A := by
  have hp : 0 < A := by linarith
  have hi := negativeSlopeWork_intervalIntegrable hp
  have hb : (∫ t in 0..2*A, |primeLogError t * negativeSlope A t|) ≤
      ∫ t in 0..2*A, C * negativeSlope A t := by
    apply intervalIntegral.integral_mono_on (show 0 ≤ 2*A by linarith) hi.abs
      ((negativeSlope_intervalIntegrable hp).const_mul C)
    intro t ht
    rw [abs_mul, abs_of_nonneg (negativeSlope_nonneg A t)]
    exact mul_le_mul_of_nonneg_right (hC t ht.1) (negativeSlope_nonneg A t)
  exact ((intervalIntegral.abs_integral_le_integral_abs (by linarith)).trans hb).trans_eq
    (intervalIntegral.integral_const_mul C _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54440d8066b3a00ad4b509dbdc4c7a783a8489ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
