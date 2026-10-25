# getStoredSuggestions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e75025933ddeaf9a3defc900bc9cf7bb4b55eec48eb2b96d436ff39aa575ba1",
  "kind": "def",
  "lexical_name": "getStoredSuggestions",
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
  "slug": "getstoredsuggestions--adc6a28207fd9e640db5de1d",
  "source": {
    "blob": "0737a9bd4abd2c83c4daa25de8290b22d361fc8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adc6a28207fd9e640db5de1d2be0741b1e9c12251787796a404ef2bb537f9745",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e75025933ddeaf9a3defc900bc9cf7bb4b55eec48eb2b96d436ff39aa575ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def getStoredSuggestions [Monad m] [MonadEnv m] (trueName : Name) : m NameSet := do
  let env ← getEnv
  let { state, importedEntries } := identifierSuggestionsImpl.1.toEnvExtension.getState env
  let localEntries := state.find? trueName |>.getD {}
  return importedEntries.foldl (init := localEntries) fun results moduleEntry =>
    match moduleEntry.binSearch (trueName, default) (fun a b => Name.quickLt a.1 b.1) with
    | none => results
    | some (_, extras) => extras.foldl (init := results) fun accum extra => accum.insert extra

/--
Throw an unknown constant/identifier error message, potentially suggesting alternatives using
{name}`suggest_for` attributes.

The replacement will mimic the path structure of the original as much as possible if they share a
path prefix: if there is a suggestion for replacing `Foo.Bar.jazz` with `Foo.Bar.baz`, then
`Bar.jazz` will be replaced by `Bar.baz` unless the resulting constant is ambiguous.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant28bdba0d5a3485733c9d8c577ec25a143ebb73f1d4e70608dcea970791e79e5c.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0737a9bd4abd2c83c4daa25de8290b22d361fc8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
