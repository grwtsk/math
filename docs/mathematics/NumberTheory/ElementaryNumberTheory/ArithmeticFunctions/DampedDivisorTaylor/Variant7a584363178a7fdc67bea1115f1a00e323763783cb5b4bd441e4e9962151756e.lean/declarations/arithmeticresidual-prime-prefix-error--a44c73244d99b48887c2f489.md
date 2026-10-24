# arithmeticResidual_prime_prefix_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aef7db06-c9f8-d48c-c69b-cdc3eff1f698",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_prime_prefix_error",
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
  "slug": "arithmeticresidual-prime-prefix-error--a44c73244d99b48887c2f489",
  "source": {
    "blob": "9725180b7b095218f1b503b2d6248d53fa50ee57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 113,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a44c73244d99b48887c2f48921011965fd9c5c1ac89c624c4cf13b64c9179690",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aef7db06-c9f8-d48c-c69b-cdc3eff1f698`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_prime_prefix_error (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X)
    (hε : 0 ≤ ε) (hx : 1 ≤ x) (hxX : x < X) :
    ‖arithmeticResidual X ε x - ((x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
      (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ))‖ ≤
        ε ^ 2 * x * Real.log x ^ 2 := by
  rw [arithmeticResidual_eq_divisor_prefix X ε x hX hx hxX]
  have he : (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
      ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) -
      ((x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
        (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) =
      -(((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) := by
    push_cast
    ring
  rw [he, norm_neg, Complex.norm_real, Real.norm_eq_abs]
  exact dampedDivisorCoefficient_real_prefix_first_order ε hε x hx

end
end DampedDivisorTaylorScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorTaylor/Variant7a584363178a7fdc67bea1115f1a00e323763783cb5b4bd441e4e9962151756e.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9725180b7b095218f1b503b2d6248d53fa50ee57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
