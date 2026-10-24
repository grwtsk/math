# coordinates_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "668935866a8b0d725b4dac3a7f49bba54f624171",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4eddb142-a819-b8f8-651d-f3ae376d3d71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:319732e4-2979-07b3-acd9-40658917da59",
  "kind": "theorem",
  "lexical_name": "coordinates_smul",
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
  "slug": "coordinates-smul--1724c525370bb428d02320ca",
  "source": {
    "blob": "668935866a8b0d725b4dac3a7f49bba54f624171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 181,
    "path": "GRWTSK/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1724c525370bb428d02320cacd0bdbd48f9115d41f34a596cde6b28a9dcaa17c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:319732e4-2979-07b3-acd9-40658917da59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coordinates_smul (r : ℝ)
    (p : FiniteSpheroidChart ι a c ha hc) :
    coordinates (r • p) = r • coordinates p :=
  map_smul chartLinearIsometryEquiv r p

/-- The additive identity is exactly the inverse-chart image of the Euclidean
origin (geometrically, the south pole). -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SpheroidBanach/Variante2b26dc46762a2d4d449bc372317425a2ab1daa33b6474a4e469a4ff0b914675.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668935866a8b0d725b4dac3a7f49bba54f624171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
