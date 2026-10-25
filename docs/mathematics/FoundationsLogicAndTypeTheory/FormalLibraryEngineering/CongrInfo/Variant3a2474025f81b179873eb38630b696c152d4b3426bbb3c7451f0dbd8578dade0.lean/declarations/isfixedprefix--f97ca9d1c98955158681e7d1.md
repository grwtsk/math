# isFixedPrefix?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b414cc2bc70cb829fb859edeb7a407f0783fe44dc33ca47e1d2a7f5e21f9e7e",
  "kind": "def",
  "lexical_name": "isFixedPrefix?",
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
  "slug": "isfixedprefix--f97ca9d1c98955158681e7d1",
  "source": {
    "blob": "48a1a630d5dd5224bdb2a7603f6dba790f0c9d57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f97ca9d1c98955158681e7d1e79b5fd7eacda661b4c2d083ed1914732ab99cf9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b414cc2bc70cb829fb859edeb7a407f0783fe44dc33ca47e1d2a7f5e21f9e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isFixedPrefix? (argKinds : Array CongrArgKind) : Option Nat :=
  go 0
where
  goEq (pre : Nat) (i : Nat) : Option Nat :=
    if h : i < argKinds.size then
      match argKinds[i] with
      | .fixed => none
      | .eq => goEq pre (i+1)
      | _ => none
    else
      some pre

  go (i : Nat) : Option Nat :=
    if h : i < argKinds.size then
      match argKinds[i] with
      | .fixed => go (i+1)
      | .eq => goEq i (i+1)
      | _ => none
    else
      none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrInfo/Variant3a2474025f81b179873eb38630b696c152d4b3426bbb3c7451f0dbd8578dade0.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a1a630d5dd5224bdb2a7603f6dba790f0c9d57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
