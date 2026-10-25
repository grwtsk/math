# mkBaseNameWithSuffix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b510a0c2dfb2df4eb61c6c172ce1a791f0e16dc9a2532452695db4bd6633c27e",
  "kind": "def",
  "lexical_name": "mkBaseNameWithSuffix",
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
  "slug": "mkbasenamewithsuffix--43a9942f24b57635e18db929",
  "source": {
    "blob": "b066885af07612d0abc58f0d8e139677ac422f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43a9942f24b57635e18db929fd2d1bf7dac6678b16331fb2c00319e840484c79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b510a0c2dfb2df4eb61c6c172ce1a791f0e16dc9a2532452695db4bd6633c27e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBaseNameWithSuffix (pre : String) (type : Expr) : MetaM Name := do
  let (name, st) ← mkBaseName type |>.run {}
  let name := pre ++ name
  let project := (← getMainModule).getRoot
  -- Collect the modules for each constant that appeared.
  let modules ← st.consts.foldlM (init := Array.mkEmpty st.consts.size) fun mods name => return mods.push (← findModuleOf? name)
  -- We can avoid adding the suffix if the instance refers to module-local names.
  let isModuleLocal := modules.any Option.isNone
  -- We can also avoid adding the full module suffix if the instance refers to "project"-local names.
  let isProjectLocal := isModuleLocal || modules.any fun mod? => mod?.map (·.getRoot) == project
  let name := Name.mkSimple <|
    if !isProjectLocal then
      s!"{name}{moduleToSuffix project}"
    else
      name
  if Option.isSome <| type.find? (fun e => if let .const n _ := e then n.hasMacroScopes else false) then
    mkFreshUserName name
  else
    return name

/--
Elaborates the binders and type and then uses `mkBaseNameWithSuffix` to generate a name.
Furthermore, uses `mkUnusedBaseName` on the result.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b066885af07612d0abc58f0d8e139677ac422f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
