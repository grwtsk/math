# addParentInstanceFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e09296e252b7cead59ba27bb44a54fcc60a6f445e455d4abf70907b356c4d445",
  "kind": "def",
  "lexical_name": "addParentInstanceFields",
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
  "slug": "addparentinstancefields--e67b254e731144ad4489eb74",
  "source": {
    "blob": "a8d89a25282acd94a5769cecd00572cb209ef82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1250,
    "line": 1167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e67b254e731144ad4489eb7465f2e2587fe5749555134fc4d4468e501f74541b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e09296e252b7cead59ba27bb44a54fcc60a6f445e455d4abf70907b356c4d445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1167–1250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def addParentInstanceFields : StructInstM Unit := do
  let structName := (← read).structName
  let fieldNames := getStructureFieldsFlattened (← getEnv) structName (includeSubobjectFields := false)
  let fieldViews := (← read).fieldViews
  if fieldNames.all fieldViews.contains then
    -- Every field is accounted for already
    return

  -- We look at parents in resolution order
  let parents ← getAllParentStructures structName
  let env ← getEnv
  let parentsToVisit := if (← read).useInhabited then parents else parents.filter (isClass env)
  if parentsToVisit.isEmpty then return

  let allowedFields := fieldNames.filter (!fieldViews.contains ·)
  let mut remainingFields := allowedFields

  -- Worklist of parent/fields pairs. If fields is empty, then it will be computed later.
  let mut worklist : List (Name × Array Name) := parentsToVisit |>.map (·, #[]) |>.toList
  let mut deferred : List (Name × Array Name) := []

  let trySynthParent (parentName : Name) (parentTy : Expr) : StructInstM (LOption Expr) := do
    if isClass (← getEnv) parentName then
      match ← trySynthInstance parentTy with
      | .none => pure ()
      | r     => return r
    if (← read).useInhabited then
      let u ← getLevel parentTy
      let cls := Expr.app (Expr.const ``Inhabited [u]) parentTy
      match ← trySynthInstance cls with
      | .none      => pure ()
      | .undef     => return .undef
      | .some inst => return .some <| mkApp2 (Expr.const ``Inhabited.default [u]) parentTy inst
    return .none

  while !worklist.isEmpty do
    let (parentName, parentFields) :: worklist' := worklist | unreachable!
    worklist := worklist'
    let env ← getEnv
    let parentFields := if parentFields.isEmpty then getStructureFieldsFlattened env parentName (includeSubobjectFields := false) else parentFields
    -- We only try synthesizing if the parent contains one of the remaining fields
    -- and if every parent field is an allowed field.
    if remainingFields.any parentFields.contains && parentFields.all allowedFields.contains then
      -- We also need to be able to compute the parent type from the structure type.
      -- This may fail if there is a complicated dependence. In that case, we put the problem on the deferred list.
      match ← getParentStructType? parentName with
      | none =>
        trace[Elab.structInst] "could not calculate type for parent `{.ofConstName parentName}`"
        deferred := (parentName, parentFields) :: deferred
      | some (parentTy, _) =>
        match ← trySynthParent parentName parentTy with
        | .none => trace[Elab.structInst] "failed to synthesize instance for parent {parentTy}"
        | .undef =>
          trace[Elab.structInst] "instance synthesis stuck for parent {parentTy}"
          deferred := (parentName, parentFields) :: deferred
        | .some inst =>
          -- The fields are all-or-nothing
          let saved ← saveState
          try
            for parentField in parentFields do
              let proj ← mkProjection inst parentField
              let proj ← normalizeExpr proj
              match (← get).fieldMap.find? parentField with
              | some fieldVal =>
                let projType ← inferType proj
                let fieldType ← inferType fieldVal
                unless ← isDefEq projType fieldType do
                  throwError "parent field `{parentField}` {← mkHasTypeButIsExpectedMsg proj fieldType}"
                unless ← isDefEq proj fieldVal do
                  throwError "parent field `{parentField}`{indentExpr proj}\nis not definitionally equal to overlapping field{indentExpr fieldVal}"
                trace[Elab.structInst] "field `{parentField}` from parent `{parentTy}` is definitionally equal to existing inferred field"
              | none =>
                modify fun s => { s with fieldMap := s.fieldMap.insert parentField proj }
                trace[Elab.structInst] "added inferred field `{parentField}` from parent `{parentTy}`"
            -- All the fields have been added, update the list of remaining fields.
            remainingFields := remainingFields.filter (!parentFields.contains ·)
            -- Move the deferred list back the front of the work list
            worklist := deferred.reverseAux worklist
            deferred := []
          catch ex =>
            restoreState saved
            -- Failed, don't try this parent again.
            trace[Elab.structInst] "failed to use instance for {parentTy}\n{ex.toMessageData}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean#L1167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d89a25282acd94a5769cecd00572cb209ef82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
