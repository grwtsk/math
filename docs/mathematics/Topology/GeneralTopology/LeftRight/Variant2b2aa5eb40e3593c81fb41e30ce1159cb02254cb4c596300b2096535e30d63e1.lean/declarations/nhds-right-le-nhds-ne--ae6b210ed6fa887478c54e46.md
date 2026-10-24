# nhds_right'_le_nhds_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a8a2a8d-0416-3ec0-7bfa-8727c8a9239f",
  "kind": "theorem",
  "lexical_name": "nhds_right'_le_nhds_ne",
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
  "slug": "nhds-right-le-nhds-ne--ae6b210ed6fa887478c54e46",
  "source": {
    "blob": "f0b2faa358b0709880cf57734acfff959a3e291f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRight/Variant2b2aa5eb40e3593c81fb41e30ce1159cb02254cb4c596300b2096535e30d63e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae6b210ed6fa887478c54e46bd3a0bce4051a05af7c4c6fc0946bdd56826ce8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRight/Variant2b2aa5eb40e3593c81fb41e30ce1159cb02254cb4c596300b2096535e30d63e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a8a2a8d-0416-3ec0-7bfa-8727c8a9239f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_right'_le_nhds_ne (a : α) : 𝓝[>] a ≤ 𝓝[≠] a :=
  nhdsWithin_mono a fun _ => ne_of_gt
#align nhds_right'_le_nhds_ne nhds_right'_le_nhds_ne

end PartialOrder

section TopologicalSpace

variable {α β : Type*} [TopologicalSpace α] [LinearOrder α] [TopologicalSpace β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRight/Variant2b2aa5eb40e3593c81fb41e30ce1159cb02254cb4c596300b2096535e30d63e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRight/Variant2b2aa5eb40e3593c81fb41e30ce1159cb02254cb4c596300b2096535e30d63e1.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0b2faa358b0709880cf57734acfff959a3e291f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
