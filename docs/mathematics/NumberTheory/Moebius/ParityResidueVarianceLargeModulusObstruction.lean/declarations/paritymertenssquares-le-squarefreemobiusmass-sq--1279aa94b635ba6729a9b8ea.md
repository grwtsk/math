# parityMertensSquares_le_squarefreeMobiusMass_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8805504c-ff0a-6e6a-8d1b-18bd79d98f70",
  "kind": "theorem",
  "lexical_name": "parityMertensSquares_le_squarefreeMobiusMass_sq",
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
  "slug": "paritymertenssquares-le-squarefreemobiusmass-sq--1279aa94b635ba6729a9b8ea",
  "source": {
    "blob": "1d1ec38cf19de026fec5a6303c686037851a750f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1279aa94b635ba6729a9b8ea4c841c572632f16ed1eb810e981a3b414a36bf0d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8805504c-ff0a-6e6a-8d1b-18bd79d98f70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityMertensSquares_le_squarefreeMobiusMass_sq
    (b : ℕ) :
    parityMertensPrefix b 0 ^ 2 +
        parityMertensPrefix b 1 ^ 2 ≤
      squarefreeMobiusMass b ^ 2 := by
  have hq0 := paritySquarefreeDiagonal_nonneg b 0
  have hq1 := paritySquarefreeDiagonal_nonneg b 1
  have hm0 := abs_parityMertensPrefix_le_squarefreeDiagonal b 0
  have hm1 := abs_parityMertensPrefix_le_squarefreeDiagonal b 1
  have hs0 :
      parityMertensPrefix b 0 ^ 2 ≤
        paritySquarefreeDiagonal b 0 ^ 2 := by
    have hh := mul_le_mul hm0 hm0 (abs_nonneg _) hq0
    nlinarith [sq_abs (parityMertensPrefix b 0)]
  have hs1 :
      parityMertensPrefix b 1 ^ 2 ≤
        paritySquarefreeDiagonal b 1 ^ 2 := by
    have hh := mul_le_mul hm1 hm1 (abs_nonneg _) hq1
    nlinarith [sq_abs (parityMertensPrefix b 1)]
  rw [squarefreeMobiusMass_eq_parityDiagonals]
  nlinarith [mul_nonneg hq0 hq1]

/-- On one parity support, reduction of `floor(u/2)` modulo `d^2` is injective
as soon as `d^2` exceeds the complete half-endpoint range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityResidueVarianceLargeModulusObstruction.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1ec38cf19de026fec5a6303c686037851a750f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
