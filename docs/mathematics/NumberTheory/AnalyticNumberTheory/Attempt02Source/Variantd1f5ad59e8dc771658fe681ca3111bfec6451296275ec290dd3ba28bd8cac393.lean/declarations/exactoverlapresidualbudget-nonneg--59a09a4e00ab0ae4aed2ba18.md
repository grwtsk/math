# exactOverlapResidualBudget_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f21880f-794e-a93b-18d6-de9dafd5477f",
  "kind": "theorem",
  "lexical_name": "exactOverlapResidualBudget_nonneg",
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
  "slug": "exactoverlapresidualbudget-nonneg--59a09a4e00ab0ae4aed2ba18",
  "source": {
    "blob": "7c23990bb38bcb5b77a4a27e872b4e4a7e494265",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59a09a4e00ab0ae4aed2ba18041b3541398bc5ce25e1d8ec00736d40ea40f16f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f21880f-794e-a93b-18d6-de9dafd5477f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactOverlapResidualBudget_nonneg (D Q C_F : ℝ) :
    0 ≤ exactOverlapResidualBudget D Q C_F := le_max_left _ _

/-- All original source counterterms stay in the imported joint overlap and ledger identities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantd1f5ad59e8dc771658fe681ca3111bfec6451296275ec290dd3ba28bd8cac393.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c23990bb38bcb5b77a4a27e872b4e4a7e494265` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
