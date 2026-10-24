# contDiffOn_ext_coord_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c85482d-95b0-2a4d-5dbe-0eb4565c7fe7",
  "kind": "theorem",
  "lexical_name": "contDiffOn_ext_coord_change",
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
  "slug": "contdiffon-ext-coord-change--1fc7b7525b34a91fda0cf9b8",
  "source": {
    "blob": "8502555daa720e5e330ba3ce074e4182e3241a26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 723,
    "path": "GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant037a7d7b3eba011828b4d920a55ed1ef4551b99700d7ca2452cd835a4a24ddb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fc7b7525b34a91fda0cf9b897fe8ed53accafb1d244456e1af1b9b95f2e939f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtChartAt/Variant037a7d7b3eba011828b4d920a55ed1ef4551b99700d7ca2452cd835a4a24ddb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c85482d-95b0-2a4d-5dbe-0eb4565c7fe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffOn_ext_coord_change [IsManifold I n M] (x x' : M) :
    ContDiffOn 𝕜 n (extChartAt I x ∘ (extChartAt I x').symm)
      ((extChartAt I x').symm ≫ extChartAt I x).source :=
  contDiffOn_extend_coord_change (chart_mem_maximalAtlas x) (chart_mem_maximalAtlas x')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtChartAt/Variant037a7d7b3eba011828b4d920a55ed1ef4551b99700d7ca2452cd835a4a24ddb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtChartAt/Variant037a7d7b3eba011828b4d920a55ed1ef4551b99700d7ca2452cd835a4a24ddb8.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8502555daa720e5e330ba3ce074e4182e3241a26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
