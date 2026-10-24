# Isometry.completion_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa76b7d7-7ad6-d265-94e4-638132c0a43e",
  "kind": "theorem",
  "lexical_name": "Isometry.completion_map",
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
  "slug": "isometry-completion-map--cc32574736e1232957919ba4",
  "source": {
    "blob": "ffde11601dc2f797b11b8488a532a6253fe738bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 209,
    "path": "GRWTSK/Topology/MetricTopology/Completion/Variant73433544b5686807b608d49c34ba9e0ed773e23c11d098c1257d5b6ffb4faf6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc32574736e1232957919ba42bef2b82ccf91d5a6aeb2b9a53b77c422c379a66",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Completion/Variant73433544b5686807b608d49c34ba9e0ed773e23c11d098c1257d5b6ffb4faf6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa76b7d7-7ad6-d265-94e4-638132c0a43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Isometry.completion_map [PseudoMetricSpace β] {f : α → β}
    (h : Isometry f) : Isometry (Completion.map f) :=
  (coe_isometry.comp h).completion_extension

section extension_maps

variable [Ring α] [IsTopologicalRing α] [IsUniformAddGroup α] [Ring β]
    [PseudoMetricSpace β] [IsUniformAddGroup β] [IsTopologicalRing β]

/-- The extension of an isometry to the completion of the domain. -/
@[deprecated Completion.extensionHom (since := "2026-08-11")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Completion/Variant73433544b5686807b608d49c34ba9e0ed773e23c11d098c1257d5b6ffb4faf6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Completion/Variant73433544b5686807b608d49c34ba9e0ed773e23c11d098c1257d5b6ffb4faf6d.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffde11601dc2f797b11b8488a532a6253fe738bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
