# isLowerSet_orderDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b2f24a0-92d3-0981-9c1e-ace26b04465c",
  "kind": "lemma",
  "lexical_name": "isLowerSet_orderDual",
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
  "slug": "islowerset-orderdual--eb6e85de16d25f6bd0811ce0",
  "source": {
    "blob": "586f377ca9c5657b2c600a92a30a6b1d371ca997",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 423,
    "path": "GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variantf8f0c6a91153ca61bfee95cbb1848c1b7b8f556ff4adffd1bbe5ca98bc6ded1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb6e85de16d25f6bd0811ce077e905a09ff81182f62a2ce5ee4bd91d8985c90a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UpperLowerSetTopology/Variantf8f0c6a91153ca61bfee95cbb1848c1b7b8f556ff4adffd1bbe5ca98bc6ded1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b2f24a0-92d3-0981-9c1e-ace26b04465c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLowerSet_orderDual [Preorder α] [TopologicalSpace α] :
    Topology.IsLowerSet αᵒᵈ ↔ Topology.IsUpperSet α := isUpperSet_orderDual.symm

namespace WithUpperSet
variable [Preorder α] [Preorder β] [Preorder γ]

/-- A monotone map between preorders spaces induces a continuous map between themselves considered
with the upper set topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UpperLowerSetTopology/Variantf8f0c6a91153ca61bfee95cbb1848c1b7b8f556ff4adffd1bbe5ca98bc6ded1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UpperLowerSetTopology/Variantf8f0c6a91153ca61bfee95cbb1848c1b7b8f556ff4adffd1bbe5ca98bc6ded1b.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586f377ca9c5657b2c600a92a30a6b1d371ca997` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
