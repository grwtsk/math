# lines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:403ebae986358779c311b7d1d70d18cdfb06cc66e0a423eeea50e415edf8c1b1",
  "kind": "def",
  "lexical_name": "lines",
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
  "slug": "lines--cc04aa6622c5b8d90f54f5d0",
  "source": {
    "blob": "7c9b0177802dc5a17d1bdea7d2e8af33cab697ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant02d61ed9c20cf0d0e5f06549a2a9dca4f641a91b7500ccfb26566544b0ebad74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc04aa6622c5b8d90f54f5d0037f01fa4c26abe8787141b9542ee08c217246a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant02d61ed9c20cf0d0e5f06549a2a9dca4f641a91b7500ccfb26566544b0ebad74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:403ebae986358779c311b7d1d70d18cdfb06cc66e0a423eeea50e415edf8c1b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def lines (s : String) : Array String := Id.run do
  let mut result := #[]
  let mut lineStart := s.startPos
  let mut iter := lineStart
  while h : ¬iter.IsAtEnd do
    let c := iter.get h
    iter := iter.next h
    if c == '\n' then
      result := result.push <| s.extract lineStart iter
      lineStart := iter

  if iter != lineStart then
    result := result.push <| s.extract lineStart iter
  return result

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant02d61ed9c20cf0d0e5f06549a2a9dca4f641a91b7500ccfb26566544b0ebad74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExampleHover/Variant02d61ed9c20cf0d0e5f06549a2a9dca4f641a91b7500ccfb26566544b0ebad74.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9b0177802dc5a17d1bdea7d2e8af33cab697ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
