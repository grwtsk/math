# readInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78e6fadb02b61259da184db92f2697856c6519f693b240176a24ac7e6bf79421",
  "kind": "def",
  "lexical_name": "readInput",
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
  "slug": "readinput--bbb07a8acdff230cff51466b",
  "source": {
    "blob": "a40e2fb364a2e7e53a976b6d15db59641755933d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/InputBinding/Variantf52db8007c26403b67e01b566b16716175dbd092fcb397e79914fb2caed25ddf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbb07a8acdff230cff51466bc7fe052e5814351e6766c0e0573fbd98c9274353",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/InputBinding/Variantf52db8007c26403b67e01b566b16716175dbd092fcb397e79914fb2caed25ddf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78e6fadb02b61259da184db92f2697856c6519f693b240176a24ac7e6bf79421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def readInput (path : String) : IO ByteArray := do
  let file : System.FilePath := path
  let before ← file.symlinkMetadata
  if before.type != .file || before.byteSize > 4194304 then
    throw (IO.userError "bounded regular original input required")
  let bytes ← IO.FS.withFile file .read fun handle => do
    let mut bytes := ByteArray.empty
    while bytes.size <= 4194304 do
      let remaining := 4194305 - bytes.size
      let chunk ← handle.read (min 65536 remaining).toUSize
      bytes := bytes ++ chunk
      if bytes.size > 4194304 then
        throw (IO.userError "bounded regular original input required")
      if chunk.isEmpty then break
    return bytes
  let after ← file.symlinkMetadata
  if after.type != .file || before.byteSize != after.byteSize ||
      before.modified != after.modified || bytes.size > 4194304 ||
      bytes.size.toUInt64 != before.byteSize then
    throw (IO.userError "original input drift")
  return bytes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/InputBinding/Variantf52db8007c26403b67e01b566b16716175dbd092fcb397e79914fb2caed25ddf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/InputBinding/Variantf52db8007c26403b67e01b566b16716175dbd092fcb397e79914fb2caed25ddf.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a40e2fb364a2e7e53a976b6d15db59641755933d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
