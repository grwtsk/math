# resolveAt_is_oneCoordinateResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:455632d97581f8e402c74c665a408b0cedd7109570b3ebc9631481052e6fc70f",
  "kind": "def",
  "lexical_name": "resolveAt_is_oneCoordinateResolution",
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
  "slug": "resolveat-is-onecoordinateresolution--2d8c0afa021c2fa69e54c922",
  "source": {
    "blob": "3d1f86ec987529d6de6a25f82b2eed097300a09e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d8c0afa021c2fa69e54c92258f779c2962c7b886507d135a6c7b56035d81fbb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:455632d97581f8e402c74c665a408b0cedd7109570b3ebc9631481052e6fc70f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveAt_is_oneCoordinateResolution
    {n : Nat}
    (parent : PartialBitfield n)
    (coordinate : Fin n)
    (value : Bool)
    (unresolved : parent coordinate = .unresolved) :
    OneCoordinateResolution
      parent
      (resolveAt parent coordinate value) where
  coordinate := coordinate
  value := value
  parentUnresolved := unresolved
  childResolved := by
    simp [resolveAt]
  unchanged := by
    intro other otherNe
    simp [resolveAt, otherNe]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitfield/Variant41050bf3a1c5287b838b2272c6a64e03ce0c0c25b5b015a219957871e052659c.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d1f86ec987529d6de6a25f82b2eed097300a09e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
