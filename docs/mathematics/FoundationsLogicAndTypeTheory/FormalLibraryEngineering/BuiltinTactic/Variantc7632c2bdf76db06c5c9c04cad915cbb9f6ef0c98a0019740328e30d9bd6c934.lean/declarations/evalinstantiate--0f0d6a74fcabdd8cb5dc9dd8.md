# evalInstantiate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af0afc632d3eb64f7c600289e7c4ac874c4a05b2356520050d219eea5c0fa9d5",
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
  "slug": "evalinstantiate--0f0d6a74fcabdd8cb5dc9dd8",
  "source": {
    "blob": "5251f9943b92d668e7c9ca25c5527fec86b040e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f0d6a74fcabdd8cb5dc9dd8584ee6e4708b12b68b6bc3f20e7624b3cdbf805d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af0afc632d3eb64f7c600289e7c4ac874c4a05b2356520050d219eea5c0fa9d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–265.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variantc7632c2bdf76db06c5c9c04cad915cbb9f6ef0c98a0019740328e30d9bd6c934.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5251f9943b92d668e7c9ca25c5527fec86b040e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
