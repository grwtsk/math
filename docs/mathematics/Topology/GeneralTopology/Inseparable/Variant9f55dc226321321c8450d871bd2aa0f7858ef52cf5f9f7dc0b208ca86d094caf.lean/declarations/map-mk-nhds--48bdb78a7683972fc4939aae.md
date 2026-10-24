# map_mk_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5013c53-23e9-4c7e-7b35-fd1778dc1110",
  "kind": "theorem",
  "lexical_name": "map_mk_nhds",
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
  "slug": "map-mk-nhds--48bdb78a7683972fc4939aae",
  "source": {
    "blob": "15b5c690e787a53948a78c93495fec7a6740ef70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 494,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variant9f55dc226321321c8450d871bd2aa0f7858ef52cf5f9f7dc0b208ca86d094caf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48bdb78a7683972fc4939aae023da73f645aa7e65c88d5efdcded6528a84088a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variant9f55dc226321321c8450d871bd2aa0f7858ef52cf5f9f7dc0b208ca86d094caf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5013c53-23e9-4c7e-7b35-fd1778dc1110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_mk_nhds : map mk (𝓝 x) = 𝓝 (mk x) := by
  rw [← comap_mk_nhds_mk, map_comap_of_surjective surjective_mk]
#align separation_quotient.map_mk_nhds SeparationQuotient.map_mk_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variant9f55dc226321321c8450d871bd2aa0f7858ef52cf5f9f7dc0b208ca86d094caf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variant9f55dc226321321c8450d871bd2aa0f7858ef52cf5f9f7dc0b208ca86d094caf.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b5c690e787a53948a78c93495fec7a6740ef70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
