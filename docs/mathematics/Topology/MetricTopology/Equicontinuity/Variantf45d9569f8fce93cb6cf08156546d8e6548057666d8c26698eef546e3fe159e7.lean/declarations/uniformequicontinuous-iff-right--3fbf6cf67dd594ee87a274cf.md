# uniformEquicontinuous_iff_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6eb1be3e684196a8c374c8e424b6ab768ea10bad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9800cb3b-a366-efb3-e3c4-df7f8382c33b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:021ef3b4-5997-7f00-2411-99f5de53019b",
  "kind": "theorem",
  "lexical_name": "uniformEquicontinuous_iff_right",
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
  "slug": "uniformequicontinuous-iff-right--3fbf6cf67dd594ee87a274cf",
  "source": {
    "blob": "6eb1be3e684196a8c374c8e424b6ab768ea10bad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fbf6cf67dd594ee87a274cfeb93f094a97ac993422a119ee320f115abdd1292",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:021ef3b4-5997-7f00-2411-99f5de53019b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformEquicontinuous_iff_right {ι : Type*} [UniformSpace β] {F : ι → β → α} :
    UniformEquicontinuous F ↔ ∀ ε > 0, ∀ᶠ xy : β × β in 𝓤 β, ∀ i, dist (F i xy.1) (F i xy.2) < ε :=
  uniformity_basis_dist.uniformEquicontinuous_iff_right
#align metric.uniform_equicontinuous_iff_right Metric.uniformEquicontinuous_iff_right

/-- Characterization of uniform equicontinuity for families of functions between
(pseudo) metric spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb1be3e684196a8c374c8e424b6ab768ea10bad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
