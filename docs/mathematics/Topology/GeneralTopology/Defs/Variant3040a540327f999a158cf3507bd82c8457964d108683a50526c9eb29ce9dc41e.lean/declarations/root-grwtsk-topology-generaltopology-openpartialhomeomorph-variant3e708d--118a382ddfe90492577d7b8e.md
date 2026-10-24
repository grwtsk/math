# _root_.GRWTSK.Topology.GeneralTopology.OpenPartialHomeomorph.Variant3e708dc8f9d60aa27f328722b90d8eaf1299f23e452fcfded6be6236f0f44e3d.Homeomorph.toOpenPartialHomeomorphOfImageEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f77ffdd955e712d0f09f9ffaa0a61c85bbfb5d5c445b5aed8c9092b6c7b5e6a7",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.OpenPartialHomeomorph.Variant3e708dc8f9d60aa27f328722b90d8eaf1299f23e452fcfded6be6236f0f44e3d.Homeomorph.toOpenPartialHomeomorphOfImageEq",
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
  "slug": "root-grwtsk-topology-generaltopology-openpartialhomeomorph-variant3e708d--118a382ddfe90492577d7b8e",
  "source": {
    "blob": "721dffaded7a118d268cf758a4afc21235478252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant3040a540327f999a158cf3507bd82c8457964d108683a50526c9eb29ce9dc41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:118a382ddfe90492577d7b8e10f5a278ea8da889bd6fa6b4b99387db8a01150f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant3040a540327f999a158cf3507bd82c8457964d108683a50526c9eb29ce9dc41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f77ffdd955e712d0f09f9ffaa0a61c85bbfb5d5c445b5aed8c9092b6c7b5e6a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.OpenPartialHomeomorph.Variant3e708dc8f9d60aa27f328722b90d8eaf1299f23e452fcfded6be6236f0f44e3d.Homeomorph.toOpenPartialHomeomorphOfImageEq (e : X ≃ₜ Y) (s : Set X) (hs : IsOpen s)
    (t : Set Y) (h : e '' s = t) : OpenPartialHomeomorph X Y where
  toPartialHomeomorph := e.toPartialHomeomorphOfImageEq s t h
  open_source := hs
  open_target := by simpa [← h]

/-- A homeomorphism induces an open partial homeomorphism on the whole space -/
@[simps! (attr := mfld_simps) -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant3040a540327f999a158cf3507bd82c8457964d108683a50526c9eb29ce9dc41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant3040a540327f999a158cf3507bd82c8457964d108683a50526c9eb29ce9dc41e.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `721dffaded7a118d268cf758a4afc21235478252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
