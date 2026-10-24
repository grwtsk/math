# plane_chart_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbf0770f-5f0a-b404-77ad-bd340d21ef69",
  "kind": "theorem",
  "lexical_name": "plane_chart_injective",
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
  "slug": "plane-chart-injective--0ea6203599c9ee1f53b57d0d",
  "source": {
    "blob": "7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 705,
    "line": 695,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ea6203599c9ee1f53b57d0d1158c053cb8bedb5b9351f9743315d06346b6191",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbf0770f-5f0a-b404-77ad-bd340d21ef69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 695–705.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plane_chart_injective : Function.Injective planeChart := by
  intro p q h
  have h₀ := congrArg (fun x : Space => x 1) h
  have h₁ := congrArg (fun x : Space => x 2) h
  apply PiLp.ext
  intro i
  fin_cases i
  · simpa [planeChart, axis] using h₀
  · simpa [planeChart, axis] using h₁

/-- The cylinder chart has no repeated points on the fixed parameter rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InterfaceState/Variant94bda8e92534f84dc5d32d125b8d101850884998a61373c305611b9bcd88dbd8.lean#L695).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b9c7ad58f1d57e6a324eeca5cf8d0becc564f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
