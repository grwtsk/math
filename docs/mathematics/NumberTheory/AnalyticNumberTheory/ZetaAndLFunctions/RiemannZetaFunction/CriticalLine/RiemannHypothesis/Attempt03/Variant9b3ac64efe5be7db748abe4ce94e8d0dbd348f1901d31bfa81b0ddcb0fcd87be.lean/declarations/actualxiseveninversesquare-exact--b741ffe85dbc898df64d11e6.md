# actualXiSevenInverseSquare_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79e44149-eac7-7977-cd39-835a8fc1c3ef",
  "kind": "theorem",
  "lexical_name": "actualXiSevenInverseSquare_exact",
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
  "slug": "actualxiseveninversesquare-exact--b741ffe85dbc898df64d11e6",
  "source": {
    "blob": "a2df3777906a2d0eaf5222bb25b1699903f89e17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9b3ac64efe5be7db748abe4ce94e8d0dbd348f1901d31bfa81b0ddcb0fcd87be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b741ffe85dbc898df64d11e6411ea1593fe185f63f5420934c45f7977ee23a41",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9b3ac64efe5be7db748abe4ce94e8d0dbd348f1901d31bfa81b0ddcb0fcd87be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79e44149-eac7-7977-cd39-835a8fc1c3ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiSevenInverseSquare_exact {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ y in (7 : ℝ)..Real.exp T, shiftedActualChebyshev y / y ^ 2) =
      mangoldtLogError T - mangoldtLogError (Real.log 7) -
        shiftedActualChebyshev (Real.exp T) / Real.exp T + shiftedActualChebyshev 7 / 7 := by
  have he7 := shiftedActualChebyshev_inverse_square 7 (by norm_num : (2 : ℝ) ≤ 7)
  have heT := shiftedActualChebyshev_inverse_square (Real.exp T)
    (by linarith [physical_lower hT] : 2 ≤ Real.exp T)
  have hi7 := shiftedActualChebyshev_inverseSquare_intervalIntegrable 7 (by norm_num)
  have hiT := shiftedActualChebyshev_inverseSquare_intervalIntegrable (Real.exp T)
    (by linarith [physical_lower hT])
  have hj := intervalIntegral.integral_interval_sub_left hiT hi7
  rw [he7, heT, Real.log_exp] at hj
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9b3ac64efe5be7db748abe4ce94e8d0dbd348f1901d31bfa81b0ddcb0fcd87be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9b3ac64efe5be7db748abe4ce94e8d0dbd348f1901d31bfa81b0ddcb0fcd87be.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2df3777906a2d0eaf5222bb25b1699903f89e17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
