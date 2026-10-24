# sharpSamplingLedgerCost_lt_1729

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:269ba2d8-f02f-7547-7e69-647bc10cb8d1",
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
  "slug": "sharpsamplingledgercost-lt-1729--a7e027c39df4e029a8996506",
  "source": {
    "blob": "b59f5b9d0baa9d54204bfa0dc5895377189c5a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant0989bf8a4da88ec504ec4ad03ad2f41cdd1e58ca48a4277ad014e75a116230e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7e027c39df4e029a8996506601f3c25792fff3e5c732a470f68bf5449aaccbd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant0989bf8a4da88ec504ec4ad03ad2f41cdd1e58ca48a4277ad014e75a116230e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:269ba2d8-f02f-7547-7e69-647bc10cb8d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–63.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant0989bf8a4da88ec504ec4ad03ad2f41cdd1e58ca48a4277ad014e75a116230e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceSharpLedgerRadius/Variant0989bf8a4da88ec504ec4ad03ad2f41cdd1e58ca48a4277ad014e75a116230e1.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b59f5b9d0baa9d54204bfa0dc5895377189c5a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
