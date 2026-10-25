# OLeanEntries.get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf77a25f7a5846f83b838e33bab0af7ae0bbf5a0ed75cbc6afe8571cf49fc9c3",
  "kind": "def",
  "lexical_name": "OLeanEntries.get",
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
  "slug": "oleanentries-get--9dfb14f54acb096ebce9f284",
  "source": {
    "blob": "33928512dadcfa2e42a307499e9228596da0341a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1630,
    "line": 1581,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dfb14f54acb096ebce9f284061edfdaf37e47592600853d732fe5308c7715de",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf77a25f7a5846f83b838e33bab0af7ae0bbf5a0ed75cbc6afe8571cf49fc9c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1581–1630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def OLeanEntries.get (e : OLeanEntries α) : OLeanLevel → α
  | .exported => e.exported
  | .server   => e.server
  | .private  => e.private

/--
An environment extension with support for storing/retrieving entries from a .olean file.
 - α is the type of the entries that are stored in .olean files.
 - β is the type of values used to update the state.
 - σ is the actual state.

For most extensions, α and β coincide. `α` and `β` do not coincide for extensions where the data
used to update the state contains elements which cannot be stored in files (for example, closures).

During elaboration of a module, state of type `σ` can be both read and written. When elaboration is
complete, the state of type `σ` is converted to serialized state of type `Array α` by
`exportEntriesFn`. To read the current module's state, use `PersistentEnvExtension.getState`. To
modify it, use `PersistentEnvExtension.addEntry`, with an `addEntryFn` that performs the appropriate
modification.

When a module is loaded, the values saved by all of its dependencies for this
`PersistentEnvExtension` are available as an `Array (Array α)` via the environment extension,
with one array per transitively imported module. The state of type `σ` used in the current module
can be initialized from these imports by specifying a suitable `addImportedFn`. The `addImportedFn`
runs at the beginning of elaboration for every module, so it's usually better for performance to
query the array of imported modules directly, because only a fraction of imported entries is usually
queried during elaboration of a module.

The most typical pattern for using `PersistentEnvExtension` is to set `σ` to a datatype such as
`NameMap` that efficiently tracks data for the current module. Then, in `exportEntriesFn`, this type
is converted to an array of pairs, sorted by the key. Given `ext : PersistentEnvExtension α β σ` and
`env : Environment`, the complete array of imported entries sorted by module index can be obtained
using `(ext.toEnvExtension.getState env).importedEntries`. To query the extension for some constant
name `n`, first use `env.getModuleIdxFor? n`. If it returns `none`, look up `n` in the current
module's state (the `NameMap`). If it returns `some idx`, use `ext.getModuleEntries env idx` to get
the array of entries for `n`'s defining module, and query it using `Array.binSearch`. This pattern
imposes a constraint that the extension can only track metadata that is declared in the same module
as the definition to which it applies; relaxing this restriction can make queries slower due to
needing to search _all_ modules. If it is necessary to search all modules, it is usually better to
initialize the state of type `σ` once from all imported entries and choose a more efficient search
datastructure for it.

Note that `addEntryFn` is not in `IO`. This is intentional, and allows us to write simple functions
such as
```
def addAlias (env : Environment) (a : Name) (e : Name) : Environment :=
aliasExtension.addEntry env (a, e)
```
without using `IO`. We have many functions like `addAlias`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variantee364e4788ce0560c87f621eeb3c4c3dfec62e8db4e15e099fd80e6adc533b86.lean#L1581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33928512dadcfa2e42a307499e9228596da0341a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
