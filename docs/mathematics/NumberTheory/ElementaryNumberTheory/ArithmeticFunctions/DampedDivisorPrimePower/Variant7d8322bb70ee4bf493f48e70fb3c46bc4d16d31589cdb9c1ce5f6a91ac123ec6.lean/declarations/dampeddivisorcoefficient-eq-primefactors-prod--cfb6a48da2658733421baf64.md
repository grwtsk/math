# dampedDivisorCoefficient_eq_primeFactors_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f437d28b10e4f6afece0ddace38a3e798837aec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9ead278-a06a-1f49-433f-6ce092589dae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c3e1f19-dab9-777b-3b48-e52aa5d72c05",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_eq_primeFactors_prod",
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
  "slug": "dampeddivisorcoefficient-eq-primefactors-prod--cfb6a48da2658733421baf64",
  "source": {
    "blob": "6f437d28b10e4f6afece0ddace38a3e798837aec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfb6a48da2658733421baf64ddd85dc461ae85e539560d7c41bce919b42a09e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c3e1f19-dab9-777b-3b48-e52aa5d72c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_eq_primeFactors_prod (ε : ℝ) (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient ε n =
      ∏ p ∈ n.primeFactors, (1 - Real.exp (-ε * Real.log (p : ℝ))) := by
  rw [← divisorFunction_apply]
  rw [(divisorFunction_multiplicative ε).multiplicative_factorization _ (by omega : n ≠ 0)]
  apply Finset.prod_congr n.support_factorization
  intro p hp
  have hpp := Nat.prime_of_mem_primeFactors hp
  have hk : 0 < n.factorization p := Nat.pos_of_ne_zero (Finsupp.mem_support_iff.mp hp)
  obtain ⟨k, hk⟩ := Nat.exists_eq_succ_of_ne_zero hk.ne'
  rw [hk]
  exact divisorFunction_prime_pow ε p k hpp

/-- Nonnegative damping makes every actual divisor coefficient nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePower/Variant7d8322bb70ee4bf493f48e70fb3c46bc4d16d31589cdb9c1ce5f6a91ac123ec6.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f437d28b10e4f6afece0ddace38a3e798837aec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
