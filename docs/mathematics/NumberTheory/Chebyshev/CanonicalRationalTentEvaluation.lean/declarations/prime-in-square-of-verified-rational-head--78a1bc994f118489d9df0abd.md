# prime_in_square_of_verified_rational_head

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3273e160-fc7a-94dc-1594-0a3637fcbe1f",
  "kind": "theorem",
  "lexical_name": "prime_in_square_of_verified_rational_head",
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
  "slug": "prime-in-square-of-verified-rational-head--78a1bc994f118489d9df0abd",
  "source": {
    "blob": "b653ff059eb5a3cb90707f04c5cf69c37e83bb64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78a1bc994f118489d9df0abd6be8e1870ca8bab7103294c0f638ce2f44582662",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3273e160-fc7a-94dc-1594-0a3637fcbe1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_in_square_of_verified_rational_head (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (binding : HeadBinding T rows) (tolerance : ℚ) (out : State)
    (hv : verify (squareCenterQ n) (squareRadiusQ n) bits rows tolerance out = true)
    (hmargin : 0 < canonicalPrimeMargin n T
      ((QComplex.embed out.value).re + (out.error : ℝ)) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have he := (verified_head_sound (squareCenterQ n) (squareRadiusQ n) T bits
    rows binding tolerance out hv).1
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at he
  exact prime_in_square_of_canonical_tent n hn T hT (QComplex.embed out.value)
    (out.error : ℝ) he hmargin

end GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b653ff059eb5a3cb90707f04c5cf69c37e83bb64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
