# thetaPhiSignedMomentCompressionApproximation_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e97b644fd04d6a402e3ff47109e231e01d02663",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ec6a411-a76b-0de5-4827-66083db6d58b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8aeb519-7308-0be4-ced3-6a8c8c42c0eb",
  "kind": "theorem",
  "lexical_name": "thetaPhiSignedMomentCompressionApproximation_tendsto",
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
  "slug": "thetaphisignedmomentcompressionapproximation-tendsto--e729f5dd65219bf4127fc529",
  "source": {
    "blob": "3e97b644fd04d6a402e3ff47109e231e01d02663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 279,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e729f5dd65219bf4127fc52972f47de866e38a2ada85b1aa3e56a297c5484ead",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8aeb519-7308-0be4-ced3-6a8c8c42c0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiSignedMomentCompressionApproximation_tendsto
    (k N : ℕ) (t : ℝ) :
    Tendsto
      (fun L =>
        thetaPhiSignedMomentCompressionApproximation
          k L N t)
      atTop
      (𝓝
        (signedJetDet k
          (fun n =>
            thetaPhiDerivativeTapeTruncation
              N n t))) := by
  let c : ℝ :=
    (-1 : ℝ) ^ (k * (k - 1) / 2) *
      (-1 / 2 : ℝ) ^ k
  have h :=
    (thetaPhiSignedMomentChristoffel_det_tendsto
      k N t).const_mul c
  have hseq :
      (fun L =>
        thetaPhiSignedMomentCompressionApproximation
          k L N t) =
        (fun L =>
          c *
            Matrix.det
              (thetaPhiChristoffelHankel k
                (fun n =>
                  thetaPhiBaseSignedMomentTruncation
                    L N n t))) := by
    funext L
    rw [thetaPhiSignedMomentCompressionApproximation_eq]
  rw [hseq]
  simpa [c, signedJetDet_truncation_eq_christoffel] using h

/-- Projectively normalized theta parity-compression scalar. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c400ee84a525a62eda08803227d697a23841353424f3bf25d9ebefcd93fcefe.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e97b644fd04d6a402e3ff47109e231e01d02663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
