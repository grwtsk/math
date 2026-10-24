# Continuous.connectedComponentsMap_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40633bec-fa2e-aacc-49da-919c79cf3ee0",
  "kind": "theorem",
  "lexical_name": "Continuous.connectedComponentsMap_continuous",
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
  "slug": "continuous-connectedcomponentsmap-continuous--ad0d7336d216e61f14442cba",
  "source": {
    "blob": "fd11b06d09450631e88f4260cb6e7029b0cb6bca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 296,
    "path": "GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad0d7336d216e61f14442cba7916a86363ec12fc0a46bedfa4f30446de349b88",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40633bec-fa2e-aacc-49da-919c79cf3ee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.connectedComponentsMap_continuous {β : Type*} [TopologicalSpace β] {f : α → β}
    (h : Continuous f) : Continuous h.connectedComponentsMap :=
  Continuous.connectedComponentsLift_continuous (ConnectedComponents.continuous_coe.comp h)

/-- A preconnected set `s` has the property that every map to a
discrete space that is continuous on `s` is constant on `s` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TotallyDisconnected/Varianta901c4cf418130d6e2ac21a653ed2436916545ee4acc5219882e3458ca55e8d9.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd11b06d09450631e88f4260cb6e7029b0cb6bca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
