# cs04_selectedS2Realization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61498f98-0f37-0675-f182-72f48b255b54",
  "kind": "theorem",
  "lexical_name": "cs04_selectedS2Realization",
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
  "slug": "cs04-selecteds2realization--05ee4e609e4d1047a2b55a05",
  "source": {
    "blob": "7ec02b6b1acfc22d9b86d725a2fae957edbad504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 17,
    "path": "GRWTSK/Topology/GeneralTopology/CS04SelectedS2Realization/Variante5744699f791057bdbd3a7cfe78090f12ab0978377df72eeb7abb0dcebe552a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05ee4e609e4d1047a2b55a05505fb8f300cd7eb120e56d52f2530e14d33242ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CS04SelectedS2Realization/Variante5744699f791057bdbd3a7cfe78090f12ab0978377df72eeb7abb0dcebe552a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61498f98-0f37-0675-f182-72f48b255b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cs04_selectedS2Realization
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    ∃ W : ControlledSphericalWitnessPackage S M SM, CS04Claim W := by
  rcases registry.witnesses with ⟨W⟩
  exact ⟨W, W.cs04Claim⟩

end FCRS.ControlledSpherical.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CS04SelectedS2Realization/Variante5744699f791057bdbd3a7cfe78090f12ab0978377df72eeb7abb0dcebe552a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CS04SelectedS2Realization/Variante5744699f791057bdbd3a7cfe78090f12ab0978377df72eeb7abb0dcebe552a3.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ec02b6b1acfc22d9b86d725a2fae957edbad504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
