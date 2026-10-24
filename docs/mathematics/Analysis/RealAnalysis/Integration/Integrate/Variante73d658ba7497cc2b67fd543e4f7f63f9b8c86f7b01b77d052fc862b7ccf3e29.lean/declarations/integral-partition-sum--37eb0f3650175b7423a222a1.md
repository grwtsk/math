# integral_partition_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66817152-d152-ce24-9534-687679694890",
  "kind": "theorem",
  "lexical_name": "integral_partition_sum",
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
  "slug": "integral-partition-sum--37eb0f3650175b7423a222a1",
  "source": {
    "blob": "e31ac66ba8caa25b8a447a90a5bb70073f093845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 344,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37eb0f3650175b7423a222a17d4b93435cc72a308c130df85983304916410b58",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66817152-d152-ce24-9534-687679694890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_partition_sum (e : Expr) (I : IntervalRat) (n : ℕ) (hn : 0 < n)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e =
    ∑ k ∈ Finset.range n, ∫ x in (partitionPoints I n k)..(partitionPoints I n (k + 1)),
        Expr.eval (fun _ => x) e := by
  have h0 := partitionPoints_zero I n hn
  have hn_eq := partitionPoints_n I n hn
  conv_lhs => rw [← h0, ← hn_eq]
  symm
  apply intervalIntegral.sum_integral_adjacent_intervals
  intro k hk
  exact intervalIntegrable_partitionPoints e I n hn hInt k hk

/-! ### Summing interval bounds over partitions -/

/-- Each subinterval integral is bounded by integrateInterval1 on that subinterval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31ac66ba8caa25b8a447a90a5bb70073f093845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
