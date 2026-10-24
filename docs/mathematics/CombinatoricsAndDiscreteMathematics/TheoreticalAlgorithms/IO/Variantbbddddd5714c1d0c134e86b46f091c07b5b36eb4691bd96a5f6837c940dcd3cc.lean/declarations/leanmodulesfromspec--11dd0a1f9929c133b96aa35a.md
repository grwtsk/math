# leanModulesFromSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fc4b00bc8a7cbfa8bee797b850df80ae115479bd295e27e8b53862a60b1e1e8",
  "kind": "def",
  "lexical_name": "leanModulesFromSpec",
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
  "slug": "leanmodulesfromspec--11dd0a1f9929c133b96aa35a",
  "source": {
    "blob": "289a460cb04f5f093ab7128bf1b430099fe18f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 576,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantbbddddd5714c1d0c134e86b46f091c07b5b36eb4691bd96a5f6837c940dcd3cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11dd0a1f9929c133b96aa35a352ffd7723b7c984a8ba07fdd5b73d8768fe057a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantbbddddd5714c1d0c134e86b46f091c07b5b36eb4691bd96a5f6837c940dcd3cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fc4b00bc8a7cbfa8bee797b850df80ae115479bd295e27e8b53862a60b1e1e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 576–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leanModulesFromSpec (sp : SearchPath) (argₛ : String) :
    IO <| Except String <| Array (Name × FilePath) := do
  if argₛ.startsWith "-" then
    -- provided option after command
    return .error s!"Invalid argument: option must come before command {argₛ}"
  -- TODO: This could be just `FilePath.normalize` if the TODO there was addressed
  let arg : FilePath := System.mkFilePath <|
    (argₛ : FilePath).normalize.components.filter (· != "")
  if arg.components.length > 1 || arg.extension == "lean" then
    -- provided file name of a Lean file
    let mod : Name := arg.withExtension "" |>.components.foldl .str .anonymous
    if !(← arg.pathExists) then
      -- TODO: (6.) We could use `getSrcDir` to allow arguments like `Aesop/Builder.lean` which
      -- refer to a file located under `.lake/packages/...`
      return .error s!"Invalid argument: non-existing path {arg}"
    if arg.extension == "lean" then
      -- (4.) provided existing `.lean` file
      return .ok #[(mod, arg)]
    else
      -- (5.) provided existing directory: walk it
      IO.println s!"Searching directory {arg} for .lean files"
      let leanModulesInFolder ← walkDir sp arg mod
      return .ok leanModulesInFolder
  else
    -- provided a module
    -- user might provide `.*` or `.+` to include folders
    match Lake.Glob.ofString? argₛ with
    | none =>
      return .error s!"Invalid argument: expected path or module name, not {argₛ}"
    | some glob =>
      let modules ← match glob with
      | .one mod =>
        let sourceFile ← Lean.findLean sp mod
        pure #[(mod, sourceFile)]
      | .submodules mod =>
        let sourceFile ← Lean.findLean sp mod
        let folder := sourceFile.withExtension ""
        if ← folder.pathExists then
          IO.println s!"Searching directory {folder} for .lean files"
          let leanModulesInFolder ← walkDir sp folder mod
          pure leanModulesInFolder
        else
          pure #[]
      | .andSubmodules mod =>
        let sourceFile ← Lean.findLean sp mod
        let folder := sourceFile.withExtension ""
        if ← folder.pathExists then
          IO.println s!"Searching directory {folder} for .lean files"
          let leanModulesInFolder ← walkDir sp folder mod
          pure <| #[(mod, sourceFile)] ++ leanModulesInFolder
        else
          pure #[]
      if !modules.isEmpty then
        return .ok modules
      else
        return .error s!"Invalid argument: {argₛ}"

where
  /--
  Search all `.lean` files inside `folder`.

  In order to figure out the module name corresponding
  to the found files, we use `mod` and the search path `sp` to figure out how much of
  the relative path needs to be trimmed.

  This assumes the `folder` exists.
  -/
  walkDir (sp : SearchPath) (folder : FilePath) (mod : Name) : IO <| Array (Name × FilePath) := do
    -- The source directory where `mod` is located
    let srcDir ← getSrcDir sp mod
    -- find all Lean files in the folder only skipping special entries such as `.` and `..`
    let files ← folder.walkDir (pure ·.fileName.isSome)
    let leanFiles := files.filter (·.extension == some "lean")
    let mut leanModulesInFolder : Array (Name × FilePath) := #[]
    for file in leanFiles do
      let path := file.withoutParent srcDir
      let mod : Name := path.withExtension "" |>.components.foldl .str .anonymous
      leanModulesInFolder := leanModulesInFolder.push (mod, file)
    pure leanModulesInFolder

/--
Parse command line arguments.
Position `0` (i.e. the command `get`, `clean`, etc.) is ignored.

The remaining arguments are parsed as either module name or file path, see `leanModulesFromSpec`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantbbddddd5714c1d0c134e86b46f091c07b5b36eb4691bd96a5f6837c940dcd3cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variantbbddddd5714c1d0c134e86b46f091c07b5b36eb4691bd96a5f6837c940dcd3cc.lean#L576).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `289a460cb04f5f093ab7128bf1b430099fe18f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
