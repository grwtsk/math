# squareRemovedPairedWork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:036b9177f3a72601241dec55a343575bb14ba42ec4dfa28cd74db5063a4e7d8b",
  "kind": "def",
  "lexical_name": "squareRemovedPairedWork",
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
  "slug": "squareremovedpairedwork--0b9d486634f1a62ef534a69f",
  "source": {
    "blob": "943bd30d06a783e5143ad37a77bd0ca58ed90697",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 210,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b9d486634f1a62ef534a69f20fca3605421137efcd7b3cf1959fc9e44f3c16d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:036b9177f3a72601241dec55a343575bb14ba42ec4dfa28cd74db5063a4e7d8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def squareRemovedPairedWork (A : ℝ) : ℝ :=
  (∫ u in 0..2*A, (primeLogError u - squareTail u) * positiveSlope A u) -
    positiveMass A * ((∫ u in 0..2*A,
      (primeLogError u - squareTail u) * negativeSlope A u) / negativeMass A)

/-- Independent data, not a definition from the residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DraftV2BeforeSeriesOrder/Variant04fec22dbebc1243d171bd518770b9069f06dadb17a5d3df4418f108fa8fd92c.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943bd30d06a783e5143ad37a77bd0ca58ed90697` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
