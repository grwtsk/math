# prime_in_square_of_accumulated_rounded_inputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06783cad-0aa3-3df4-f309-3295d5073ad2",
  "kind": "theorem",
  "lexical_name": "prime_in_square_of_accumulated_rounded_inputs",
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
  "slug": "prime-in-square-of-accumulated-rounded-inputs--01ee8be85bc24b7db9081fb9",
  "source": {
    "blob": "be15c5e4d545255c9f2b4d366b2afff4768cbc0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01ee8be85bc24b7db9081fb9a9654e0346ccb083a8a1c71888413618fcbba499",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06783cad-0aa3-3df4-f309-3295d5073ad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_in_square_of_accumulated_rounded_inputs (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T)
    (inputs : ∀ z : ↥(heightHead T), PointInput (squareCenter n) (squareRadius n) z.1.1)
    (rounded : ℂ) (roundingError : ℝ)
    (hround : ‖roundedHead (squareCenter n) (squareRadius n) T inputs - rounded‖ ≤ roundingError)
    (hmargin : 0 < canonicalPrimeMargin n T
      (rounded.re + (roundedHeadError (squareCenter n) (squareRadius n) T inputs + roundingError))
      (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 :=
  prime_in_square_of_canonical_tent n hn T hT _ _
    (norm_head_sub_rounded_le _ _ T (squareRadius_pos n) (square_tent_domain n hn)
      inputs rounded roundingError hround) hmargin

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalTentRoundedEvaluation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalTentRoundedEvaluation.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be15c5e4d545255c9f2b4d366b2afff4768cbc0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
