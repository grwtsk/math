# hasBasis_nhds_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c94df9812d0aa9472f246d518a938f3b94ebd2bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:021eaab1-289e-fdd0-af72-3cb76834e7e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b64fd17c-39b3-950f-146b-c716e7c829a3",
  "kind": "theorem",
  "lexical_name": "hasBasis_nhds_Ioc",
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
  "slug": "hasbasis-nhds-ioc--b5c49de06bc2785b0e6e09ad",
  "source": {
    "blob": "c94df9812d0aa9472f246d518a938f3b94ebd2bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5c49de06bc2785b0e6e09ad7b52c8bec5a34d99acdce99d6841d4bf9e99b653",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b64fd17c-39b3-950f-146b-c716e7c829a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasBasis_nhds_Ioc (h : a ≠ 0) : (𝓝 a).HasBasis (· < a) (Set.Ioc · a) :=
  SuccOrder.hasBasis_nhds_Ioc_of_exists_lt ⟨0, Ordinal.pos_iff_ne_zero.2 h⟩

@[deprecated (since := "2024-12-22")] alias nhdsBasis_Ioc := hasBasis_nhds_Ioc

-- todo: generalize to a `SuccOrder`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant50750cbac392f5b78cfbde05760069feb8f69d08d8a58c81201b5761e22f4214.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c94df9812d0aa9472f246d518a938f3b94ebd2bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
