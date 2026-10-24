# prime_in_square_of_rational_threshold_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85f75155-9cee-0055-864a-6c1c16d9e175",
  "kind": "theorem",
  "lexical_name": "prime_in_square_of_rational_threshold_margin",
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
  "slug": "prime-in-square-of-rational-threshold-margin--7f88e4d240ee3b7708384fce",
  "source": {
    "blob": "3de8beb83f8aab9f60cc43e386cd5953ec1c0fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringRationalMargin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f88e4d240ee3b7708384fcea53a7f45c4ee443201cf6168cd0cb36e9028c4a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalPositiveTuringRationalMargin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85f75155-9cee-0055-864a-6c1c16d9e175`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_in_square_of_rational_threshold_margin
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (heightLog : DyadicInput packet.certificate.height)
    (stageLog : DyadicInput (((n + 1 : ℕ) : ℝ)))
    (cutoffLog : DyadicInput ((exponentCutoff n : ℕ) : ℝ))
    (zeroBits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (zeroLimit zeroClaimed : ℚ)
    (zeroAccepted : GRWTSK.Analysis.Complex.RationalRealPairUpperBound.verify
      (squareCenterQ n) (squareRadiusQ n) zeroBits rows
      zeroLimit zeroClaimed = true)
    (N correctionBits : ℕ)
    (correctionFloor correctionClaimed : ℚ)
    (correctionAccepted :
      verifySquareExact N n correctionBits
        correctionFloor correctionClaimed = true)
    (marginAccepted : RationalCanonicalPrimeMargin.accepts n
      heightLog stageLog cutoffLog zeroLimit correctionFloor = true) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hmargin := RationalCanonicalPrimeMargin.canonicalPrimeMargin_pos_of_accepts
    n hn hT heightLog stageLog cutoffLog zeroLimit correctionFloor
    marginAccepted
  exact prime_in_square_of_exact_prefix_thresholds
    n hn packet hT zeroBits rows zeroGap alignment
    zeroLimit zeroClaimed zeroAccepted
    N correctionBits correctionFloor correctionClaimed correctionAccepted
    hmargin

/-- Convenience specialization using exact direct log inputs for the two natural
logarithmic sources. The height log input remains explicit because certificate
heights need not be rational or integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalPositiveTuringRationalMargin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringRationalMargin.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de8beb83f8aab9f60cc43e386cd5953ec1c0fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
