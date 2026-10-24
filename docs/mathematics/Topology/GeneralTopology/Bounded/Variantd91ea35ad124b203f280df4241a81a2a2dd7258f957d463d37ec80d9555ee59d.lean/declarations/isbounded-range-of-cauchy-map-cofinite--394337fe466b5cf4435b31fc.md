# isBounded_range_of_cauchy_map_cofinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "17414866de7bb9117ba33b7fc910fa445fee5aff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db1dca29-bb15-0124-4cce-3bf44aac1292",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:258ffde1-1364-a198-db9c-40eebca98fbb",
  "kind": "theorem",
  "lexical_name": "isBounded_range_of_cauchy_map_cofinite",
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
  "slug": "isbounded-range-of-cauchy-map-cofinite--394337fe466b5cf4435b31fc",
  "source": {
    "blob": "17414866de7bb9117ba33b7fc910fa445fee5aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:394337fe466b5cf4435b31fccef611a8d6ea4ff8ee8231eb2d41702113c47acb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:258ffde1-1364-a198-db9c-40eebca98fbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBounded_range_of_cauchy_map_cofinite {f : β → α} (hf : Cauchy (map f cofinite)) :
    IsBounded (range f) :=
  isBounded_range_of_tendsto_cofinite_uniformity <| (cauchy_map_iff.1 hf).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17414866de7bb9117ba33b7fc910fa445fee5aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
