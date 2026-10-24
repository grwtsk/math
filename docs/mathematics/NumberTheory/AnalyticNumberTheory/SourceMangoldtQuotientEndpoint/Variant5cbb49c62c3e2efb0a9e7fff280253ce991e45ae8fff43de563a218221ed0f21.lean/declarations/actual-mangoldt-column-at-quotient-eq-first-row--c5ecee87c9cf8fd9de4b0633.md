# actual_mangoldt_column_at_quotient_eq_first_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2ec3b9d-d370-c157-bfc0-ccc71ff2546e",
  "kind": "theorem",
  "lexical_name": "actual_mangoldt_column_at_quotient_eq_first_row",
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
  "slug": "actual-mangoldt-column-at-quotient-eq-first-row--c5ecee87c9cf8fd9de4b0633",
  "source": {
    "blob": "4918660c87c7c87574cf228f91705ccbbb9db390",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5cbb49c62c3e2efb0a9e7fff280253ce991e45ae8fff43de563a218221ed0f21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5ecee87c9cf8fd9de4b06334e48bc92de0f059fe93b5ab339d6333509f60088",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5cbb49c62c3e2efb0a9e7fff280253ce991e45ae8fff43de563a218221ed0f21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ec3b9d-d370-c157-bfc0-ccc71ff2546e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mangoldt_column_at_quotient_eq_first_row (A : ℝ) (hA : 1 ≤ A) :
    let U := vaughanCutoff A
    let K := sourceKernelCutoff A / (U + 1)
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * K : ℕ) : ℝ)) =
        vonMangoldt (U + 1) * sourcePlainWeight A (((U + 1) * K : ℕ) : ℝ) := by
  exact column_at_quotient A hA

/-- A uniform absolute bound for the single endpoint, not for the whole signed readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5cbb49c62c3e2efb0a9e7fff280253ce991e45ae8fff43de563a218221ed0f21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtQuotientEndpoint/Variant5cbb49c62c3e2efb0a9e7fff280253ce991e45ae8fff43de563a218221ed0f21.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4918660c87c7c87574cf228f91705ccbbb9db390` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
