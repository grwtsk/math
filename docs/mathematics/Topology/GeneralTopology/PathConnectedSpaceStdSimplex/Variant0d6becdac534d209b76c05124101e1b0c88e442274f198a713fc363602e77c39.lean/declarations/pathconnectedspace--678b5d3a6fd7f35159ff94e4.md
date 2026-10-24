# pathConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5379770040fe901f3e3a3787bb8ceb467a56ce0e9c061326daa56b48fa8a1602",
  "kind": "instance",
  "lexical_name": "pathConnectedSpace",
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
  "slug": "pathconnectedspace--678b5d3a6fd7f35159ff94e4",
  "source": {
    "blob": "271d8eaebb5cf2026dfd61240cc1c345d8262653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 57,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:678b5d3a6fd7f35159ff94e43f7ff89ff2abffb280ca5acfe52f36157a5bdd45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5379770040fe901f3e3a3787bb8ceb467a56ce0e9c061326daa56b48fa8a1602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pathConnectedSpace
    (M : Type*) [Nonempty M] : PathConnectedSpace (StdSimplex ℝ M) where
  nonempty := by infer_instance
  joined x y :=
  ⟨{toContinuousMap := ⟨_, continuous_convexCombPair x y⟩
    source' := by simp
    target' := by simp }⟩

/-- The standard one-dimensional simplex is homeomorphic to the unit interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnectedSpaceStdSimplex/Variant0d6becdac534d209b76c05124101e1b0c88e442274f198a713fc363602e77c39.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `271d8eaebb5cf2026dfd61240cc1c345d8262653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
