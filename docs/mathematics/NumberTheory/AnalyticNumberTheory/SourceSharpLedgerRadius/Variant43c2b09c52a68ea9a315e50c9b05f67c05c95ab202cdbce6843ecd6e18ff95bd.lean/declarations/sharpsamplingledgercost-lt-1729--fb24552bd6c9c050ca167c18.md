# sharpSamplingLedgerCost_lt_1729

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57052615-0b17-a8b4-979c-ea09254a5212",
  "kind": "theorem",
  "lexical_name": "sharpSamplingLedgerCost_lt_1729",
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
  "slug": "sharpsamplingledgercost-lt-1729--fb24552bd6c9c050ca167c18",
  "source": {
    "blob": "55d962f160d91cecb16053ddf205b743ef9fe437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant43c2b09c52a68ea9a315e50c9b05f67c05c95ab202cdbce6843ecd6e18ff95bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb24552bd6c9c050ca167c18c8719e7aad2dd4b9d418dc2e16cb1a6989a8a05f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant43c2b09c52a68ea9a315e50c9b05f67c05c95ab202cdbce6843ecd6e18ff95bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57052615-0b17-a8b4-979c-ea09254a5212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sharpSamplingLedgerCost_lt_1729 (Q : ℝ) (hQ : 91 ≤ Q) :
    exactSamplingLedgerCost (sharpDiagonalCost Q) Q < 1729 :=
  (sharpSamplingLedgerCost_antitone (by norm_num : (91 : ℝ) ≤ 91) hQ).trans_lt
    exactSamplingLedgerCost_ninety_one_lt_1729

/-- A later readout radius retains its own original finite prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant43c2b09c52a68ea9a315e50c9b05f67c05c95ab202cdbce6843ecd6e18ff95bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant43c2b09c52a68ea9a315e50c9b05f67c05c95ab202cdbce6843ecd6e18ff95bd.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55d962f160d91cecb16053ddf205b743ef9fe437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
