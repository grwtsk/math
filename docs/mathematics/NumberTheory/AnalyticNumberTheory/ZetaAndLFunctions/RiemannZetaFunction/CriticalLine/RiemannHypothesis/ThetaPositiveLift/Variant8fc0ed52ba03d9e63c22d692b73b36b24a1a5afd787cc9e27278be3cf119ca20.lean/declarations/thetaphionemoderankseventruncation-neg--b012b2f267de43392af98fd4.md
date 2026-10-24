# thetaPhiOneModeRankSevenTruncation_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70fcbe2f-122f-e0ff-221d-3b6749e0eb59",
  "kind": "theorem",
  "lexical_name": "thetaPhiOneModeRankSevenTruncation_neg",
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
  "slug": "thetaphionemoderankseventruncation-neg--b012b2f267de43392af98fd4",
  "source": {
    "blob": "8a8539100392c55527b93faee4403a811fe6b475",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 185,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b012b2f267de43392af98fd4c4f51a24b757636dbbeb368bb714ec816fefae9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70fcbe2f-122f-e0ff-221d-3b6749e0eb59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiOneModeRankSevenTruncation_neg
    (hbridge : ThetaPhiOneModeRankSevenCharlierBridge) :
    signedJetDet 7
        (fun n =>
          thetaPhiDerivativeTapeTruncation 1 n 0) < 0 := by
  have hfun :
      (fun n =>
        thetaPhiDerivativeTapeTruncation 1 n 0) =
        fun n =>
          thetaPhiFirstModeScale *
            (thetaPhiDerivativePolynomial n).eval Real.pi := by
    funext n
    exact thetaPhiDerivativeTapeTruncation_one_zero n
  rw [hfun, signedJetDet_const_mul]
  exact mul_neg_of_pos_of_neg
    (pow_pos thetaPhiFirstModeScale_pos 7)
    (thetaPhiOneModeRankSevenPolynomialJet_neg hbridge)

/-- Therefore proving the exact rank-seven Charlier determinant identity would
refute the present all-cutoff parity criterion.  This does not refute the
literal infinite theta source theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a8539100392c55527b93faee4403a811fe6b475` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
