# withIncRecDepth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6adc24fa4c552e48e356b6fafab04f1d4a830fbd0689a410bc861f789d40e9b0",
  "kind": "def",
  "lexical_name": "withIncRecDepth",
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
  "slug": "withincrecdepth--303a21d0d7f88c1cb334fe4c",
  "source": {
    "blob": "a30c897e85a7a75959fb70fe3a4596e2099fc4f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Varianta7b4713457d4f7ecc26b364727a937c6734030063c401f46232115423e7b2574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:303a21d0d7f88c1cb334fe4c06211f1a09f1274fe6007f58c710f93c7574b01b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Varianta7b4713457d4f7ecc26b364727a937c6734030063c401f46232115423e7b2574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6adc24fa4c552e48e356b6fafab04f1d4a830fbd0689a410bc861f789d40e9b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def withIncRecDepth (x : SimpM α) : SimpM α := do
  let curr ← MonadRecDepth.getRecDepth
  let max  ← MonadRecDepth.getMaxRecDepth
  if max != 0 && curr == max then
    throwMaxRecDepth
  else
    MonadRecDepth.withRecDepth (curr+1) x
where
  throwMaxRecDepth : SimpM α := do
    match (← read).inlineStack with
    | [] => throwError maxRecDepthErrorMessage
    | declName :: stack =>
      let mut fmt  := m!"{.ofConstName declName}\n"
      let mut prev := declName
      let mut ellipsis := false
      for declName in stack do
        if prev == declName then
          unless ellipsis do
            ellipsis := true
            fmt := fmt ++ "...\n"
        else
          fmt := fmt ++ m!"{.ofConstName declName}\n"
          prev := declName
          ellipsis := false
      throwError "maximum recursion depth reached in the code generator\nfunction inline stack:\n{fmt}"

/--
Execute `x` with `fvarId` set as `mustInline`.
After execution the original setting is restored.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Varianta7b4713457d4f7ecc26b364727a937c6734030063c401f46232115423e7b2574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpM/Varianta7b4713457d4f7ecc26b364727a937c6734030063c401f46232115423e7b2574.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a30c897e85a7a75959fb70fe3a4596e2099fc4f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
