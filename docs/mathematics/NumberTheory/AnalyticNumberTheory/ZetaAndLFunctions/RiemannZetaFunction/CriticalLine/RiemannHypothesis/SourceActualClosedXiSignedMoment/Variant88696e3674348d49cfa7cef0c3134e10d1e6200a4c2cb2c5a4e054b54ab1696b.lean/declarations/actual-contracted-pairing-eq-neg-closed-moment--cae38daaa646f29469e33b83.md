# actual_contracted_pairing_eq_neg_closed_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b270c20-4ae4-6cbe-3372-1a1626a7d089",
  "kind": "theorem",
  "lexical_name": "actual_contracted_pairing_eq_neg_closed_moment",
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
  "slug": "actual-contracted-pairing-eq-neg-closed-moment--cae38daaa646f29469e33b83",
  "source": {
    "blob": "12842ee9938f8866f17f42c602e978d2cdc7fed8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualClosedXiSignedMoment/Variant88696e3674348d49cfa7cef0c3134e10d1e6200a4c2cb2c5a4e054b54ab1696b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae38daaa646f29469e33b836e00f7341ed37d9753ae1925fbaa42ce63b20419",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualClosedXiSignedMoment/Variant88696e3674348d49cfa7cef0c3134e10d1e6200a4c2cb2c5a4e054b54ab1696b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b270c20-4ae4-6cbe-3372-1a1626a7d089`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_contracted_pairing_eq_neg_closed_moment (A : ℝ) (hA : 1 ≤ A) :
    (∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) =
        -actualClosedXiSignedMoment A := by
  rw [actual_contracted_pairing_eq_primitive_IBP A hA]
  unfold actualClosedXiSignedMoment
  congr 1
  apply intervalIntegral.integral_congr
  intro t ht
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  rw [Set.uIcc_of_le hL] at ht
  have hY : (2 : ℝ) ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht.1
  rw [actualClosedXiSqrtReadout_eq_primitive (Real.exp t) hY, Real.log_exp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualClosedXiSignedMoment/Variant88696e3674348d49cfa7cef0c3134e10d1e6200a4c2cb2c5a4e054b54ab1696b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualClosedXiSignedMoment/Variant88696e3674348d49cfa7cef0c3134e10d1e6200a4c2cb2c5a4e054b54ab1696b.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12842ee9938f8866f17f42c602e978d2cdc7fed8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
