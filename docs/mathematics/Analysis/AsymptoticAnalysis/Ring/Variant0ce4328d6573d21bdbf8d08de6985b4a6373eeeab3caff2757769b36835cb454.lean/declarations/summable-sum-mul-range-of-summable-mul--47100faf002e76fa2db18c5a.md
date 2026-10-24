# summable_sum_mul_range_of_summable_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1578fd4-3472-7fba-bd2b-1ee56b48aae7",
  "kind": "theorem",
  "lexical_name": "summable_sum_mul_range_of_summable_mul",
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
  "slug": "summable-sum-mul-range-of-summable-mul--47100faf002e76fa2db18c5a",
  "source": {
    "blob": "d9e328f49ab5ed8fb7e76b20f1d60b82f364a8c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 236,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47100faf002e76fa2db18c5a09de70076b20392924f61a0b4d9a081641d9fd60",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1578fd4-3472-7fba-bd2b-1ee56b48aae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_sum_mul_range_of_summable_mul (h : Summable fun x : ℕ × ℕ => f x.1 * g x.2) :
    Summable fun n => ∑ k in range (n + 1), f k * g (n - k) := by
  simp_rw [← Nat.sum_antidiagonal_eq_sum_range_succ fun k l => f k * g l]
  exact summable_sum_mul_antidiagonal_of_summable_mul h
#align summable_sum_mul_range_of_summable_mul summable_sum_mul_range_of_summable_mul

/-- The **Cauchy product formula** for the product of two infinites sums indexed by `ℕ`, expressed
by summing on `Finset.range`.

See also `tsum_mul_tsum_eq_tsum_sum_range_of_summable_norm` if `f` and `g` are absolutely summable.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variant0ce4328d6573d21bdbf8d08de6985b4a6373eeeab3caff2757769b36835cb454.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9e328f49ab5ed8fb7e76b20f1d60b82f364a8c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
