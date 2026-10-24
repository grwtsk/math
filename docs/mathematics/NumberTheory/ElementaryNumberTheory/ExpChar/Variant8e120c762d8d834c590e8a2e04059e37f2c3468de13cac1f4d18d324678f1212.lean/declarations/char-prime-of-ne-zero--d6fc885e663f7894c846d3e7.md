# char_prime_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38dfaa75-7b64-f094-fa95-dc41713dce99",
  "kind": "theorem",
  "lexical_name": "char_prime_of_ne_zero",
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
  "slug": "char-prime-of-ne-zero--d6fc885e663f7894c846d3e7",
  "source": {
    "blob": "511b20c02d483a5513cab335f3936ab063c527a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 104,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6fc885e663f7894c846d3e79f03bea1a79436919b377ab562caf52bc4de2522",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38dfaa75-7b64-f094-fa95-dc41713dce99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem char_prime_of_ne_zero {p : ℕ} [hp : CharP R p] (p_ne_zero : p ≠ 0) : Nat.Prime p := by
  cases' CharP.char_is_prime_or_zero R p with h h
  · exact h
  · contradiction
#align char_prime_of_ne_zero char_prime_of_ne_zero

/-- The exponential characteristic is a prime number or one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `511b20c02d483a5513cab335f3936ab063c527a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
