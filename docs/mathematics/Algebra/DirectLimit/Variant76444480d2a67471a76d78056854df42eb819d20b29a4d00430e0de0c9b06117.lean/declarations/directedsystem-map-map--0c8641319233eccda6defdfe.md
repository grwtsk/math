# DirectedSystem.map_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e4de4f0-6a7b-22e1-2191-2cf1042d9612",
  "kind": "theorem",
  "lexical_name": "DirectedSystem.map_map",
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
  "slug": "directedsystem-map-map--0c8641319233eccda6defdfe",
  "source": {
    "blob": "062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 79,
    "path": "GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c8641319233eccda6defdfe966bf25f718f67ff962488dbcb130d9ea625de88",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e4de4f0-6a7b-22e1-2191-2cf1042d9612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem DirectedSystem.map_map [DirectedSystem G fun i j h => f i j h] {i j k} (hij hjk x) :
    f j k hjk (f i j hij x) = f i k (le_trans hij hjk) x :=
  DirectedSystem.map_map (fun i j h => f i j h) hij hjk x
#align module.directed_system.map_map Module.DirectedSystem.map_map

variable (G)

/-- The direct limit of a directed system is the modules glued together along the maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
