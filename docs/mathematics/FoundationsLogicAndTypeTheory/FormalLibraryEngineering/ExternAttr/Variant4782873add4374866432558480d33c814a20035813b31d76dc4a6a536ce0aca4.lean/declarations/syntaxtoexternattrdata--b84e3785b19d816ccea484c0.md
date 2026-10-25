# syntaxToExternAttrData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcb9b7345b870be818e3f230ac77fd39660cb5e85feebdc48fb242b238ea079e",
  "kind": "def",
  "lexical_name": "syntaxToExternAttrData",
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
  "slug": "syntaxtoexternattrdata--b84e3785b19d816ccea484c0",
  "source": {
    "blob": "58a570a9100b73444d65e23581f6bd96e4176023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b84e3785b19d816ccea484c0c2f892cd8b733faf67e0d93dd4bd4504b830d36b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcb9b7345b870be818e3f230ac77fd39660cb5e85feebdc48fb242b238ea079e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def syntaxToExternAttrData (stx : Syntax) : AttrM ExternAttrData := do
  let entriesStx := stx[1].getArgs
  if entriesStx.size == 0 then
    return { entries := [ ExternEntry.adhoc `all ] }
  let mut entries := #[]
  for entryStx in entriesStx do
    let backend := if entryStx[0].isNone then `all else entryStx[0][0].getId
    let str ← match entryStx[2].isStrLit? with
      | none     => throwErrorAt entryStx[2] "string literal expected"
      | some str => pure str
    if entryStx[1].isNone then
      entries := entries.push <| ExternEntry.standard backend str
    else
      entries := entries.push <| ExternEntry.inline backend str
  return { entries := entries.toList }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExternAttr/Variant4782873add4374866432558480d33c814a20035813b31d76dc4a6a536ce0aca4.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a570a9100b73444d65e23581f6bd96e4176023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
