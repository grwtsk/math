# State

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88e6f39adb1d5457b6ecb692bf5c45362b3433561e65b54dd573b149139edcc4",
  "kind": "structure",
  "lexical_name": "State",
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
  "slug": "state--7beddfd1c8bdb5cad67d361b",
  "source": {
    "blob": "480fb4ea45a86af011b6470f4e8adb72ef1cf9f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoalesceRC/Variant87a2834a8822ffc5d5be4d283f5a303db12bec3c913a9595af0617238aa28b1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7beddfd1c8bdb5cad67d361b16b13ea1bc42d798b2590b444534cd4e8d7bf417",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoalesceRC/Variant87a2834a8822ffc5d5be4d283f5a303db12bec3c913a9595af0617238aa28b1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88e6f39adb1d5457b6ecb692bf5c45362b3433561e65b54dd573b149139edcc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure State where
  /-- Total inc count per variable in the current basic block (accumulated going forward). -/
  incTotal : Std.HashMap FVarId Nat := {}
  /-- Total dec count per variable in the current basic block (accumulated going forward). -/
  decTotal : Std.HashMap FVarId Nat := {}
  /--
  Inc count seen so far per variable going backward. When this equals `incTotal`, we've
  reached the first inc and should emit the coalesced operation.
  -/
  incAccum : Std.HashMap FVarId Nat := {}
  /--
  Whether we've already emitted the coalesced dec for a variable (going backward, the first
  dec encountered is the last in the block).
  -/
  decPlaced : Std.HashSet FVarId := {}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoalesceRC/Variant87a2834a8822ffc5d5be4d283f5a303db12bec3c913a9595af0617238aa28b1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoalesceRC/Variant87a2834a8822ffc5d5be4d283f5a303db12bec3c913a9595af0617238aa28b1b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `480fb4ea45a86af011b6470f4e8adb72ef1cf9f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
