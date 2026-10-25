# mkIncorrectToExisting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7a480cb5b01e7f1fb5e5505f26dc36ce483d0734b24745b9f3ac43aebcf3f1a",
  "kind": "def",
  "lexical_name": "mkIncorrectToExisting",
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
  "slug": "mkincorrecttoexisting--f42a832ce6873e080343d452",
  "source": {
    "blob": "b19bba8a8c5de10ed0966326ff6034ed82083235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f42a832ce6873e080343d45295f01361d5cdd2b8fbf97981c5b9954700927d59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7a480cb5b01e7f1fb5e5505f26dc36ce483d0734b24745b9f3ac43aebcf3f1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkIncorrectToExisting : IO (PersistentEnvExtension (Name × Array Name) (Name × Array Name) (NameMap NameSet)) := registerPersistentEnvExtension {
  name := `Lean.identifierSuggestForAttr.incorrectToExisting
  mkInitial := pure {},
  addImportedFn := fun _ => pure {},
  addEntryFn := fun table (trueName, altNames) =>
    altNames.foldl (init := table) fun accum altName =>
      accum.alter altName fun old =>
        old.getD {} |>.insert trueName
  exportEntriesFn table :=
    table.toArray.map (fun (altName, trueNames) => (altName, trueNames.toArray))
      |>.qsort (lt := fun a b => Name.quickLt a.1 b.1)
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b19bba8a8c5de10ed0966326ff6034ed82083235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
