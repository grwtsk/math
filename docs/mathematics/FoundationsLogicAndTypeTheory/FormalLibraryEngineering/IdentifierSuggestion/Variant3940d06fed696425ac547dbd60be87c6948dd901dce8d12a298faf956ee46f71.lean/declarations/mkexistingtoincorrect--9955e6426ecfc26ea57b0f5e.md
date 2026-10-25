# mkExistingToIncorrect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d64682622d5b72e2972c356e82d825bf810dee4d2efe7da13cd4796e01cef1de",
  "kind": "def",
  "lexical_name": "mkExistingToIncorrect",
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
  "slug": "mkexistingtoincorrect--9955e6426ecfc26ea57b0f5e",
  "source": {
    "blob": "b19bba8a8c5de10ed0966326ff6034ed82083235",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9955e6426ecfc26ea57b0f5eeacb21a0b2ca426865008c39fbfbd8956ff6ce37",
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

Occurrence: `declaration:d64682622d5b72e2972c356e82d825bf810dee4d2efe7da13cd4796e01cef1de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkExistingToIncorrect : IO (PersistentEnvExtension (Name × Array Name) (Name × Array Name) (NameMap NameSet)) := registerPersistentEnvExtension {
  name := `Lean.identifierSuggestForAttr.existingToIncorrect
  mkInitial := pure {},
  addImportedFn := fun _ => pure {},
  addEntryFn := fun table (trueName, altNames) =>
    table.alter trueName fun old =>
      altNames.foldl (β := NameSet) (init := old.getD {}) fun accum altName =>
        accum.insert altName
  exportEntriesFn table :=
    table.toArray.map (fun (trueName, altNames) =>(trueName, altNames.toArray))
      |>.qsort (lt := fun a b => Name.quickLt a.1 b.1)
}

/--
Create the extension mapping incorrect identifiers to the existing identifiers we want to suggest as
replacements. This association is the opposite of the usual mapping for {name}`ParametricAttribute`
attributes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IdentifierSuggestion/Variant3940d06fed696425ac547dbd60be87c6948dd901dce8d12a298faf956ee46f71.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b19bba8a8c5de10ed0966326ff6034ed82083235` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
