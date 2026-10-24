# thetaPhiWhitenedParityCompression_eq_one_sub_two_negativeGram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e094409-0dbe-6d8b-f281-02c3ce767773",
  "kind": "theorem",
  "lexical_name": "thetaPhiWhitenedParityCompression_eq_one_sub_two_negativeGram",
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
  "slug": "thetaphiwhitenedparitycompression-eq-one-sub-two-negativegram--fa23e0392bf4330ecc67b2b9",
  "source": {
    "blob": "827683e664c1b55121d5efdaf73570dbdb95559d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c86a77664cab22cf0557d46e283b933ff345d3f523cc433ce0f957563730588.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa23e0392bf4330ecc67b2b9cb17195daab3056329f384c0821f9dd54b251daa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c86a77664cab22cf0557d46e283b933ff345d3f523cc433ce0f957563730588.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e094409-0dbe-6d8b-f281-02c3ce767773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWhitenedParityCompression_eq_one_sub_two_negativeGram
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedParityCompression k L N t =
      (1 : Matrix (Fin k) (Fin k) ℝ) -
        (2 : ℝ) •
          thetaPhiWhitenedNegativeParityGram k L N t := by
  let B := thetaPhiWhitenedKrylovFrame k L N t
  let Q := thetaPhiNegativeParityProjector L
  have hBB :
      B * B.transpose =
        (1 : Matrix (Fin k) (Fin k) ℝ) := by
    dsimp [B]
    exact thetaPhiWhitenedKrylovFrame_gram hk hN t
  unfold thetaPhiWhitenedParityCompression
    FormalResearch.PositiveAtlas.Grassmannian.involutionCompressionGram
    thetaPhiWhitenedNegativeParityGram
  rw [thetaPhiParityInvolution_eq_one_sub_two_negativeProjector]
  change
    B * ((1 : Matrix (Fin L) (Fin L) ℝ) - (2 : ℝ) • Q) *
        B.transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ) -
        (2 : ℝ) • (B * Q * B.transpose)
  rw [Matrix.mul_sub, Matrix.sub_mul]
  simp only [Matrix.mul_one, hBB]
  rw [Matrix.mul_smul, Matrix.smul_mul]

/-- Number of eigenvalues of the positive odd-support compression above the
halfway threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c86a77664cab22cf0557d46e283b933ff345d3f523cc433ce0f957563730588.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant3c86a77664cab22cf0557d46e283b933ff345d3f523cc433ce0f957563730588.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `827683e664c1b55121d5efdaf73570dbdb95559d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
