# zero_mean_prefix_period_claim_is_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3589e8b3-2fb1-d218-51f6-6c742941a534",
  "kind": "theorem",
  "lexical_name": "zero_mean_prefix_period_claim_is_false",
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
  "slug": "zero-mean-prefix-period-claim-is-false--f6bde84c237ab16102849e4f",
  "source": {
    "blob": "1b6d19e983e20c204373cb39b6a1c734fdbfd237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 62,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceBetaPrefixPeriodObstruction/Variantbc8b6ec78c541b41540941c9984ea4c63b6293c78db719acc0c9002c94bb761c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6bde84c237ab16102849e4ff371958eab5f5e3800d93f5179f8e199d8f5452b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceBetaPrefixPeriodObstruction/Variantbc8b6ec78c541b41540941c9984ea4c63b6293c78db719acc0c9002c94bb761c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3589e8b3-2fb1-d218-51f6-6c742941a534`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_mean_prefix_period_claim_is_false :
    ¬ ∀ a : ℕ, 2 ≤ a →
      (∑ k ∈ Finset.Icc (a + 1) (a + 2),
        ∑ n ∈ Finset.Ioc 2 k, centeredBeta 2 n) = 0 := by
  intro h
  have h2 := h 2 (by norm_num)
  have hp := prefix_period_two_nonzero_sum
  change (∑ k ∈ Finset.Icc 3 4, ∑ n ∈ Finset.Ioc 2 k, centeredBeta 2 n) = 0 at h2
  linarith

/-- The literal U=4 prefix at five is negative; all quotient casts stay separate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceBetaPrefixPeriodObstruction/Variantbc8b6ec78c541b41540941c9984ea4c63b6293c78db719acc0c9002c94bb761c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceBetaPrefixPeriodObstruction/Variantbc8b6ec78c541b41540941c9984ea4c63b6293c78db719acc0c9002c94bb761c.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b6d19e983e20c204373cb39b6a1c734fdbfd237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
