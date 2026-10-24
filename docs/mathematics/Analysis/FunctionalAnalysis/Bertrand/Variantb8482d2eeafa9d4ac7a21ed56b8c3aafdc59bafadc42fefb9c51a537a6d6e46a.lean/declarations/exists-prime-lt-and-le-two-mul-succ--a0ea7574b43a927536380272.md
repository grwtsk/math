# exists_prime_lt_and_le_two_mul_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0440b2dd-6ae0-0635-9a78-cadbfbe5486e",
  "kind": "theorem",
  "lexical_name": "exists_prime_lt_and_le_two_mul_succ",
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
  "slug": "exists-prime-lt-and-le-two-mul-succ--a0ea7574b43a927536380272",
  "source": {
    "blob": "5a6443353b90c3a5fd596efbdeb81f8d7b49ae73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 221,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0ea7574b43a927536380272c8354bba94b54eafd684f636c0e03ebd170910e4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0440b2dd-6ae0-0635-9a78-cadbfbe5486e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_prime_lt_and_le_two_mul_succ {n} (q) {p : ℕ} (prime_p : Nat.Prime p)
    (covering : p ≤ 2 * q) (H : n < q → ∃ p : ℕ, p.Prime ∧ n < p ∧ p ≤ 2 * n) (hn : n < p) :
    ∃ p : ℕ, p.Prime ∧ n < p ∧ p ≤ 2 * n := by
  grind

/--
**Bertrand's Postulate**: For any positive natural number, there is a prime which is greater than
it, but no more than twice as large.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a6443353b90c3a5fd596efbdeb81f8d7b49ae73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
