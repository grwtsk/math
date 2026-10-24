# exists_prime_lt_and_le_two_mul_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25029ababf90aa3d54a7b483c01bb6c0c4ddb9aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d873766-a153-ade1-643b-daf1089534cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ef022ab-2c35-7561-a15e-b8206f24aa6f",
  "kind": "theorem",
  "lexical_name": "exists_prime_lt_and_le_two_mul_eventually",
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
  "slug": "exists-prime-lt-and-le-two-mul-eventually--f2b6faffa2100663b31818e1",
  "source": {
    "blob": "25029ababf90aa3d54a7b483c01bb6c0c4ddb9aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 196,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2b6faffa2100663b31818e18a3cf82b36ab9ffb199cf7167934d8d4e54aa1e4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ef022ab-2c35-7561-a15e-b8206f24aa6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_prime_lt_and_le_two_mul_eventually (n : ℕ) (n_large : 512 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ n < p ∧ p ≤ 2 * n := by
  have no_prime : 4 ^ n < n * n.centralBinom :=
    Nat.four_pow_lt_mul_centralBinom n (le_trans (by norm_num1) n_large)
  -- Assume there is no prime in the range.
  contrapose! no_prime
  -- Then we have the above sub-exponential bound on the size of this central binomial coefficient.
  -- We now couple this bound with an exponential lower bound on the central binomial coefficient,
  -- yielding an inequality which we have seen is false for large enough n.
  have : n.centralBinom ≤ (2 * n) ^ sqrt (2 * n) * 4 ^ (2 * n / 3) :=
    centralBinom_le_of_no_bertrand_prime n (lt_of_lt_of_le (by norm_num1) n_large) no_prime
  grw [this, ← mul_assoc, bertrand_main_inequality n_large]

/-- Proves that Bertrand's postulate holds over all positive naturals less than n by identifying a
descending list of primes, each no more than twice the next, such that the list contains a witness
for each number ≤ n.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25029ababf90aa3d54a7b483c01bb6c0c4ddb9aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
