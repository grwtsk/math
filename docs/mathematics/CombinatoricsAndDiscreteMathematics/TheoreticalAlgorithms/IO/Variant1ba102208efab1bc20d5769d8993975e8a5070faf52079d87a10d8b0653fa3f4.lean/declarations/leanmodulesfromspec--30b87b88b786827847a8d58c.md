# leanModulesFromSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73b92d3e3e28af7d8dd20f003c396a52f8e147ee7829e7a1a576aad7596b2850",
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
  "slug": "leanmodulesfromspec--30b87b88b786827847a8d58c",
  "source": {
    "blob": "a3eb4a8b85e2be99a9254d42e3accc4871428b2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 495,
    "line": 450,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant1ba102208efab1bc20d5769d8993975e8a5070faf52079d87a10d8b0653fa3f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30b87b88b786827847a8d58c7983152b21bba4da0a7be5b93f300626bbadc009",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant1ba102208efab1bc20d5769d8993975e8a5070faf52079d87a10d8b0653fa3f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73b92d3e3e28af7d8dd20f003c396a52f8e147ee7829e7a1a576aad7596b2850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–495.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leanModulesFromSpec (sp : SearchPath) (argₛ : String) :
    IO <| Except String <| Array (Name × FilePath) := do
  -- TODO: This could be just `FilePath.normalize` if the TODO there was addressed
  let arg : FilePath := System.mkFilePath <|
    (argₛ : FilePath).normalize.components.filter (· != "")
  if arg.components.length > 1 || arg.extension == "lean" then
    -- provided file name of a Lean file
    let mod : Name := arg.withExtension "" |>.components.foldl .str .anonymous
    if !(← arg.pathExists) then
      -- TODO: (5.) We could use `getSrcDir` to allow arguments like `Aesop/Builder.lean` which
      -- refer to a file located under `.lake/packages/...`
      return .error s!"Invalid argument: non-existing path {arg}"
    if arg.extension == "lean" then
      -- (3.) provided existing `.lean` file
      return .ok #[(mod, arg)]
    else
      -- (4.) provided existing directory: walk it
      return .error "Searching lean files in a folder is not supported yet!"
  else
    -- provided a module
    let mod := argₛ.toName
    let sourceFile ← Lean.findLean sp mod
    if ← sourceFile.pathExists then
      -- (1.) provided valid module
      return .ok #[(mod, sourceFile)]
    else
      -- provided "pseudo-module" (like `Mathlib.Data`) which
      -- does not correspond to a Lean file, but to an existing folder
      -- `Mathlib/Data/`
      let folder := sourceFile.withExtension ""
      IO.println s!"Searching directory {folder} for .lean files"
      if ← folder.pathExists then
        -- (2.) provided "module name" of an existing folder: walk dir
        -- TODO: will be implemented in #21838
        return .error "Entering a part of a module name \
          (i.e. `Mathlib.Data` when only the folder `Mathlib/Data/` but no \
          file `Mathlib/Data.lean` exists) is not supported yet!"
      else
        return .error "Invalid argument: non-existing module {mod}"

/--
Parse command line arguments.
Position `0` (i.e. the command `get`, `clean`, etc.) is ignored.

The remaining arguments are parsed as either module name or file path, see `leanModulesFromSpec`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant1ba102208efab1bc20d5769d8993975e8a5070faf52079d87a10d8b0653fa3f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant1ba102208efab1bc20d5769d8993975e8a5070faf52079d87a10d8b0653fa3f4.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3eb4a8b85e2be99a9254d42e3accc4871428b2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
