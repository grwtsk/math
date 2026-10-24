# FixedSpectralConfiguration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f40c35371892f916a9fd6f96b2b9af29eaf8d2ef0f7c2776630244c06e8350b5",
  "kind": "structure",
  "lexical_name": "FixedSpectralConfiguration",
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
  "slug": "fixedspectralconfiguration--0be936a6592266b458188adf",
  "source": {
    "blob": "8d507e063d1d8fba56c6c71d18fe62c3347ae2f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 23,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0be936a6592266b458188adfb62bd30203f86c7828099e28433fdc4a7480ebf9",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f40c35371892f916a9fd6f96b2b9af29eaf8d2ef0f7c2776630244c06e8350b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FixedSpectralConfiguration where
  dynamics : HeatflowDynamics
  points : Type
  pointToSpectralPoint : points → SpectralPoint
  fixedUnderFlow : Prop
  fixedUnderFlow_certified : fixedUnderFlow
  sourceLabel : String

/-- Contract-level index/spectral trace identification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Varianta195632f4455b56de177976aeaef46feb0c0b3763cb352d423a1a7c1ee10a3f2.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d507e063d1d8fba56c6c71d18fe62c3347ae2f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
