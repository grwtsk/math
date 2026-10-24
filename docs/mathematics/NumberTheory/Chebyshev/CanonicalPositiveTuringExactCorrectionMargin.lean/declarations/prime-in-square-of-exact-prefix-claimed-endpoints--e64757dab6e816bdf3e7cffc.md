# prime_in_square_of_exact_prefix_claimed_endpoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7cf63b3-7e98-e8d8-88f7-f7e60f9b5349",
  "kind": "theorem",
  "lexical_name": "prime_in_square_of_exact_prefix_claimed_endpoints",
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
  "slug": "prime-in-square-of-exact-prefix-claimed-endpoints--e64757dab6e816bdf3e7cffc",
  "source": {
    "blob": "8f535a58769f474321569a4b5cdf376620bf2977",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 98,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringExactCorrectionMargin.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e64757dab6e816bdf3e7cffc5e7906ce34dfac24335db99213a6abaa6e62127e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalPositiveTuringExactCorrectionMargin.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7cf63b3-7e98-e8d8-88f7-f7e60f9b5349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_in_square_of_exact_prefix_claimed_endpoints
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
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
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      (zeroClaimed : ℝ) (correctionClaimed : ℝ)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hzero :=
    (verified_upper_of_positive_pair_packet
      (squareCenterQ n) (squareRadiusQ n) zeroBits rows packet zeroGap
      alignment zeroLimit zeroClaimed zeroAccepted).1
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at hzero
  have hcorr :=
    (verified_square_exact_correction_lower
      N n correctionBits correctionFloor correctionClaimed
      correctionAccepted).1
  exact prime_in_square_of_real_enclosures n hn packet.certificate.height hT
    (zeroClaimed : ℝ) (correctionClaimed : ℝ) hzero hcorr margin

/-- Compose preselected verified thresholds. The exact prefix evaluator has
removed the semantic prefix-enclosure input, but strict margin positivity remains
an independent theorem premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalPositiveTuringExactCorrectionMargin.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringExactCorrectionMargin.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f535a58769f474321569a4b5cdf376620bf2977` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
