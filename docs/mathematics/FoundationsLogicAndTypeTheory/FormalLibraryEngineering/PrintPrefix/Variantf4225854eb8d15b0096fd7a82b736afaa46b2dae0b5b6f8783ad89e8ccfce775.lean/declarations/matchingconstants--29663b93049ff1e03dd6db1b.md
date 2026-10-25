# matchingConstants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81bfdaa002ef648fe04d9b59f800be3789b008b7b2996634652d9c0805c0cc05",
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
  "slug": "matchingconstants--29663b93049ff1e03dd6db1b",
  "source": {
    "blob": "1694ceda56b2e0e661f8423eb14066b4c82584a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 89,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantf4225854eb8d15b0096fd7a82b736afaa46b2dae0b5b6f8783ad89e8ccfce775.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29663b93049ff1e03dd6db1bbaa42955ab0ff3648a013fbac352927a5a666a7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantf4225854eb8d15b0096fd7a82b736afaa46b2dae0b5b6f8783ad89e8ccfce775.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81bfdaa002ef648fe04d9b59f800be3789b008b7b2996634652d9c0805c0cc05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–125.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantf4225854eb8d15b0096fd7a82b736afaa46b2dae0b5b6f8783ad89e8ccfce775.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variantf4225854eb8d15b0096fd7a82b736afaa46b2dae0b5b6f8783ad89e8ccfce775.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1694ceda56b2e0e661f8423eb14066b4c82584a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
