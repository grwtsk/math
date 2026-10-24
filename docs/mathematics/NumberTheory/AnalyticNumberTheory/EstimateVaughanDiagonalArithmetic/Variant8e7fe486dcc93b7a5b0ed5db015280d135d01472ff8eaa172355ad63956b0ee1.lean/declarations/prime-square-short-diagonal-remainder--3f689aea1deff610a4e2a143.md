# prime_square_short_diagonal_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a9545a441762427a0a4edc9ddd4e8cea379bba6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87e8f611-9815-0d4e-0bf5-4a30eb61d383",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cbecdb6-8b6a-0c8d-d290-4270a0372281",
  "kind": "theorem",
  "lexical_name": "prime_square_short_diagonal_remainder",
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
  "slug": "prime-square-short-diagonal-remainder--3f689aea1deff610a4e2a143",
  "source": {
    "blob": "6a9545a441762427a0a4edc9ddd4e8cea379bba6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f689aea1deff610a4e2a14313f7c0141fb4432408007b912e71e8f5071e47f3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cbecdb6-8b6a-0c8d-d290-4270a0372281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_square_short_diagonal_remainder (U p : ℕ) (hU : 1 ≤ U)
    (hp : p.Prime) (hUp : U < p) (w : ℝ) :
    shortVaughanCoefficient U (p ^ 2) * w +
      (vonMangoldt p * beta U p) * w = Real.log (p : ℝ) * w := by
  rw [short_prime_square_coefficient U p hU hp hUp,
    long_diagonal_prime_coefficient U p hU hp hUp]
  ring

/-- The mismatch is nonzero at coefficient level; no sign of the eventual kernel is inferred. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanDiagonalArithmetic/Variant8e7fe486dcc93b7a5b0ed5db015280d135d01472ff8eaa172355ad63956b0ee1.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9545a441762427a0a4edc9ddd4e8cea379bba6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
