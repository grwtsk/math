# Topology.IsEmbedding.map_nhdsWithin_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a452c5ce-14a0-fc6e-57c4-6136ed1d5275",
  "kind": "lemma",
  "lexical_name": "Topology.IsEmbedding.map_nhdsWithin_eq",
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
  "slug": "topology-isembedding-map-nhdswithin-eq--b381ae712e74fd77d4726c06",
  "source": {
    "blob": "17850a8aa0371a4be6e67dbf51bf53e076819f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1332,
    "line": 1326,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b381ae712e74fd77d4726c068ba6fc49d3ab82fa7cfb150cbf0b514f2d6e88b9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a452c5ce-14a0-fc6e-57c4-6136ed1d5275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1326–1332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsEmbedding.map_nhdsWithin_eq {f : α → β} (hf : IsEmbedding f) (s : Set α) (x : α) :
    map f (𝓝[s] x) = 𝓝[f '' s] f x :=
  hf.isInducing.map_nhdsWithin_eq s x

@[deprecated (since := "2024-10-26")]
alias Embedding.map_nhdsWithin_eq := IsEmbedding.map_nhdsWithin_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousOn/Variant1a54f1774601a436e3f57666f8b0193083901b239e88ad1c10b47376dd227bdd.lean#L1326).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17850a8aa0371a4be6e67dbf51bf53e076819f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
