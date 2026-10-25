# addProjections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:917b6ee4c5e2e1862b00d6c022ffdc4dce7b50ffff6bacc93992606a0bbb65e0",
  "kind": "def",
  "lexical_name": "addProjections",
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
  "slug": "addprojections--e3338eaee474dc0417f0ad36",
  "source": {
    "blob": "373c37e1ed79c058cc173787d3c0450d7deb1f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1232,
    "line": 1078,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3338eaee474dc0417f0ad3643e64a144a4f163a2d2c4aaf510e386c6882ca28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:917b6ee4c5e2e1862b00d6c022ffdc4dce7b50ffff6bacc93992606a0bbb65e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1078–1232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def addProjections (nm : NameStruct) (type lhs rhs : Expr)
    (args : Array Expr) (mustBeStr : Bool) (cfg : Config)
    (todo : List (String × Syntax)) (toApply : List Nat) : MetaM (Array Name) := do
  -- we don't want to unfold non-reducible definitions (like `Set`) to apply more arguments
  trace[simps.debug] "Type of the Expression before normalizing: {type}"
  withTransparency cfg.typeMd <| forallTelescopeReducing type fun typeArgs tgt ↦ withDefault do
  trace[simps.debug] "Type after removing pi's: {tgt}"
  -- TODO: consider reducing the type less aggressively.
  -- See https://leanprover.zulipchat.com/#narrow/channel/287929-mathlib4/topic/Simps.20and.20.60def.60/near/560586075
  let tgtWhnf ← whnfD tgt
  trace[simps.debug] "Type after reduction: {tgtWhnf}"
  let newArgs := args ++ typeArgs
  let lhsAp := lhs.instantiateLambdasOrApps typeArgs
  let rhsAp := rhs.instantiateLambdasOrApps typeArgs
  let str := tgtWhnf.getAppFn.constName
  trace[simps.debug] "todo: {todo}, toApply: {toApply}"
  -- We want to generate the current projection if it is in `todo`
  let todoNext := todo.filter (·.1 ≠ "")
  let env ← getEnv
  let stx? := todo.find? (·.1 == "") |>.map (·.2)
  /- The syntax object associated to the projection we're making now (if any).
  Note that we use `ref[0]` so that with `simps (config := ...)` we associate it to the word `simps`
  instead of the application of the attribute to arguments. -/
  let stxProj := stx?.getD ref[0]
  let strInfo? := getStructureInfo? env str
  /- Don't recursively continue if `str` is not a structure or if the structure is in
  `notRecursive`. -/
  if strInfo?.isNone ||
    (todo.isEmpty && str ∈ cfg.notRecursive && !mustBeStr && toApply.isEmpty) then
    if mustBeStr then
      throwError "Invalid `simps` attribute. Target {str} is not a structure"
    if !todoNext.isEmpty && str ∉ cfg.notRecursive then
      let firstTodo := todoNext.head!.1
      throwError "Invalid simp lemma {nm.update (dropLast firstTodo) false |>.toName}.\n\
        Projection {(splitOnNotNumber firstTodo "_")[0]!} doesn't exist, \
        because target {str} is not a structure."
    if cfg.fullyApplied then
      addProjection stxProj univs nm.toName tgt lhsAp rhsAp newArgs cfg
    else
      addProjection stxProj univs nm.toName type lhs rhs args cfg
    return #[nm.toName]
  -- if the type is a structure
  let some (.inductInfo { isRec := false, ctors := [ctor], .. }) := env.find? str | unreachable!
  trace[simps.debug] "{str} is a structure with constructor {ctor}."
  let rhsEta ← headStructureEtaReduce rhsAp
  -- did the user ask to add this projection?
  let addThisProjection := stx?.isSome && toApply.isEmpty
  if addThisProjection then
    -- we pass the precise argument of simps as syntax argument to `addProjection`
    if cfg.fullyApplied then
      addProjection stxProj univs nm.toName tgt lhsAp rhsEta newArgs cfg
    else
      addProjection stxProj univs nm.toName type lhs rhs args cfg
  let rhsWhnf ← withTransparency cfg.rhsMd <| whnf rhsEta
  trace[simps.debug] "The right-hand-side {indentExpr rhsAp}\n reduces to {indentExpr rhsWhnf}"
  if !rhsWhnf.getAppFn.isConstOf ctor then
    -- if I'm about to run into an error, try to set the transparency for `rhsMd` higher.
    if cfg.rhsMd == .reducible && (mustBeStr || !todoNext.isEmpty || !toApply.isEmpty) then
      trace[simps.debug] "Using relaxed reducibility."
      Linter.logLintIf linter.simpsNoConstructor ref m!"\
        The definition {nm.toName} is not a constructor application. \
        Please use `@[simps!]` instead.\n\
        \n\
        Explanation: `@[simps]` uses the definition to find what the simp lemmas should \
        be. If the definition is a constructor, then this is easy, since the values of the \
        projections are just the arguments to the constructor. If the definition is not a \
        constructor, then `@[simps]` will unfold the right-hand side until it has found a \
        constructor application, and uses those values.\n\n\
        This might not always result in the simp-lemmas you want, so you are advised to use \
        `@[simps?]` to double-check whether `@[simps]` generated satisfactory lemmas.\n\
        Note 1: `@[simps!]` also calls the `simp` tactic, and this can be expensive in certain \
        cases.\n\
        Note 2: `@[simps!]` is equivalent to `@[simps (config := \{rhsMd := .default, \
        simpRhs := true})]`. You can also try `@[simps (config := \{rhsMd := .default})]` \
        to still unfold the definitions, but avoid calling `simp` on the resulting statement.\n\
        Note 3: You need `simps!` if not all fields are given explicitly in this definition, \
        even if the definition is a constructor application. For example, if you give a \
        `MulEquiv` by giving the corresponding `Equiv` and the proof that it respects \
        multiplication, then you need to mark it as `@[simps!]`, since the attribute needs to \
        unfold the corresponding `Equiv` to get to the `toFun` field."
      let nms ← addProjections nm type lhs rhs args mustBeStr
        { cfg with rhsMd := .default, simpRhs := true } todo toApply
      return if addThisProjection then nms.push nm.toName else nms
    if !toApply.isEmpty then
      throwError "Invalid simp lemma {nm.toName}.\nThe given definition is not a constructor \
        application:{indentExpr rhsWhnf}"
    if mustBeStr then
      throwError "Invalid `simps` attribute. The body is not a constructor application:\
        {indentExpr rhsWhnf}"
    if !todoNext.isEmpty then
      throwError "Invalid simp lemma {nm.update (dropLast todoNext.head!.1) false |>.toName}.\
        \nThe given definition is not a constructor application:{indentExpr rhsWhnf}"
    if !addThisProjection then
      if cfg.fullyApplied then
        addProjection stxProj univs nm.toName tgt lhsAp rhsEta newArgs cfg
      else
        addProjection stxProj univs nm.toName type lhs rhs args cfg
    return #[nm.toName]
  -- if the value is a constructor application
  trace[simps.debug] "Generating raw projection information..."
  let projInfo ← getProjectionExprs ref tgtWhnf rhsWhnf cfg
  trace[simps.debug] "Raw projection information:{indentD m!"{projInfo}"}"
  -- If we are in the middle of a composite projection.
  if let idx :: rest := toApply then
    let some ⟨newRhs, _⟩ := projInfo[idx]?
      | throwError "unreachable: index of composite projection is out of bounds."
    let newType ← inferType newRhs
    trace[simps.debug] "Applying a custom composite projection. Todo: {toApply}. Current lhs:\
      {indentExpr lhsAp}"
    return ← addProjections nm newType lhsAp newRhs newArgs false cfg todo rest
  trace[simps.debug] "Not in the middle of applying a custom composite projection"
  /- We stop if no further projection is specified or if we just reduced an eta-expansion and we
  automatically choose projections -/
  if todo.length == 1 && todo.head!.1 == "" then return #[nm.toName]
  let projs : Array Name := projInfo.map fun x ↦ x.2.name
  let todo := todoNext
  trace[simps.debug] "Next todo: {todoNext}"
  -- check whether all elements in `todo` have a projection as prefix
  if let some (x, _) := todo.find? fun (x, _) ↦ projs.all
    fun proj ↦ !isPrefixOfAndNotNumber (proj.lastComponentAsString ++ "_") x then
    let simpLemma := nm.update (dropLast x) |>.toName
    let neededProj := (splitOnNotNumber x "_")[0]!
    throwError "Invalid simp lemma {simpLemma}. \
      Structure {str} does not have projection {neededProj}.\n\
      The known projections are:\
      {indentD <| toMessageData projs}\n\
      You can also see this information by running\
      \n  `initialize_simps_projections? {str}`.\n\
      Note: these projection names might be customly defined for `simps`, \
      and could differ from the projection names of the structure."
  let nms ← projInfo.flatMapM fun ⟨newRhs, proj, projExpr, projNrs, isDefault, isPrefix⟩ ↦ do
    let newType ← inferType newRhs
    let newTodo := todo.filterMap
      fun (x, stx) ↦ (dropPrefixIfNotNumber? x (proj.lastComponentAsString ++ "_")).map
        (·.toString, stx)
    -- we only continue with this field if it is default or mentioned in todo
    if !(isDefault && todo.isEmpty) && newTodo.isEmpty then return #[]
    let newLhs := projExpr.instantiateLambdasOrApps #[lhsAp]
    let newName := nm.update proj.lastComponentAsString isPrefix
    trace[simps.debug] "Recursively add projections for:{indentExpr newLhs}"
    addProjections newName newType newLhs newRhs newArgs false cfg newTodo projNrs
  return if addThisProjection then nms.push nm.toName else nms
where
  /-- Drop the last character of a string, used to remove the interal trailing underscore in the
  variable `todo`. -/
  dropLast (todo : String) : String :=
    todo.dropEnd 1 |>.copy

end Simps
open Simps

/-- `simpsTac` derives `simp` lemmas for all (nested) non-Prop projections of the declaration.
If `todo` is non-empty, it will generate exactly the names in `todo`.
If `shortNm` is true, the generated names will only use the last projection name.
If `trc` is true, trace as if `trace.simps` is true. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7945810b660a95d007a353364378cafbc1b7915ed8b91a0a9c0451faa81a8f5c.lean#L1078).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373c37e1ed79c058cc173787d3c0450d7deb1f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
