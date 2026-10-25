# ConfigItem.addCompletionInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7c62dd4b6a51aabe268aed34fc9d99a6fc7920cb9afcac5df7040ecbb30a801",
  "kind": "def",
  "lexical_name": "ConfigItem.addCompletionInfo",
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
  "slug": "configitem-addcompletioninfo--6b96075aef3479cdb980acfa",
  "source": {
    "blob": "da8b588ad75bbac0d376f2746fc662d763a88267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b96075aef3479cdb980acfaddaa54c2568f66a648753dfda0caa0259d10e37e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7c62dd4b6a51aabe268aed34fc9d99a6fc7920cb9afcac5df7040ecbb30a801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def ConfigItem.addCompletionInfo (item : ConfigItem) (structName : Name) : TermElabM Unit := do
  if (← getInfoState).enabled then
    if (← getEnv).contains structName then -- in case we are in Lean prelude
      addCompletionInfo (CompletionInfo.fieldId item.root item.root.getId {} structName)

variable {α : Type} {m : Type → Type} [Monad m] [MonadRef m] in
mutual
/--
Interprets `cfg` as configuration item or list of configuration items.

Items are interpreted in a way that allows user-defined configurations.
Nearly anything that looks like configuration items or lists of configuration items
will be interpreted. We're expecting an item that has one of the following formats:
- `"(" ident/atom ":=" syntax ")"`
- `"+" ident/atom`
- `"-" ident/atom`

The specification:
- A null node is a list of configurations
- A one-argument node is considered to be a wrapper like `optConfig` or `configItem`.
- A node with at two arguments starting with a "+"/"-" atom and whose second
  argument is an ident or atom is a `posConfigItem`/`negConfigItem`
- A node with at most five arguments starting with a "(" atom and whose second argument
  is an ident or atom is a `valConfigItem`. The fourth argument is the value,
  and it is allowed to have arbitary syntax (it does not need to be a `Term`).
- A bare atom is considered to be a `"+"` option.

We trust that any atoms are valid as idents. The atom will be parsed using `String.toName`
to form the name. (Small optimization: if the name doesn't contain `.`, we use `Name.mkSimple`
to skip parsing. Atoms must not contain numerals or `«»` escapes.)

On interpretation error, `onErr` is called with the current configuration object and the offending
syntax item. It may process the item itself or otherwise throw an error. We leave it to `onErr`
to decide what to do for items containing `Syntax.missing`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da8b588ad75bbac0d376f2746fc662d763a88267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
