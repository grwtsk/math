# _root_.GRWTSK.Topology.GeneralTopology.MapPrincipal.Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.GCongr.Filter.map_le_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d12b3ee9-f1ae-371a-b488-b57e97c9f543",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.MapPrincipal.Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.GCongr.Filter.map_le_map",
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
  "slug": "root-grwtsk-topology-generaltopology-mapprincipal-varianted50f62bfe41a5a--428dddb5d037335142de28b1",
  "source": {
    "blob": "af8a6c44dc584bfe68e692a6bc0f2dc3d3238f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 407,
    "path": "GRWTSK/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:428dddb5d037335142de28b1c4bda7cf09d928d84b82a1f2b891c4d07768f648",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d12b3ee9-f1ae-371a-b488-b57e97c9f543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[gcongr] theorem _root_.GRWTSK.Topology.GeneralTopology.MapPrincipal.Varianted50f62bfe41a5afd59cc0cda07da5a9c8982907edbdffdbed4f422fd05447ef.GCongr.Filter.map_le_map {F G : Filter α} (h : F ≤ G) :
    map m F ≤ map m G := map_mono h

/-- Temporary lemma that we can tag with `gcongr` -/
@[gcongr]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Map/Variant5bd75189dd090f44596db8e169d9011aa87338f9e63b7e3ab546784cf73fe6fb.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af8a6c44dc584bfe68e692a6bc0f2dc3d3238f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
