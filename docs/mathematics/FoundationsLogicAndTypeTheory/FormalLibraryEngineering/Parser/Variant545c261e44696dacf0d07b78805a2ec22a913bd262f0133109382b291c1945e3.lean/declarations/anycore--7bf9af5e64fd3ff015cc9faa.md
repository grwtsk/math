# anyCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0856beca76ab357c2a257a3f4a00a4fd90fd355f293810a33fe10547d934ce50",
  "kind": "def",
  "lexical_name": "anyCore",
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
  "slug": "anycore--7bf9af5e64fd3ff015cc9faa",
  "source": {
    "blob": "e0bf1a0114e453a1460c634a0554a5df731dc816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant545c261e44696dacf0d07b78805a2ec22a913bd262f0133109382b291c1945e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bf9af5e64fd3ff015cc9faa987f4c9c502a992b1a9b5c42a28c5869a228c7c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant545c261e44696dacf0d07b78805a2ec22a913bd262f0133109382b291c1945e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0856beca76ab357c2a257a3f4a00a4fd90fd355f293810a33fe10547d934ce50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def anyCore : Parser Json := do
    let c ← peek!
    if c == '[' then
      skip; ws
      let c ← peek!
      if c == ']' then
        skip; ws
        return Json.arr (Array.mkEmpty 0)
      else
        let a ← arrayCore (Array.mkEmpty 4)
        return Json.arr a
    else if c == '{' then
      skip; ws
      let c ← peek!
      if c == '}' then
        skip; ws
        return Json.obj ∅
      else
        let kvs ← objectCore ∅
        return Json.obj kvs
    else if c == '\"' then
      skip
      let s ← str
      ws
      return Json.str s
    else if c == 'f' then
      skipString "false"; ws
      return Json.bool false
    else if c == 't' then
      skipString "true"; ws
      return Json.bool true
    else if c == 'n' then
      skipString "null"; ws
      return Json.null
    else if c == '-' || ('0' <= c && c <= '9') then
      let n ← num
      ws
      return Json.num n
    else
      fail "unexpected input"

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant545c261e44696dacf0d07b78805a2ec22a913bd262f0133109382b291c1945e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variant545c261e44696dacf0d07b78805a2ec22a913bd262f0133109382b291c1945e3.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0bf1a0114e453a1460c634a0554a5df731dc816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
