# computePartialImportCompletions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19fc6f9e98727fd4048d28ea7a3902cb4194881821727fe1a599cc1f147eb758",
  "kind": "def",
  "lexical_name": "computePartialImportCompletions",
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
  "slug": "computepartialimportcompletions--51523b2d3a3eab4d2e3f3fde",
  "source": {
    "blob": "9274c257df046e55f23f9b009d60bec01f360ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variante96f0a8c19c3807eced4b8d7e1ce573acac5e39e19aac3da09fca9c5bafd5351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51523b2d3a3eab4d2e3f3fde6ea14f31fca992d239005d0b585f90ec55258752",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variante96f0a8c19c3807eced4b8d7e1ce573acac5e39e19aac3da09fca9c5bafd5351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19fc6f9e98727fd4048d28ea7a3902cb4194881821727fe1a599cc1f147eb758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def computePartialImportCompletions
    (headerStx : TSyntax ``Parser.Module.header)
    (completionPos : String.Pos.Raw)
    (availableImports : ImportTrie)
    : Array Name := Id.run do
  let `(Parser.Module.header| $[module]? $[prelude]? $importsStx*) := headerStx
    | return #[]
  let some (completePrefix, incompleteSuffix) := importsStx.findSome? fun importStx => do
      let `(Parser.Module.«import»| $[public]? $[meta]? import $[all]? $importId $[.%$trailingDotTk?$_]?) := importStx
        | unreachable!
      match trailingDotTk? with
      | none =>
        let tailPos ← importId.raw.getTailPos?
        guard <| tailPos == completionPos
        let .str completePrefix incompleteSuffix := importId.getId
          | none
        return (completePrefix, incompleteSuffix)
      | some trailingDotTk =>
        let tailPos ← trailingDotTk.getTailPos?
        guard <| tailPos == completionPos
        return (importId.getId, "")
    | return #[]

  let completions := availableImports.matchingToArray completePrefix
    |>.map (·.replacePrefix completePrefix .anonymous)
    |>.filter (·.toString.startsWith incompleteSuffix)
    |>.filter (! ·.isAnonymous)
    |>.qsort Name.quickLt

  return completions


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variante96f0a8c19c3807eced4b8d7e1ce573acac5e39e19aac3da09fca9c5bafd5351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variante96f0a8c19c3807eced4b8d7e1ce573acac5e39e19aac3da09fca9c5bafd5351.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9274c257df046e55f23f9b009d60bec01f360ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
