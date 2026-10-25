# unusedVariables

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6c588112b2af6cea57d9e37fb25bb74b08c0b41a633eafe8491cd830f221c600",
  "kind": "def",
  "lexical_name": "unusedVariables",
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
  "slug": "unusedvariables--95e5be17832e6a5ecc176cf4",
  "source": {
    "blob": "c244760024c3f87637f2872ec3c4af895274db3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 486,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variant510f1193149b4d9ab3d400cdae854fd1f5c5f66eb734bd928e8540348f0b16f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95e5be17832e6a5ecc176cf4e88d26cd8903e4538fec9ee96f8b8fc79184f3f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variant510f1193149b4d9ab3d400cdae854fd1f5c5f66eb734bd928e8540348f0b16f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6c588112b2af6cea57d9e37fb25bb74b08c0b41a633eafe8491cd830f221c600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unusedVariables : Linter where
  run cmdStx := do
    unless getLinterUnusedVariables (← getLinterOptions) do
      return

    -- NOTE: `messages` is local to the current command
    if (← get).messages.hasErrors then
      return

    let some cmdStxRange := cmdStx.getRange?
      | return

    -- We used to look for `sorry` on the `Expr` level, which is more robust, but just too expensive
    -- on huge declarations (see e.g. `omega_stress` benchmark).
    if hasSorry cmdStx then
      return

    let infoTrees := (← get).infoState.trees.toArray

    let linterSets := (linterSetsExt.getState (← getEnv)).merged

    -- Run the main collection pass, resulting in `s : References`.
    let (_, s) ← (collectReferences infoTrees cmdStxRange linterSets).run {}

    -- If there are no local defs then there is nothing to do
    if s.fvarDefs.isEmpty then return

    -- Resolve all recursive references in `fvarAliases`.
    -- At this point everything in `fvarAliases` is guaranteed not to be itself an alias,
    -- and should point to some element of `FVarDefinition.aliases` in `s.fvarDefs`
    let fvarAliases : Std.HashMap FVarId FVarId := s.fvarAliases.fold (init := {}) fun m id baseId =>
      m.insert id (followAliases s.fvarAliases baseId)

    let getCanonVar (id : FVarId) : FVarId := fvarAliases.getD id id

    -- Collect all non-alias fvars corresponding to `fvarUses` by resolving aliases in the list.
    -- Unlike `s.fvarUses`, `fvarUsesRef` is guaranteed to contain no aliases.
    let fvarUsesRef ← IO.mkRef <| fvarAliases.fold (init := s.fvarUses) fun fvarUses id baseId =>
      if fvarUses.contains id then fvarUses.insert baseId else fvarUses

    -- Collect ignore functions
    let ignoreFns ← getUnusedVariablesIgnoreFns

    let mut initializedMVars := false
    let mut unused := #[]
    -- For each variable definition, check to see if it is used
    for (range, { userName, stx := declStx, opts, aliases }) in s.fvarDefs.toArray do
      let fvarUses ← fvarUsesRef.get
      -- If any of the `fvar`s corresponding to this declaration is (an alias of) a variable in
      -- `fvarUses`, then it is used
      if aliases.any fun id => fvarUses.contains (getCanonVar id) then continue
      -- If this is a global declaration then it is (potentially) used after the command
      if s.constDecls.contains range then continue

      -- Get the syntax stack for this variable declaration
      let some ((id', _) :: stack) := cmdStx.findStack? (·.getRange?.any (·.includes range))
        | continue

      -- If it is blacklisted by an `ignoreFn` then skip it
      let linterOpts ← opts.toLinterOptions
      if id'.isIdent && ignoreFns.any (· declStx stack linterOpts) then continue

      -- Evaluate ignore functions again on macro expansion outputs
      if ← infoTrees.anyM fun tree => do
        let some macroExpansions ← collectMacroExpansions? range tree | return false
        return macroExpansions.any fun expansion =>
          -- in a macro expansion, there may be multiple leafs whose (synthetic) range
          -- includes `range`, so accept strict matches only
          if let some (_ :: stack) :=
            expansion.output.findStack?
              (·.getRange?.any (·.includes range))
              (fun stx => stx.isIdent && stx.getRange?.any (· == range))
          then
            ignoreFns.any (· declStx stack linterOpts)
          else
            false
      then
        continue

      -- Visiting the metavariable assignments is expensive so we delay initialization
      if !initializedMVars then
        -- collect additional `fvarUses` from tactic assignments
        visitAssignments (← IO.mkRef {}) fvarUsesRef s.assignments
        -- Resolve potential aliases again to preserve `fvarUsesRef` invariant
        fvarUsesRef.modify fun fvarUses => fvarUses.toArray.map getCanonVar |> .insertMany {}
        initializedMVars := true
        let fvarUses ← fvarUsesRef.get
        -- Redo the initial check because `fvarUses` could be bigger now
        if aliases.any fun id => fvarUses.contains (getCanonVar id) then continue

      -- If we made it this far then the variable is unused and not ignored
      unused := unused.push (declStx, userName)

    -- Sort the outputs by position
    for (declStx, userName) in unused.qsort (·.1.getPos?.get! < ·.1.getPos?.get!) do
      let suggestion : Meta.Hint.Suggestion := s!"_{userName}"
      let suggestion := { suggestion with span? := declStx, diffGranularity := .none }
      let hint ← liftCoreM <| MessageData.hint
        m!"The binding can be removed (if unused) or named `_` (if used implicitly). \
          Alternatively, prefix the name with `_` to silence this warning:" #[suggestion]
      logLint linter.unusedVariables declStx
        (m!"Variable name `{userName}` is not explicitly referenced." ++ hint)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variant510f1193149b4d9ab3d400cdae854fd1f5c5f66eb734bd928e8540348f0b16f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedVariables/Variant510f1193149b4d9ab3d400cdae854fd1f5c5f66eb734bd928e8540348f0b16f3.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c244760024c3f87637f2872ec3c4af895274db3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
