# PseudoEMetricSpace.replaceUniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64fd5d5ed23eb54a52c3ee755f61459ae40b7bcd07e09518f12b1dbad3d91f90",
  "kind": "abbrev",
  "lexical_name": "PseudoEMetricSpace.replaceUniformity",
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
  "slug": "pseudoemetricspace-replaceuniformity--003142d11406bd9f67a8e438",
  "source": {
    "blob": "6459c590098c67e05b4eb7979db41cd8443f386c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 254,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:003142d11406bd9f67a8e438195d58b2ffe36d54a1291f8b99b34b3cb47e58d0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64fd5d5ed23eb54a52c3ee755f61459ae40b7bcd07e09518f12b1dbad3d91f90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev PseudoEMetricSpace.replaceUniformity {α} [U : UniformSpace α] (m : PseudoEMetricSpace α)
    (H : 𝓤[U] = 𝓤[PseudoEMetricSpace.toUniformSpace]) : PseudoEMetricSpace α where
  edist := @edist _ m.toEDist
  edist_self := edist_self
  edist_comm := edist_comm
  edist_triangle := edist_triangle
  toUniformSpace := U
  uniformity_edist := H.trans (@PseudoEMetricSpace.uniformity_edist α _)

/-- The extended pseudometric induced by a function taking values in a pseudoemetric space.
See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variant1427730d4123217959b6180db86bf28c30d5edd269a3d1b904a3939a95ec7656.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6459c590098c67e05b4eb7979db41cd8443f386c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
