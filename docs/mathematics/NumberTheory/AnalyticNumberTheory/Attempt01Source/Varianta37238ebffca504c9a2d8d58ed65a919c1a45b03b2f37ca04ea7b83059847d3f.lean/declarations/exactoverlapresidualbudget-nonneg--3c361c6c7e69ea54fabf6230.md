# exactOverlapResidualBudget_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee0ecf94-fa18-31b0-60c5-3feffb7a5dc8",
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
  "slug": "exactoverlapresidualbudget-nonneg--3c361c6c7e69ea54fabf6230",
  "source": {
    "blob": "3cced8eaccaa77f9e81a205514fde9f58f482cfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c361c6c7e69ea54fabf62301c5e0bfa1e5783b513c7208efa437a1b79f2c55b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee0ecf94-fa18-31b0-60c5-3feffb7a5dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactOverlapResidualBudget_nonneg (D Q C_F : ℝ) :
    0 ≤ exactOverlapResidualBudget D Q C_F := le_max_left _ _

/-- All original source counterterms stay in the imported joint overlap and ledger identities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt01Source/Varianta37238ebffca504c9a2d8d58ed65a919c1a45b03b2f37ca04ea7b83059847d3f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cced8eaccaa77f9e81a205514fde9f58f482cfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
