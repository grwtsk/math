# quotientSupported_of_contains_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f64cd95dc5a5ab497e89be3c8000e2f541cd3f8d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:508cf7bb-3e45-c984-b8bd-477528919fcf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9625374-fd17-6c6c-d613-8056023e8864",
  "kind": "theorem",
  "lexical_name": "quotientSupported_of_contains_primes",
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
  "slug": "quotientsupported-of-contains-primes--af048d19b197b6effa028dd0",
  "source": {
    "blob": "f64cd95dc5a5ab497e89be3c8000e2f541cd3f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af048d19b197b6effa028dd092c7434ba72a996af87469f2f78268eee4c1b806",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9625374-fd17-6c6c-d613-8056023e8864`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotientSupported_of_contains_primes (P : Finset ℕ) (N i j : ℕ)
    (hP : ∀ p : ℕ, Nat.Prime p → p ≤ N → p ∈ P) (hi : i ≤ N) (hj : j ≤ N) :
    quotientSupported P i j := by
  constructor
  · intro p hp
    exact hP p (Nat.prime_of_mem_primeFactors hp)
      ((Nat.le_of_mem_primeFactors hp).trans ((Nat.div_le_self i (Nat.gcd i j)).trans hi))
  · intro p hp
    exact hP p (Nat.prime_of_mem_primeFactors hp)
      ((Nat.le_of_mem_primeFactors hp).trans ((Nat.div_le_self j (Nat.gcd i j)).trans hj))

/-- Exhausting the quotient primes recovers the complete original Möbius remainder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f64cd95dc5a5ab497e89be3c8000e2f541cd3f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
