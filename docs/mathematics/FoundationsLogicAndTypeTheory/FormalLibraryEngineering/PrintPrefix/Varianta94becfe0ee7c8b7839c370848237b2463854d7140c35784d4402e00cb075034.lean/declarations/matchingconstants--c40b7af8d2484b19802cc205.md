# matchingConstants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5680487020b3b14f4ab62a7059b091a1a68d87a92efe078867574954df669a09",
  "kind": "def",
  "lexical_name": "matchingConstants",
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
  "slug": "matchingconstants--c40b7af8d2484b19802cc205",
  "source": {
    "blob": "ffac4a26e7d95cf436d77049316fce064446019f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Varianta94becfe0ee7c8b7839c370848237b2463854d7140c35784d4402e00cb075034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c40b7af8d2484b19802cc205bd04d071ed046fae19142b8642431d58406de63d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Varianta94becfe0ee7c8b7839c370848237b2463854d7140c35784d4402e00cb075034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5680487020b3b14f4ab62a7059b091a1a68d87a92efe078867574954df669a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def matchingConstants (opts : PrintPrefixConfig) (pre : Name)
     : MetaM (Array MessageData) := do
  let cinfos ← getMatchingConstants (matchName opts pre) opts.imported
  let cinfos := cinfos.qsort fun p q => lexNameLt (reverseName p.name) (reverseName q.name)
  cinfos.mapM fun cinfo => do
    if opts.showTypes then
      pure <| MessageData.signature cinfo.name ++ "\n"
    else
      pure m!"{MessageData.ofConst (← mkConstWithLevelParams cinfo.name)}\n"

/--
The command `#print prefix foo` will print all definitions that start with
the namespace `foo`.

For example, the command below will print out definitions in the `List` namespace:

```lean
#print prefix List
```

`#print prefix` can be controlled by flags in `PrintPrefixConfig`.  These provide
options for filtering names and formatting.   For example,
`#print prefix` by default excludes internal names, but this can be controlled
via config:
```lean
#print prefix (config := {internals := true}) List
```

By default, `#print prefix` prints the type after each name.  This can be controlled
by setting `showTypes` to `false`:
```lean
#print prefix (config := {showTypes := false}) List
```

The complete set of flags can be seen in the documentation
for `Lean.Elab.Command.PrintPrefixConfig`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Varianta94becfe0ee7c8b7839c370848237b2463854d7140c35784d4402e00cb075034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Varianta94becfe0ee7c8b7839c370848237b2463854d7140c35784d4402e00cb075034.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffac4a26e7d95cf436d77049316fce064446019f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
