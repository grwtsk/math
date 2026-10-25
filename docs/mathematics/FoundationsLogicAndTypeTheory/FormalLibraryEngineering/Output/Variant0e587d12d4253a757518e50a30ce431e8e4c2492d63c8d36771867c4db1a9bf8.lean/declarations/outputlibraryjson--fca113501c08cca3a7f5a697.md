# outputLibraryJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8dbe944ca1b61dfe7396df939260320d073dac552d043f5b1eea87f1015374b",
  "kind": "def",
  "lexical_name": "outputLibraryJson",
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
  "slug": "outputlibraryjson--fca113501c08cca3a7f5a697",
  "source": {
    "blob": "c2dd41557991459c33bf1547f751b0f92a286c7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fca113501c08cca3a7f5a6978d495239276d598173b8a7c057ca93a2f0abb2c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8dbe944ca1b61dfe7396df939260320d073dac552d043f5b1eea87f1015374b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def outputLibraryJson (basePath : System.FilePath) (library : Name) (modules : Array Name) : IO Unit := do
  FS.createDirAll basePath
  let json : Json := Json.mkObj [("modules", toJson (modules.map fun mod => moduleToRelPath mod "json"))]
  let content := json.pretty
  let filePath := basePath / libraryToRelPath library "json"
  if let some d := filePath.parent then FS.createDirAll d
  FS.writeFile filePath content

end Architect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Output/Variant0e587d12d4253a757518e50a30ce431e8e4c2492d63c8d36771867c4db1a9bf8.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2dd41557991459c33bf1547f751b0f92a286c7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
