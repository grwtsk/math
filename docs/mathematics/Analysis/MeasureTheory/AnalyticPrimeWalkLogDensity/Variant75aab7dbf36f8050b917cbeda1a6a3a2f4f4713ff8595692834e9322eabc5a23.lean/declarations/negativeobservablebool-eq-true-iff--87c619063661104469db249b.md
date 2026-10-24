# negativeObservableBool_eq_true_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfa2cbd98f30b3729886d0cc257e41fd29ffd4c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a222495-197d-b509-c90f-ea5b6735e727",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e364a94f-78e2-989d-1b11-733119b4369f",
  "kind": "theorem",
  "lexical_name": "negativeObservableBool_eq_true_iff",
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
  "slug": "negativeobservablebool-eq-true-iff--87c619063661104469db249b",
  "source": {
    "blob": "bfa2cbd98f30b3729886d0cc257e41fd29ffd4c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 155,
    "path": "GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87c619063661104469db249b82b68a0a85261c29da04ed835238760fe3c5f3bb",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e364a94f-78e2-989d-1b11-733119b4369f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeObservableBool_eq_true_iff
    (model : AnalyticBridgeHypotheses) (K : ℕ) :
    negativeObservableBool model K = true ↔
      K ∈ negativeIndexedObservableEvent model := by
  simp [negativeObservableBool, negativeIndexedObservableEvent]

/-- Numeric indicator of the exact negative-observable event. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa2cbd98f30b3729886d0cc257e41fd29ffd4c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
