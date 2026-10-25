# synthOptParamFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e31147117782bcdd544393de67a65b2cc94002cef75bf9eb7650cbc586d13c9",
  "kind": "def",
  "lexical_name": "synthOptParamFields",
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
  "slug": "synthoptparamfields--7b001c6c312a7ba73fb721a8",
  "source": {
    "blob": "a8d89a25282acd94a5769cecd00572cb209ef82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 807,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b001c6c312a7ba73fb721a83723006b44d975dcc9ac814a021ab3bffca44a29",
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

Occurrence: `declaration:3e31147117782bcdd544393de67a65b2cc94002cef75bf9eb7650cbc586d13c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def synthOptParamFields : StructInstM Unit := do
  let optParamFields ← modifyGet fun s => (s.optParamFields, { s with optParamFields := #[] })
  if optParamFields.isEmpty then return
  withTraceNode `Elab.structInst
      (fun _ =>
        let msgs := optParamFields.map fun (fieldName, _fieldType, required) =>
          m!"`{fieldName}`" ++ if required then "" else " (not required)"
        return m!"default value synthesis for {MessageData.joinSep msgs.toList m!", "}") do
  /-
  We try to synthesize pending mvars before trying to use default values.
  This is important in examples such as
  ```
  structure MyStruct where
      {α : Type u}
      {β : Type v}
      a : α
      b : β

  #check { a := 10, b := true : MyStruct }
  ```
  were the `α` will remain "unknown" until the default instance for `OfNat` is used to ensure that `10` is a `Nat`.

  TODO: investigate whether this design decision may have unintended side effects or produce confusing behavior.
  -/
  synthesizeSyntheticMVarsUsingDefault

  trace[Elab.structInst]
    let msgs := (← get).fieldMap.toList.map fun (name, value) => MessageData.nestD m!"{name} := {value}"
    m!"field values before default value synth:{indentD <| MessageData.joinSep msgs m!",{Format.line}"}"

  -- Process default values for pending optParam fields.
  let mut pendingFields : Array PendingField ← optParamFields.filterMapM fun (fieldName, fieldType, required) => do
    if required || (← isFieldNotSolved? fieldName).isSome then
      let val? ← if (← read).useDefaults then getFieldDefaultValue? fieldName else pure none
      let val? ← pure val? <||> if (← read).useInhabited then getFieldDefaultValueUsingInhabited fieldType else pure none
      trace[Elab.structInst]
        if let some (deps, val) := val? then
          m!"default value for `{fieldName}`:{inlineExpr val}" ++
          if deps.isEmpty then m!"" else m!"(depends on fields {deps.toArray})"
        else
          m!"no default value for `{fieldName}`"
      pure <| some { fieldName, fieldType, required, val? }
    else
      pure none
  -- We then iteratively look for pending fields that do not depend on unsolved-for fields.
  -- The assignments might fail (due to occurs checks or stuck metavariables),
  -- so we need to keep trying until no more progress is made.
  let mut pendingSet : NameSet := pendingFields.foldl (init := {}) fun set pending => set.insert pending.fieldName
  while !pendingSet.isEmpty do
    let selectedFields := pendingFields.filter (·.isReady (!pendingSet.contains ·))
    let mut toRemove : Array Name := #[]
    let mut assignErrors : Array MessageData := #[]
    for selected in selectedFields do
      let selectedVal := selected.val!
      if let some mvarId ← isFieldNotSolved? selected.fieldName then
        let fieldType := selected.fieldType
        let selectedType ← inferType selectedVal
        if ← isDefEq fieldType selectedType then
          /-
          We must use `checkedAssign` here to ensure we do not create a cyclic
          assignment. See #3150.
          This can happen when there are holes in the fields the default value
          depends on.
          Possible improvement: create a new `_` instead of returning `false` when
          `checkedAssign` fails. Reason: the field will not be needed after the
          other `_` are resolved by the user.
          -/
          if ← MVarId.checkedAssign mvarId selectedVal then
            toRemove := toRemove.push selected.fieldName
          else
            assignErrors := assignErrors.push m!"\
              Occurs check failed: Field `{selected.fieldName}` of type{indentExpr fieldType}\n\
              cannot be assigned the default value{indentExpr selectedVal}"
        else
          assignErrors := assignErrors.push m!"\
            default value for field `{selected.fieldName}` {← mkHasTypeButIsExpectedMsg selectedType fieldType}"
      else
        if selected.required then
          -- Clear the value but preserve its pending status, for the "fields missing" error.
          -- Rationale: this is a field that must be explicitly provided (if default values don't solve for it),
          -- and *not* solved for by unification. Users expect explicit fields to be required to be provided by some explicit means.
          pendingFields := pendingFields.map fun pending =>
            if pending.fieldName = selected.fieldName then
              { pending with val? := none }
            else
              pending
        toRemove := toRemove.push selected.fieldName
    if toRemove.isEmpty then
      return ← handleStuck pendingFields assignErrors
    pendingSet := pendingSet.filter (!toRemove.contains ·)
    pendingFields := pendingFields.filter fun pendingField => pendingField.val?.isNone || !toRemove.contains pendingField.fieldName
where
  handleStuck (pendingFields : Array PendingField) (assignErrors : Array MessageData) : StructInstM Unit := do
    if (← read).unsynthesizedAsMVars then
      for pendingField in pendingFields do
        if let some mvarId ← isFieldNotSolved? pendingField.fieldName then
          registerFieldMVarError (.mvar mvarId) (← read).view.ref pendingField.fieldName
      return
    let assignErrorsMsg := MessageData.joinSep (assignErrors.map (m!"\n\n" ++ ·)).toList ""
    let mut requiredErrors : Array MessageData := #[]
    let mut unsolvedFields : Std.HashSet Name := {}
    for pendingField in pendingFields do
      if (← isFieldNotSolved? pendingField.fieldName).isNone then
        unsolvedFields := unsolvedFields.insert pendingField.fieldName
        let e := (← get).fieldMap.get! pendingField.fieldName
        requiredErrors := requiredErrors.push m!"\
          Field `{pendingField.fieldName}` must be explicitly provided; its synthesized value is{indentExpr e}"
    let requiredErrorsMsg := MessageData.joinSep (requiredErrors.map (m!"\n\n" ++ ·)).toList ""
    let missingFields := pendingFields |>.filter (fun pending => pending.val?.isNone)
    -- TODO(kmill): when fields are all stuck, report better.
    -- For now, just report all pending fields in case there are no obviously missing ones.
    let missingFields := if missingFields.isEmpty then pendingFields else missingFields
    let missing := missingFields |>.map (s!"`{·.fieldName}`") |>.toList
    let missingFieldsValues ← missingFields.mapM fun field => do
      if unsolvedFields.contains field.fieldName then
        pure <| (field.fieldName, some <| (← get).fieldMap.get! field.fieldName)
      else pure (field.fieldName, none)
    let missingFieldsHint ← mkMissingFieldsHint missingFieldsValues (← read).view.ref
    let msg := m!"Fields missing: {", ".intercalate missing}{assignErrorsMsg}{requiredErrorsMsg}{missingFieldsHint}"
    if (← readThe Term.Context).errToSorry then
      -- Assign all pending problems using synthetic sorries and log an error.
      for pendingField in pendingFields do
        if let some mvarId ← isFieldNotSolved? pendingField.fieldName then
          mvarId.assign <| ← mkLabeledSorry (← mvarId.getType) (synthetic := true) (unique := true)
      logError msg
      return
    else
      throwError msg

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variant04a40b32a0faf940bc57c6e2f382d947f8f932a4d8404bf74c59ea9c454331e9.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d89a25282acd94a5769cecd00572cb209ef82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
