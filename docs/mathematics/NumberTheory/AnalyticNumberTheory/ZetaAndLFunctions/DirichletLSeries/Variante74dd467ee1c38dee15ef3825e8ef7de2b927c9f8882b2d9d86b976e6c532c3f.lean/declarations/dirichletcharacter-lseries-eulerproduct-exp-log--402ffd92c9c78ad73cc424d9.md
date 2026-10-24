# DirichletCharacter.LSeries_eulerProduct_exp_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "110bdfb26f239bda5757ddb342f083ee00973ae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb6dd33c-9bf2-aa6c-c517-649fe59e1e31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d10c7666-d72b-5d1c-1431-22722eb90cd6",
  "kind": "theorem",
  "lexical_name": "DirichletCharacter.LSeries_eulerProduct_exp_log",
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
  "slug": "dirichletcharacter-lseries-eulerproduct-exp-log--402ffd92c9c78ad73cc424d9",
  "source": {
    "blob": "110bdfb26f239bda5757ddb342f083ee00973ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 142,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:402ffd92c9c78ad73cc424d971847c359a193c0c416e43617ea6b38d594b4a91",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d10c7666-d72b-5d1c-1431-22722eb90cd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DirichletCharacter.LSeries_eulerProduct_exp_log {N : ℕ} (χ : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 1 < s.re) :
    exp (∑' p : Nat.Primes, -log (1 - χ p * p ^ (-s))) = L ↗χ s := by
  let f := dirichletSummandHom χ <| ne_zero_of_one_lt_re hs
  have h n : term ↗χ s n = f n := by
    rcases eq_or_ne n 0 with rfl | hn
    · simp only [term_zero, map_zero]
    · simp only [ne_eq, hn, not_false_eq_true, term_of_ne_zero, div_eq_mul_inv,
        dirichletSummandHom, cpow_neg, MonoidWithZeroHom.coe_mk, ZeroHom.coe_mk, f]
  simpa only [LSeries, h]
    using exp_tsum_primes_log_eq_tsum (f := f) <| summable_dirichletSummand χ hs

open DirichletCharacter

/-- A variant of the Euler product for the L-series of `ζ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLSeries/Variante74dd467ee1c38dee15ef3825e8ef7de2b927c9f8882b2d9d86b976e6c532c3f.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `110bdfb26f239bda5757ddb342f083ee00973ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
