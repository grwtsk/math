# Ioc_mem_nhdsLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43f85b79-a323-3b2e-1292-1ddb352cef61",
  "kind": "theorem",
  "lexical_name": "Ioc_mem_nhdsLE",
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
  "slug": "ioc-mem-nhdsle--f407348aad2cc8482dc77b29",
  "source": {
    "blob": "4f6fa8f6051335641899793c88fd959661b7b8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 359,
    "path": "GRWTSK/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f407348aad2cc8482dc77b29eb889974c526830f76fb21f451e97520c867783c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43f85b79-a323-3b2e-1292-1ddb352cef61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ioc_mem_nhdsLE (H : a < b) : Ioc a b ∈ 𝓝[≤] b :=
  inter_mem (nhdsWithin_le_nhds <| Ioi_mem_nhds H) self_mem_nhdsWithin

@[deprecated (since := "2024-12-21")] alias Ioc_mem_nhdsWithin_Iic' := Ioc_mem_nhdsLE

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6fa8f6051335641899793c88fd959661b7b8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
