# prime_in_square_of_rounded_records

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:421747e8-07ee-35c3-4b99-84c09606b2e7",
  "kind": "theorem",
  "lexical_name": "prime_in_square_of_rounded_records",
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
  "slug": "prime-in-square-of-rounded-records--6a168d14c7a510e66d0ecb12",
  "source": {
    "blob": "442bae71fd5c5f01d571f42de331aa098e0dd214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 106,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a168d14c7a510e66d0ecb121d274702482ade9753e209e9cf9151cda0b725ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:421747e8-07ee-35c3-4b99-84c09606b2e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_in_square_of_rounded_records (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 2 ≤ T)
    (records : ∀ z : ↥(heightHead T), PointEvaluation (squareCenter n) (squareRadius n) z.1.1)
    (rounded : ℂ) (roundingError : ℝ)
    (hround : ‖evaluatedHead (squareCenter n) (squareRadius n) T records - rounded‖ ≤ roundingError)
    (hmargin : 0 < canonicalPrimeMargin n T
      (rounded.re + (headError (squareCenter n) (squareRadius n) T records + roundingError))
      (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_canonical_tent n hn T hT _ _
    (norm_head_sub_rounded_le _ _ T (squareRadius_pos n) (square_tent_domain n hn)
      records rounded roundingError hround) hmargin

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalTentRecordEvaluation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `442bae71fd5c5f01d571f42de331aa098e0dd214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
