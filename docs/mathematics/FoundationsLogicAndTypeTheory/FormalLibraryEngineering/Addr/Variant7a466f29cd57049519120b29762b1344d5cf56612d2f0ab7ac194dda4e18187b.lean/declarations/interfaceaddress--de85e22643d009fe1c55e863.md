# InterfaceAddress

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d3fa7807d055a6d98fb426169f82eb5e9a1d803fc117e98584e7f023b16ce94",
  "kind": "structure",
  "lexical_name": "InterfaceAddress",
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
  "slug": "interfaceaddress--de85e22643d009fe1c55e863",
  "source": {
    "blob": "f8e1c57fb19ae5e1bd69fb3ee9be49f5b28ed59e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 226,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de85e22643d009fe1c55e8631b7ea386f645a33da592b750e852191c85f7ae4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d3fa7807d055a6d98fb426169f82eb5e9a1d803fc117e98584e7f023b16ce94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InterfaceAddress where
  /--
  The name of the network interface.
  -/
  name : String

  /-
  The physical (MAC) address of the interface.
  -/
  physicalAddress : MACAddr

  /--
  Indicates whether the interface is a loopback interface.
  -/
  isLoopback : Bool

  /--
  The IP address assigned to the interface.
  -/
  address : IPAddr

  /--
  The subnet mask associated with the interface.
  -/
  netMask : IPAddr
  deriving Inhabited, DecidableEq

/--
Gets address information about the network interfaces on the system, including disabled ones and
multiple addresses for each interface.
-/
@[extern "lean_uv_interface_addresses"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addr/Variant7a466f29cd57049519120b29762b1344d5cf56612d2f0ab7ac194dda4e18187b.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8e1c57fb19ae5e1bd69fb3ee9be49f5b28ed59e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
