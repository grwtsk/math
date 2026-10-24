# thetaPhiWhitenedParityCompression_det_nonnegative_of_halfThresholdParity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3df20e8071d83dbf8533037b5f0908a471f31df6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f04e348a-c16a-8c2e-4de4-8413f7db330e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13229d5f-b556-fdb5-49e5-ec4ffde83fa7",
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
  "slug": "thetaphiwhitenedparitycompression-det-nonnegative-of-halfthresholdparity--571acb722e7a984cd15e453e",
  "source": {
    "blob": "3df20e8071d83dbf8533037b5f0908a471f31df6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:571acb722e7a984cd15e453ec1bbdaad020371451dd73e8832faf0ce272b69ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13229d5f-b556-fdb5-49e5-ec4ffde83fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–147.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantd8491ad9e45d094491a48c96dc1ffcae7fe8bba4265db2d6616422b7507018be.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3df20e8071d83dbf8533037b5f0908a471f31df6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
