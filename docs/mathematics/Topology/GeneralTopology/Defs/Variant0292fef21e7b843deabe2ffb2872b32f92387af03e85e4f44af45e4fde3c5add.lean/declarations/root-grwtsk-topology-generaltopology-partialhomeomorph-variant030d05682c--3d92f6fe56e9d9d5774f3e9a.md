# _root_.GRWTSK.Topology.GeneralTopology.PartialHomeomorph.Variant030d05682c72992ba3a70e04e32e1f55119dd6e8c3aef7ef3a12a20f6421bc5c.Homeomorph.toPartialHomeomorphOfImageEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1842b28040209eb9c890c4d77ad19de17d9626dfd7cbbfe8b56f3f52f330cfff",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.PartialHomeomorph.Variant030d05682c72992ba3a70e04e32e1f55119dd6e8c3aef7ef3a12a20f6421bc5c.Homeomorph.toPartialHomeomorphOfImageEq",
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
  "slug": "root-grwtsk-topology-generaltopology-partialhomeomorph-variant030d05682c--3d92f6fe56e9d9d5774f3e9a",
  "source": {
    "blob": "10ad2b5d2c88d3dec6a766d8f1abacb72848af14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant0292fef21e7b843deabe2ffb2872b32f92387af03e85e4f44af45e4fde3c5add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d92f6fe56e9d9d5774f3e9a9a1f6585f69c7768e78f5ef4d482def20551aadb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant0292fef21e7b843deabe2ffb2872b32f92387af03e85e4f44af45e4fde3c5add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1842b28040209eb9c890c4d77ad19de17d9626dfd7cbbfe8b56f3f52f330cfff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.GeneralTopology.PartialHomeomorph.Variant030d05682c72992ba3a70e04e32e1f55119dd6e8c3aef7ef3a12a20f6421bc5c.Homeomorph.toPartialHomeomorphOfImageEq (e : X ≃ₜ Y) (s : Set X)
    (t : Set Y) (h : e '' s = t) : PartialHomeomorph X Y where
  toPartialEquiv := e.toPartialEquivOfImageEq s t h
  continuousOn_toFun := e.continuous.continuousOn
  continuousOn_invFun := e.symm.continuous.continuousOn

/-- A homeomorphism induces a partial homeomorphism on the whole space -/
@[simps! -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant0292fef21e7b843deabe2ffb2872b32f92387af03e85e4f44af45e4fde3c5add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant0292fef21e7b843deabe2ffb2872b32f92387af03e85e4f44af45e4fde3c5add.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ad2b5d2c88d3dec6a766d8f1abacb72848af14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
