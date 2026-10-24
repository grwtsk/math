# divisorFunction_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50ce6d7eaea5ceb2900d17a02fa0d1d2296c6179",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f108ecd7-2eca-7040-a050-917272b790d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4b8ae8a-038c-6267-e9c1-c81c445b1c65",
  "kind": "theorem",
  "lexical_name": "divisorFunction_prime_pow",
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
  "slug": "divisorfunction-prime-pow--329545acf4676dd00913cf60",
  "source": {
    "blob": "50ce6d7eaea5ceb2900d17a02fa0d1d2296c6179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:329545acf4676dd00913cf60f8680b841e46407d81b78ae211183a86a0bea179",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4b8ae8a-038c-6267-e9c1-c81c445b1c65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem divisorFunction_prime_pow (ε : ℝ) (p k : ℕ) (hp : p.Prime) :
    divisorFunction ε (p ^ (k + 1)) = 1 - Real.exp (-ε * Real.log (p : ℝ)) := by
  rw [divisorFunction_apply, dampedDivisorCoefficient, Nat.sum_divisors_prime_pow hp,
    Finset.sum_range_succ']
  simp only [pow_zero, ArithmeticFunction.moebius_apply_one, Int.cast_one, Nat.cast_one,
    Real.log_one, mul_zero, Real.exp_zero, mul_one]
  have hf (i : ℕ) : (ArithmeticFunction.moebius (p ^ (i + 1)) : ℝ) *
      Real.exp (-ε * Real.log ((p ^ (i + 1) : ℕ) : ℝ)) =
      if i = 0 then -Real.exp (-ε * Real.log (p : ℝ)) else 0 := by
    rw [ArithmeticFunction.moebius_apply_prime_pow hp (Nat.succ_ne_zero i)]
    by_cases hi : i = 0
    · simp [hi]
    · simp [hi]
  simp_rw [hf]
  simp
  ring

/-- Every positive integer retains the exact finite product over all its distinct prime factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantbe4512995cea5660712a67309bf471ed418f97f0143c1b0b67e5ec40da51e103.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50ce6d7eaea5ceb2900d17a02fa0d1d2296c6179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
