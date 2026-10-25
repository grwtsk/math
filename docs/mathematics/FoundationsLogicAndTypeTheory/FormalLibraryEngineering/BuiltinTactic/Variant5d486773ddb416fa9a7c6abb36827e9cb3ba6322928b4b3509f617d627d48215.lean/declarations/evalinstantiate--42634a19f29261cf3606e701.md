# evalInstantiate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08c14d1abe854a9a671b8eee7a5ad746edf1c61ad98fd54f53ef79f6abb84fb6",
  "kind": "def",
  "lexical_name": "evalInstantiate",
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
  "slug": "evalinstantiate--42634a19f29261cf3606e701",
  "source": {
    "blob": "2fc5e65ad48ce00ba2633da99d5be1ee6c2ee8d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42634a19f29261cf3606e701aac620358953d5bbcac41b83297f6570f3676c85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08c14d1abe854a9a671b8eee7a5ad746edf1c61ad98fd54f53ef79f6abb84fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_grind_tactic instantiate] def evalInstantiate : GrindTactic := fun stx => withMainContext do
  let `(grind| instantiate $[ only%$only ]? $[ approx ]? $[ [ $[$thmRefs?:thm],* ] ]?) := stx | throwUnsupportedSyntax
  let goal ← getMainGoal
  let only := only.isSome
  let initThms ← if only then goal.getActiveMatchEqTheorems else pure #[]
  let mut thms := initThms
  if let some thmRefs := thmRefs? then
    for thmRef in thmRefs do
      match thmRef with
      -- **Note**: Delete `namespace` modifier. We should use a custom `grind` attribute for this.
      | `(Parser.Tactic.Grind.thm| namespace $ns:ident) =>
        let namespaceName := ns.getId
        let scopedThms ← Grind.grindExt.getEMatchTheoremsForNamespace namespaceName
        thms := thms ++ scopedThms
      | `(Parser.Tactic.Grind.thm| #$anchor:hexnum) => thms := thms ++ (← withRef thmRef <| elabLocalEMatchTheorem anchor)
      | `(Parser.Tactic.Grind.thm| $[$mod?:grindMod]? $id:ident) => thms := thms ++ (← withRef thmRef <| elabThm mod? id false)
      | `(Parser.Tactic.Grind.thm| ! $[$mod?:grindMod]? $id:ident) => thms := thms ++ (← withRef thmRef <| elabThm mod? id true)
      | _ => throwErrorAt thmRef "unexpected theorem reference"
  ematchThms only thms
where
  collectThms (anchorRef : AnchorRef) (thms : PArray EMatchTheorem) : StateT (Array EMatchTheorem) GrindTacticM Unit := do
    let mut found : Std.HashSet Expr := {}
    for thm in thms do
      -- **Note**: `anchors` are cached using pointer addresses, if this is a performance issue, we should
      -- cache the theorem types.
      let type ← inferType thm.proof
      let anchor ← liftGrindM <| getAnchor type
      if anchorRef.matches anchor then
        -- **Note**: We display the anchor term at most once.
        unless found.contains type do
          logTheoremAnchor thm.proof
          found := found.insert type
        modify (·.push thm)

  elabLocalEMatchTheorem (anchor : TSyntax `hexnum) : GrindTacticM (Array EMatchTheorem) := withRef anchor do
    let anchorRef ← elabAnchorRef anchor
    let goal ← getMainGoal
    let thms ← StateT.run' (s := #[]) do
      collectThms anchorRef goal.ematch.thms
      collectThms anchorRef goal.ematch.newThms
      get
    if thms.isEmpty then
      throwError "no local theorems"
    return thms

  ensureNoMinIndexable (minIndexable : Bool) : MetaM Unit := do
    if minIndexable then
      throwError "redundant modifier `!` in `grind` parameter"

  elabEMatchTheorem (declName : Name) (kind : Grind.EMatchTheoremKind) (minIndexable : Bool) : GrindTacticM (Array EMatchTheorem) := do
    let params := (← read).params
    let info ← getAsyncConstInfo declName
    match info.kind with
    | .thm | .axiom | .ctor =>
      match kind with
      | .eqBoth gen =>
        ensureNoMinIndexable minIndexable
        let thm₁ ← Grind.mkEMatchTheoremForDecl declName (.eqLhs gen) params.symPrios
        let thm₂ ← Grind.mkEMatchTheoremForDecl declName (.eqRhs gen) params.symPrios
        return #[thm₁, thm₂]
      | _ =>
        if kind matches .eqLhs _ | .eqRhs _ then
          ensureNoMinIndexable minIndexable
        let thm ← Grind.mkEMatchTheoremForDecl declName kind params.symPrios (minIndexable := minIndexable)
        return #[thm]
    | .defn =>
      if (← isReducible declName) then
        throwError "`{.ofConstName declName}` is a reducible definition, `grind` automatically unfolds them"
      if !kind.isEqLhs && !kind.isDefault then
        throwError "invalid `grind` parameter, `{.ofConstName declName}` is a definition, the only acceptable (and redundant) modifier is '='"
      ensureNoMinIndexable minIndexable
      let some thms ← Grind.mkEMatchEqTheoremsForDef? declName
        | throwError "failed to generate equation theorems for `{.ofConstName declName}`"
      return thms
    | _ =>
      throwError "invalid `grind` parameter, `{.ofConstName declName}` is not a theorem, definition, or inductive type"

  elabThm
      (mod? : Option (TSyntax `Lean.Parser.Attr.grindMod))
      (id : TSyntax `ident)
      (minIndexable : Bool) : GrindTacticM (Array EMatchTheorem) := do
    let declName ← realizeGlobalConstNoOverloadWithInfo id
    let kind ← if let some mod := mod? then Grind.getAttrKindCore mod else pure .infer
    match kind with
    | .ematch .user =>
      ensureNoMinIndexable minIndexable
      let params := (← read).params
      let thms := params.extensions.find (.decl declName)
      let thms := thms.filter fun thm => thm.kind == .user
      if thms.isEmpty then
        throwError "invalid use of `usr` modifier, `{.ofConstName declName}` does not have patterns specified with the command `grind_pattern`"
      return thms.toArray
    | .ematch kind =>
      elabEMatchTheorem declName kind minIndexable
    | .infer =>
      let goal ← getMainGoal
      let thms := goal.ematch.thmMap.find (.decl declName)
      if thms.isEmpty then
        elabEMatchTheorem declName (.default false) minIndexable
      else
        return thms.toArray
    | .cases _ | .intro | .inj | .ext | .symbol _ | .funCC | .norm .. | .unfold =>
      throwError "invalid modifier"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant5d486773ddb416fa9a7c6abb36827e9cb3ba6322928b4b3509f617d627d48215.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fc5e65ad48ce00ba2633da99d5be1ee6c2ee8d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
