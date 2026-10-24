# map_swap_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1387983-1ac1-95a0-017a-1f6aab70389d",
  "kind": "lemma",
  "lexical_name": "map_swap_product",
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
  "slug": "map-swap-product--53f39c17fc1aa48cfba392a9",
  "source": {
    "blob": "ea1fda21dd88713d4bc440a85c1cd3e0096cdab4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 347,
    "path": "GRWTSK/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53f39c17fc1aa48cfba392a948abffbaf7e88bf5e55830f3992d07de3d32c774",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1387983-1ac1-95a0-017a-1f6aab70389d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma map_swap_product (s : Multiset α) (t : Multiset β) :
    (s ×ˢ t).map Prod.swap = t ×ˢ s := by
  induction s using Multiset.induction <;> simp_all

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bind/Varianta2e8f0d20092a82eef8b982baee09886664eb5a91435dbd1284477be3decdd5a.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea1fda21dd88713d4bc440a85c1cd3e0096cdab4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
