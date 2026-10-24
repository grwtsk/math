# thetaPhiWhitenedParityCompression_det_nonnegative_of_halfThresholdParity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f2f2125-d115-c47e-441a-e3c19b5ce38d",
  "kind": "theorem",
  "lexical_name": "thetaPhiWhitenedParityCompression_det_nonnegative_of_halfThresholdParity",
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
  "slug": "thetaphiwhitenedparitycompression-det-nonnegative-of-halfthresholdparity--2016bde3dc58208848c5c0c7",
  "source": {
    "blob": "eb5aa29846757ef3a3c6c38c60f384ca6b2fb2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcd0114fa434ad6d16f983e78085b4ea6f6ca35a38defcac1d4c5ef9a2bfbdb73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2016bde3dc58208848c5c0c792972502e8beb6b614dfbd1091f33ee477f3120a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcd0114fa434ad6d16f983e78085b4ea6f6ca35a38defcac1d4c5ef9a2bfbdb73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f2f2125-d115-c47e-441a-e3c19b5ce38d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiWhitenedParityCompression_det_nonnegative_of_halfThresholdParity
    (hparity : ThetaPhiWhitenedHalfThresholdParity)
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤
      Matrix.det
        (thetaPhiWhitenedParityCompression k L N t) := by
  rw [thetaPhiWhitenedParityCompression_det_eq_halfShiftProduct
    hk hN t]
  let f : Fin k → ℝ :=
    fun i =>
      1 - 2 *
        thetaPhiWhitenedNegativeParityEigenvalue
          k L N t i
  change 0 ≤ ∏ i : Fin k, f i
  by_cases hz : ∃ i : Fin k, f i = 0
  · obtain ⟨i, hi⟩ := hz
    rw [Finset.prod_eq_zero (Finset.mem_univ i) hi]
  · have hnz : ∀ i : Fin k, f i ≠ 0 := by
      intro i hi
      exact hz ⟨i, hi⟩
    have hevenThreshold :
        Even
          (thetaPhiWhitenedHalfThresholdCount
            k L N t) :=
      hparity k L N t hk hN
    have hevenNegative :
        Even (Fintype.card {i : Fin k // f i < 0}) := by
      rw [←
        thetaPhiWhitenedHalfThresholdCount_eq_negativeFactorCount
          k L N t]
      exact hevenThreshold
    exact
      (fintypeProd_pos_of_even_negative_count
        f hnz hevenNegative).le

/-- The half-threshold parity criterion implies nonnegativity of the
basis-invariant normalized finite theta compression. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcd0114fa434ad6d16f983e78085b4ea6f6ca35a38defcac1d4c5ef9a2bfbdb73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantcd0114fa434ad6d16f983e78085b4ea6f6ca35a38defcac1d4c5ef9a2bfbdb73.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb5aa29846757ef3a3c6c38c60f384ca6b2fb2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
