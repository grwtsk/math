# prod_divisors_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00d34c85-195f-6c60-cbea-9c58967e0c86",
  "kind": "theorem",
  "lexical_name": "prod_divisors_prime_pow",
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
  "slug": "prod-divisors-prime-pow--a7cc93a5e562071626cd949c",
  "source": {
    "blob": "2452289746e4e9e2cb6884ad32cee1cc207eb106",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 467,
    "path": "GRWTSK/Topology/GeneralTopology/Divisors/Variantbffa4c9bc03617a2bb0cc24ade59c45a53e529b83a5c71702a7a5d9ab0a0e88e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7cc93a5e562071626cd949ce65605e8d4cb4943b4bfc11761208d5b40eceef3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisors/Variantbffa4c9bc03617a2bb0cc24ade59c45a53e529b83a5c71702a7a5d9ab0a0e88e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00d34c85-195f-6c60-cbea-9c58967e0c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_divisors_prime_pow {α : Type*} [CommMonoid α] {k p : ℕ} {f : ℕ → α} (h : p.Prime) :
    (∏ x in (p ^ k).divisors, f x) = ∏ x in range (k + 1), f (p ^ x) := by
  simp [h, divisors_prime_pow]
#align nat.prod_divisors_prime_pow Nat.prod_divisors_prime_pow
#align nat.sum_divisors_prime_pow Nat.sum_divisors_prime_pow

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisors/Variantbffa4c9bc03617a2bb0cc24ade59c45a53e529b83a5c71702a7a5d9ab0a0e88e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisors/Variantbffa4c9bc03617a2bb0cc24ade59c45a53e529b83a5c71702a7a5d9ab0a0e88e.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2452289746e4e9e2cb6884ad32cee1cc207eb106` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
