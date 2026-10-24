# signed_pairing_eq_actual_finite_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:739d00a7-3ffa-a744-859a-235bae7a193a",
  "kind": "theorem",
  "lexical_name": "signed_pairing_eq_actual_finite_row",
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
  "slug": "signed-pairing-eq-actual-finite-row--8df0c1fa09cfb244ec57c3fb",
  "source": {
    "blob": "d7a1fcaba4efe95753f4dede23992e8c3c380499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8df0c1fa09cfb244ec57c3fbf0a9d76437ebfd3497e487dc1cfb6703b4290fe2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:739d00a7-3ffa-a744-859a-235bae7a193a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_pairing_eq_actual_finite_row (A : ℝ) (hA : 1 ≤ A) :
    RH16CesaroSignedPairing.signedCesaroPairing A =
      ∫ t in Real.log 2..2 * A,
        actualFiniteSecondReadout t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t := by
  unfold RH16CesaroSignedPairing.signedCesaroPairing
  apply intervalIntegral.integral_congr
  intro t ht
  have hlt : Real.log 2 ≤ t := by
    have hL : Real.log (2 : ℝ) ≤ 2 * A := by
      linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
    exact ((uIcc_of_le hL) ▸ ht).1
  dsimp only
  rw [actualCesaroPrimitive_eq_finite_readout t hlt]

/-- A supplied bounded first primitive gives twice that budget for the centered second primitive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variantd5a5805e6a9a15c8bf67d765c213afa9e1fc177b54c91671e8a7d6d8622b0025.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7a1fcaba4efe95753f4dede23992e8c3c380499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
