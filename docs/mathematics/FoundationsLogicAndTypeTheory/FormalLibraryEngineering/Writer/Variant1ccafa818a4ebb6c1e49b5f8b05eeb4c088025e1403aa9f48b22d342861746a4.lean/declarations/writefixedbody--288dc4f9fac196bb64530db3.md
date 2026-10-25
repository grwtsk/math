# writeFixedBody

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8b632cd520391e8c9c225de62146764e1eeedcde296d7c5ac65e5cb1b4b444f",
  "kind": "def",
  "lexical_name": "writeFixedBody",
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
  "slug": "writefixedbody--288dc4f9fac196bb64530db3",
  "source": {
    "blob": "1b9c3b32ccedcedf99fcaf5ebaa44a61782dbd5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 216,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant1ccafa818a4ebb6c1e49b5f8b05eeb4c088025e1403aa9f48b22d342861746a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:288dc4f9fac196bb64530db328bfb095754f4ac4dcc01d486acca1f3437f8fcf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant1ccafa818a4ebb6c1e49b5f8b05eeb4c088025e1403aa9f48b22d342861746a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8b632cd520391e8c9c225de62146764e1eeedcde296d7c5ac65e5cb1b4b444f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def writeFixedBody (writer : Writer dir) (limitSize : Nat) : Writer dir × Nat :=
  if writer.userData.size = 0 then
    (writer, limitSize)
  else
    let (chunks, pending, totalSize) := writer.userData.foldl (fun (state : Array ByteArray × Array Chunk × Nat) chunk =>
      let (acc, pending, size) := state
      if size >= limitSize then
        (acc, pending.push chunk, size)
      else
        let remaining := limitSize - size
        let takeSize := min chunk.data.size remaining
        let dataPart := chunk.data.extract 0 takeSize
        let acc := if takeSize = 0 then acc else acc.push dataPart
        let size := size + takeSize
        if takeSize < chunk.data.size then
          let pendingChunk : Chunk := { chunk with data := chunk.data.extract takeSize chunk.data.size }
          (acc, pending.push pendingChunk, size)
        else
          (acc, pending, size)
    ) (#[], #[], 0)
    let outputData := writer.outputData.append (ChunkedBuffer.ofArray chunks)
    let remaining := limitSize - totalSize
    ({ writer with userData := pending, outputData, userDataBytes := writer.userDataBytes - totalSize }, remaining)

/--
Writes accumulated user data to output using chunked transfer encoding.

Empty chunks are silently discarded. See `Chunk.empty` for the protocol-level rationale.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant1ccafa818a4ebb6c1e49b5f8b05eeb4c088025e1403aa9f48b22d342861746a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant1ccafa818a4ebb6c1e49b5f8b05eeb4c088025e1403aa9f48b22d342861746a4.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b9c3b32ccedcedf99fcaf5ebaa44a61782dbd5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
