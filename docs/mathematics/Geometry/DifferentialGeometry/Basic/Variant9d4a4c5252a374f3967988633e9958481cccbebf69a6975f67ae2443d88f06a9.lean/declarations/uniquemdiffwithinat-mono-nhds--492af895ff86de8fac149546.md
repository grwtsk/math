# UniqueMDiffWithinAt.mono_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c14496a-f519-0993-5e92-292cad7913f7",
  "kind": "theorem",
  "lexical_name": "UniqueMDiffWithinAt.mono_nhds",
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
  "slug": "uniquemdiffwithinat-mono-nhds--492af895ff86de8fac149546",
  "source": {
    "blob": "4e587fe5b3410f6e5528e9b31a119d3c873f9680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 74,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:492af895ff86de8fac149546f52498e585f8b8e9f4a9048b7cda0ab028aa703e",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c14496a-f519-0993-5e92-292cad7913f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem UniqueMDiffWithinAt.mono_nhds {s t : Set M} {x : M} (hs : UniqueMDiffWithinAt I s x)
    (ht : 𝓝[s] x ≤ 𝓝[t] x) : UniqueMDiffWithinAt I t x :=
  hs.mono_nhds <| by simpa only [← map_extChartAt_nhdsWithin] using Filter.map_mono ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant9d4a4c5252a374f3967988633e9958481cccbebf69a6975f67ae2443d88f06a9.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e587fe5b3410f6e5528e9b31a119d3c873f9680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
