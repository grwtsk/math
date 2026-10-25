# readAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9610ac905b6db619b1cf48ca8ba4c01f3ce12f2db65bd39d04ff912002c62b3",
  "kind": "def",
  "lexical_name": "readAll",
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
  "slug": "readall--bf6c8a7c27ec8ebdef7b9ca8",
  "source": {
    "blob": "4ec4358b55ef60e6fe148dfc6536b566335f226e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 411,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant6a2de51adf277734307573aa83de9bd9e5a986cc46611c455162f80d77a9d103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf6c8a7c27ec8ebdef7b9ca87ea753724ca8636a332867efbd2879ebb25d0d80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant6a2de51adf277734307573aa83de9bd9e5a986cc46611c455162f80d77a9d103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9610ac905b6db619b1cf48ca8ba4c01f3ce12f2db65bd39d04ff912002c62b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def readAll
    [FromByteArray α]
    [Monad m] [MonadExceptOf IO.Error m] [NextChunk m]
    (stream : Stream)
    (maximumSize : Option UInt64 := none) :
    m α := do

  let rec loop (result : ByteArray) : m ByteArray := do
    match ← NextChunk.nextChunk stream with
    | none => return result
    | some chunk =>
      let result := result ++ chunk.data
      if let some max := maximumSize then
        if result.size.toUInt64 > max then
          throw (.userError s!"body exceeded maximum size of {max} bytes")
      loop result

  let result ← loop ByteArray.empty

  match FromByteArray.fromByteArray result with
  | .ok a => return a
  | .error msg => throw (.userError msg)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant6a2de51adf277734307573aa83de9bd9e5a986cc46611c455162f80d77a9d103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant6a2de51adf277734307573aa83de9bd9e5a986cc46611c455162f80d77a9d103.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ec4358b55ef60e6fe148dfc6536b566335f226e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
