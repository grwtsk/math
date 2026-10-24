# divisorFunction_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6801f26e-0021-b537-2a11-9b8fbf5e126c",
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
  "slug": "divisorfunction-prime-pow--0c7f758a99f57ff8e6979480",
  "source": {
    "blob": "8dd62d544840a30cf1cf13331810ba7f56022433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c7f758a99f57ff8e6979480090dc675bbe17d1d72520b65c35ba2c5f724c309",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6801f26e-0021-b537-2a11-9b8fbf5e126c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerAudit/Variantd397c851f779aa3f009d2b5ba80423b43b9249534100d268113094a6c361c17b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd62d544840a30cf1cf13331810ba7f56022433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
