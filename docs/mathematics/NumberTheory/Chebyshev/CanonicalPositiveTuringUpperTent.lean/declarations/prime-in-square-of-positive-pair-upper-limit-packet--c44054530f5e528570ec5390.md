# prime_in_square_of_positive_pair_upper_limit_packet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:763e73a4-c793-477f-8cc0-6b786da7b199",
  "kind": "theorem",
  "lexical_name": "prime_in_square_of_positive_pair_upper_limit_packet",
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
  "slug": "prime-in-square-of-positive-pair-upper-limit-packet--c44054530f5e528570ec5390",
  "source": {
    "blob": "5eb9c74754671bfc770a94cc56b2e1b02fe09d5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 141,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44054530f5e528570ec5390177698ed4180382bcac1745c56eb9f9cd20b6bdc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:763e73a4-c793-477f-8cc0-6b786da7b199`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_in_square_of_positive_pair_upper_limit_packet
    (n : ℕ) (hn : 2 ≤ n)
    (packet : CanonicalPositiveTuringPacket family)
    (hT : 2 ≤ packet.certificate.height)
    (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (zeroGap : packet.certificate.gap = 0)
    (alignment : PositivePairRowAlignment packet rows)
    (limit claimed : ℚ)
    (accepted : GRWTSK.Analysis.Complex.RationalRealPairUpperBound.verify
      (squareCenterQ n) (squareRadiusQ n) bits rows limit claimed = true)
    (margin : 0 < canonicalPrimeMargin n packet.certificate.height
      (limit : ℝ) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have hzero := verified_limit_of_positive_pair_packet
    (squareCenterQ n) (squareRadiusQ n) bits rows packet zeroGap
    alignment limit claimed accepted
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at hzero
  exact prime_in_square_of_real_enclosures n hn packet.certificate.height hT
    (limit : ℝ) (-squareTrivialBudget n) hzero
    (squareTrivialCorrection_bounds n hn).1 margin

/-- Equality at the requested upper threshold does not create a strict prime
margin by itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalPositiveTuringUpperTent.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5eb9c74754671bfc770a94cc56b2e1b02fe09d5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
