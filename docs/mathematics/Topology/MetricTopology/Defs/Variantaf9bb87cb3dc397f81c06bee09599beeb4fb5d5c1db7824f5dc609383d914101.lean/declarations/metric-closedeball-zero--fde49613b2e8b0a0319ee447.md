# Metric.closedEBall_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cccabd65-ef78-7911-de91-80c5d8d5384a",
  "kind": "lemma",
  "lexical_name": "Metric.closedEBall_zero",
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
  "slug": "metric-closedeball-zero--fde49613b2e8b0a0319ee447",
  "source": {
    "blob": "9e1adc511024766f5e38859b9c7daf25e454da0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 835,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fde49613b2e8b0a0319ee447733b3f66b5d99b314464faa0c1a6e452bf4ad395",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cccabd65-ef78-7911-de91-80c5d8d5384a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 835–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma Metric.closedEBall_zero (x : γ) : closedEBall x 0 = {x} := by ext; simp

/-- Two points coincide if their distance is `< ε` for all positive ε -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variantaf9bb87cb3dc397f81c06bee09599beeb4fb5d5c1db7824f5dc609383d914101.lean#L835).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e1adc511024766f5e38859b9c7daf25e454da0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
