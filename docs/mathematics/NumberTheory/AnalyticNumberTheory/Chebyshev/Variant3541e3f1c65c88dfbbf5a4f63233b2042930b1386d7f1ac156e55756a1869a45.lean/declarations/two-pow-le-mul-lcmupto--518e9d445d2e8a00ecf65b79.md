# two_pow_le_mul_lcmUpto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfdbd5bd-2515-fa6a-4cab-8b037ecdf85c",
  "kind": "theorem",
  "lexical_name": "two_pow_le_mul_lcmUpto",
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
  "slug": "two-pow-le-mul-lcmupto--518e9d445d2e8a00ecf65b79",
  "source": {
    "blob": "d5b14c82c28efbe9825a159c81cc676ea84d6ace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 211,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:518e9d445d2e8a00ecf65b7931529492da5a56ad444c4c2047995c78924753ff",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfdbd5bd-2515-fa6a-4cab-8b037ecdf85c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_pow_le_mul_lcmUpto (n : ℕ) : 2 ^ n ≤ (n + 1) * lcmUpto n := calc
  _ = ∑ m ∈ range (n + 1), n.choose m := (sum_range_choose _).symm
  _ ≤ ∑ k ∈ Finset.range (n + 1), lcmUpto n := by
    refine sum_le_sum fun k hk => ?_
    simp only [mem_range, Order.lt_add_one_iff] at hk
    exact Nat.le_of_dvd (lcmUpto_pos n) (choose_dvd_lcmUpto hk)
  _ = _ := by simp

/-- The Chebyshev lower bound for $\psi$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant3541e3f1c65c88dfbbf5a4f63233b2042930b1386d7f1ac156e55756a1869a45.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b14c82c28efbe9825a159c81cc676ea84d6ace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
