# thetaPhiOneModeRankSevenTruncation_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e499bebb6a667ec1f538cd7f96e539a978023936",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:855b8a5c-9791-e514-5d64-b54ff82068e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09b4f6ef-6f17-3651-d6a4-d93b0e6533e6",
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
  "slug": "thetaphionemoderankseventruncation-neg--a436a44f9c4c4212b2331eba",
  "source": {
    "blob": "e499bebb6a667ec1f538cd7f96e539a978023936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 177,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a436a44f9c4c4212b2331ebae110d127610e57921ac3e2f6a0bf63d44be7e458",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09b4f6ef-6f17-3651-d6a4-d93b0e6533e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–197.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant6bc77d248394162823fc246143b1596fe6893403629f6610554574cad75f42d4.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e499bebb6a667ec1f538cd7f96e539a978023936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
