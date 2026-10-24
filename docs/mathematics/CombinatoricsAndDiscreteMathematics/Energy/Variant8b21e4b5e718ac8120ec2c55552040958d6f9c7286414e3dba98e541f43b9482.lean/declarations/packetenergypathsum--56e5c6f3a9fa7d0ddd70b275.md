# packetEnergyPathSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de03cd727333ee60f0a55478c18241b8320cb1320d701bb74151a969a29691e9",
  "kind": "def",
  "lexical_name": "packetEnergyPathSum",
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
  "slug": "packetenergypathsum--56e5c6f3a9fa7d0ddd70b275",
  "source": {
    "blob": "19ff627c03a41b7f06428e34d91405f26cd701ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 127,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56e5c6f3a9fa7d0ddd70b2756d5d422b2538e5df28513789c9feddcb6be34cad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de03cd727333ee60f0a55478c18241b8320cb1320d701bb74151a969a29691e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def packetEnergyPathSum
    {Prime : Type u}
    {Coordinate : Type v}
    [DecidableEq Prime]
    [Fintype Coordinate]
    (capacity : PositiveCapacity Prime Coordinate)
    (packet : Packet Coordinate) :
    List Prime → Finset Prime → ℚ
  | [], _ => 0
  | prime :: remaining, cut =>
      (packetEnergy capacity packet (insert prime cut) -
        packetEnergy capacity packet cut) +
      packetEnergyPathSum
        capacity
        packet
        remaining
        (insert prime cut)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Energy/Variant8b21e4b5e718ac8120ec2c55552040958d6f9c7286414e3dba98e541f43b9482.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19ff627c03a41b7f06428e34d91405f26cd701ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
