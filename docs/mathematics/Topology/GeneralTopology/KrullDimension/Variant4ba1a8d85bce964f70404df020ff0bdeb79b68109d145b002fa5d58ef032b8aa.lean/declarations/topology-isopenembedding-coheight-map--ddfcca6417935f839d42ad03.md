# Topology.IsOpenEmbedding.coheight_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d1a47b54fc7e3703c402cde02eed6a1fb16ff06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:988538a6-4078-b88f-6728-e5ca077edbb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59c24471-f6c0-d37b-0ab0-c714a648b268",
  "kind": "lemma",
  "lexical_name": "Topology.IsOpenEmbedding.coheight_map",
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
  "slug": "topology-isopenembedding-coheight-map--ddfcca6417935f839d42ad03",
  "source": {
    "blob": "5d1a47b54fc7e3703c402cde02eed6a1fb16ff06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddfcca6417935f839d42ad035b5b5cebfe5bc5bbaa5c0163af1e88ff66b646c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59c24471-f6c0-d37b-0ab0-c714a648b268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Topology.IsOpenEmbedding.coheight_map {f : X → Y} (hf : IsOpenEmbedding f)
    (Z : TopologicalSpace.IrreducibleCloseds X) :
    Order.coheight (map f hf.continuous Z) = Order.coheight Z := by
  rw [← coheight_orderIso (orderIsoOfIsOpenEmbedding f hf) Z]
  refine .symm (coheight_eq_of_strictMono Subtype.val (Subtype.strictMono_coe _) ?_ _)
  intro a b hlt
  exact ⟨⟨b, a.2.mono (Set.preimage_mono hlt.le)⟩, hlt, rfl⟩

attribute [local instance] specializationOrder in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullDimension/Variant4ba1a8d85bce964f70404df020ff0bdeb79b68109d145b002fa5d58ef032b8aa.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d1a47b54fc7e3703c402cde02eed6a1fb16ff06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
