# dampedDivisorCoefficient_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5851b2e-5188-3d0f-6d52-2aa46fc60384",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_le_one",
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
  "slug": "dampeddivisorcoefficient-le-one--d19b6fdeddb4ba65f8221167",
  "source": {
    "blob": "28c1c4f01f9ad9dc9b3831cd9c4817d7df5d3603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 98,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d19b6fdeddb4ba65f82211679a8db371511e03b6b56be9502230ba3901df353f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5851b2e-5188-3d0f-6d52-2aa46fc60384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_le_one (ε : ℝ) (hε : 0 ≤ ε) (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient ε n ≤ 1 := by
  rw [dampedDivisorCoefficient_eq_primeFactors_prod ε n hn]
  apply Finset.prod_le_one
  · intro p hp
    have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast (Nat.prime_of_mem_primeFactors hp).one_le
    exact sub_nonneg.mpr (Real.exp_le_one_iff.mpr
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hε) (Real.log_nonneg hp1)))
  · intro p _
    exact sub_le_self _ (Real.exp_nonneg _)

/-- At zero damping the original divisor sum is exactly the unit arithmetic function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientStatements/Variant81627c4eb6ee526a4e9ed367957c38249befc4983cb3154f82e4fe3b17feb7f1.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c1c4f01f9ad9dc9b3831cd9c4817d7df5d3603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
