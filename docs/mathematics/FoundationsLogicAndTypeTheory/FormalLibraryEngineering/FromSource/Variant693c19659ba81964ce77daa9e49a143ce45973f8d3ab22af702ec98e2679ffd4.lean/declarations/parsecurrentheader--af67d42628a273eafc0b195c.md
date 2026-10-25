# parseCurrentHeader

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c1b107fbcb08968d1324d3cec0b94952294ce6fb72751b826c379843fd17b2d",
  "kind": "def",
  "lexical_name": "parseCurrentHeader",
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
  "slug": "parsecurrentheader--af67d42628a273eafc0b195c",
  "source": {
    "blob": "c5f9275dcaed624ce5164ec95e77d402822ca4de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromSource/Variant693c19659ba81964ce77daa9e49a143ce45973f8d3ab22af702ec98e2679ffd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af67d42628a273eafc0b195c54c4207861bea55c9970156d729c9c9d051c45de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromSource/Variant693c19659ba81964ce77daa9e49a143ce45973f8d3ab22af702ec98e2679ffd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c1b107fbcb08968d1324d3cec0b94952294ce6fb72751b826c379843fd17b2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parseCurrentHeader {m} [Monad m] [MonadLog m] [MonadLiftT IO m] :
    m (TSyntax `Lean.Parser.Module.header × Parser.ModuleParserState × MessageLog) := do
  Parser.parseHeader (Parser.mkInputContext (← getFileMap).source (← getFileName))

/--
Parse all imports in a source file at `path` and return their module names.

This is a thin wrapper around `Lean.parseImports'` that:
- Reads the file from disk
- Parses the import statements
- Filters out `Init` (part of the prelude)

Note: This only sees syntactic imports in the source file.
It does not account for what declarations are actually used.
-/
@[deprecated "Use `ImportGraph.System.FilePath.parseImports'` and `ImportGraph.Lean.ModuleHeader.filterInit` instead"
  (since := "2026-09-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromSource/Variant693c19659ba81964ce77daa9e49a143ce45973f8d3ab22af702ec98e2679ffd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromSource/Variant693c19659ba81964ce77daa9e49a143ce45973f8d3ab22af702ec98e2679ffd4.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f9275dcaed624ce5164ec95e77d402822ca4de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
