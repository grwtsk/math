import LeanImportedContracts
import StructureFieldMetadataFixture

/-! Authored compiler conformance fixtures, not corpus or proof admission.
AI-assisted implementation and shared mechanical review supply no independent
human acceptance. Active field auxiliaries and parent coercions are separate
from the deprecated StructureFieldInfo.autoParam? and from whole families. -/
namespace StructureFieldMetadataProbe
open Lean LeanCompiledTyping

private def definitionQuote (out : System.FilePath) (index : Nat) (n : Name) : CoreM Json := do
  let env ← getEnv
  let some ci := env.find? n | throwError "FIELD_PROBE_DEFINITION_UNAVAILABLE"
  let .defnInfo dv := ci | throwError "FIELD_PROBE_DEFINITION_VARIANT_REQUIRED"
  liftM <| LeanImportedContracts.guardConstant ci
  if !env.isImportedConst n then throwError "FIELD_PROBE_IMPORTED_DEFINITION_REQUIRED"
  let ti ← liftM <| LeanImportedContracts.artifact out index "type" dv.type
  let vi ← liftM <| LeanImportedContracts.artifact out index "value" dv.value
  let metadata ← IO.ofExcept (LeanImportedContracts.fullMetadata ci ti vi)
  let axioms ← collectAxioms n
  if axioms.size > 64 then throwError "FIELD_PROBE_AXIOM_LIMIT"
  liftM <| LeanImportedContracts.guardNames axioms
  let some repeated := (← getEnv).find? n | throwError "FIELD_PROBE_REPEAT_UNAVAILABLE"
  if !LeanImportedContracts.sameConstantInfo ci repeated then throwError "FIELD_PROBE_FULL_REPEAT_DISAGREEMENT"
  let tr := dv.type.getUsedConstants.qsort Name.lt
  let vr := dv.value.getUsedConstants.qsort Name.lt
  if tr.size > 4096 || vr.size > 4096 then throwError "FIELD_PROBE_REFERENCE_LIMIT"
  liftM <| LeanImportedContracts.guardNames (tr ++ vr)
  return obj [("name", nameJson n), ("full_constantinfo", metadata),
    ("module_binding", ← IO.ofExcept (LeanImportedContracts.moduleBinding env n)),
    ("isImportedConst", toJson (env.isImportedConst n)), ("unsafe", toJson ci.isUnsafe),
    ("partial_definition", toJson ci.isPartial), ("type_constant_references", toJson (tr.map nameJson)),
    ("value_constant_references", toJson (vr.map nameJson)), ("cached_axioms", toJson (axioms.map nameJson)),
    ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
    ("axiom_scope", str "CACHED_IMPORTED_API_NOT_FRESH_KERNEL_OR_CONSUMER_REPLAY"),
    ("repeat_method", str "EXPR_EQUAL_TYPE_VALUE_AND_ALL_REMAINING_VARIANT_FIELDS"),
    ("full_repeat_same", toJson (LeanImportedContracts.sameConstantInfo ci repeated)),
    ("tactic_execution", str "NOT_RUN"), ("semantic_source_owner", str "UNAVAILABLE"),
    ("kernel_admission", str "NOT_CLAIMED")]

/-- Probe exactly the authored fixture structures in a distinct current context.
Output creation and all inherited Name, metadata, DAG and stream bounds apply. -/
def observe (out : System.FilePath) (context : Name) : CoreM Unit := do
  let owners := #[`NoeFixtures.ParentAuto.Embedded, `NoeFixtures.ParentAuto.Copied]
  liftM <| LeanImportedContracts.guardRequest out context owners[0]! #[]
  liftM <| LeanImportedContracts.guardNames owners
  let before ← getEnv
  let some (.defnInfo _) := before.find? context | throwError "FIELD_PROBE_CURRENT_CONTEXT_REQUIRED"
  if (before.getModuleIdxFor? context).isSome then throwError "FIELD_PROBE_CURRENT_CONTEXT_REQUIRED"
  if before.header.moduleNames.size > 4096 then throwError "FIELD_PROBE_MODULE_LIMIT"
  liftM <| LeanImportedContracts.guardNames before.header.moduleNames
  liftM <| IO.FS.createDir (out / "artifacts")
  let h ← liftM <| IO.FS.Handle.mk (out / "observations.jsonl") .write
  let total ← liftM <| IO.mkRef 0
  let quote := LeanImportedContracts.boundedEmit h total
  liftM <| quote <| obj [("record_type", str "LeanCommand"), ("syntax_kind", str "module_header"),
    ("loaded_module_structures", toJson (before.header.moduleNames.map nameJson))]
  let mut definitionIndex := 0
  for owner in owners do
    let some info := getStructureInfo? before owner | throwError "FIELD_PROBE_STRUCTURE_UNAVAILABLE"
    if info.fieldNames.size > 63 || info.fieldInfo.size > 63 || info.parentInfo.size > 64 then throwError "FIELD_PROBE_METADATA_LIMIT"
    liftM <| LeanImportedContracts.guardNames (#[owner] ++ info.fieldNames)
    let mut fields : Array Json := #[]
    for f in info.fieldInfo do
      liftM <| LeanImportedContracts.guardNames #[f.fieldName, f.projFn]
      if let some subobject := f.subobject? then liftM <| LeanImportedContracts.guardNames #[subobject]
      if f.autoParam?.isSome then throwError "FIELD_PROBE_LEGACY_NONNULL_UNEXPECTED"
      let selected := getAutoParamFnForField? before owner f.fieldName
      let aux ← match selected with
        | none => pure Json.null
        | some n => do
          let q ← definitionQuote out definitionIndex n
          definitionIndex := definitionIndex + 1
          pure q
      let some projection := before.find? f.projFn | throwError "FIELD_PROBE_FIELD_PROJECTION_UNAVAILABLE"
      fields := fields.push <| obj [("fieldName", nameJson f.fieldName), ("projFn", nameJson f.projFn),
        ("field_projection_kind", str (kind projection)),
        ("field_projection_contract", str "NOT_CAPTURED_BY_THIS_PARENT_AUXILIARY_PROBE"),
        ("subobject?", f.subobject?.map nameJson |>.getD Json.null), ("binderInfo", binderJson f.binderInfo),
        ("legacy_autoParam?", Json.null), ("auxiliary_API", str "GET_AUTO_PARAM_FN_FOR_FIELD_LOCAL_NOT_INHERITED_EFFECTIVE"),
        ("auxiliary", aux)]
    let mut parents : Array Json := #[]
    for p in info.parentInfo do
      liftM <| LeanImportedContracts.guardNames #[p.structName, p.projFn]
      let q ← definitionQuote out definitionIndex p.projFn
      definitionIndex := definitionIndex + 1
      let related := info.fieldInfo.filter fun f => f.projFn == p.projFn
      if p.subobject then
        if related.size != 1 || related[0]!.subobject? != some p.structName then
          throwError "FIELD_PROBE_TRUE_PARENT_CROSSJOIN"
      else if !related.isEmpty then throwError "FIELD_PROBE_COPIED_PARENT_DIRECT_FIELD"
      parents := parents.push <| obj [("structName", nameJson p.structName), ("subobject", toJson p.subobject),
        ("projFn", nameJson p.projFn), ("full_projection_definition", q),
        ("direct_field_count", nat related.size)]
    if (getAutoParamFnForField? before owner `missing).isSome then throwError "FIELD_PROBE_MISSING_FIELD_AUX"
    if (getAutoParamFnForField? before owner `n).isSome then throwError "FIELD_PROBE_PLAIN_FIELD_AUX"
    let mut positional : Array Json := #[]
    for i in [:info.fieldNames.size] do
      let some fn := info.getProjFn? i | throwError "FIELD_PROBE_POSITION_UNAVAILABLE"
      positional := positional.push (nameJson fn)
    liftM <| quote <| obj [("record_type", str "StructureFieldAPIProbe"), ("owner", nameJson owner),
      ("fieldNames", toJson (info.fieldNames.map nameJson)), ("fieldInfo_native_order", toJson fields),
      ("parentInfo_extends_order", toJson parents), ("positional_projection_names", toJson positional),
      ("missing_field_aux", Json.null), ("plain_n_field_aux", Json.null),
      ("effective_inherited_defaults", str "NOT_OBSERVED"), ("flat_constructor", str "NOT_OBSERVED"),
      ("whole_generated_family", str "UNAVAILABLE"), ("semantic_source_owner", str "UNAVAILABLE")]
  if (getStructureInfo? before `NoeFixtures.ParentAuto.Missing).isSome then throwError "FIELD_PROBE_MISSING_OWNER"
  if (getAutoParamFnForField? before (Name.mkSimple "NoeFixtures.ParentAuto.Embedded") `ready).isSome then
    throwError "FIELD_PROBE_LITERAL_DOTTED_NAME"
  -- The accepted imported v1 profile refuses theorem-valued field projections.
  -- This probe records their kind only, without filling missing theorem proofs.
  let after ← getEnv
  let added := after.checked.get.constants.foldStage2 (fun found n _ =>
    found || (before.find? n).isNone) false
  if added then throwError "FIELD_PROBE_NEW_CONSTANTS"
  if before.header.moduleNames != after.header.moduleNames then throwError "FIELD_PROBE_HEADER_CHANGED"
  liftM <| quote <| obj [("record_type", str "StructureFieldProbeTerminal"),
    ("profile", str "PRIVATE-STRUCTURE-FIELD-METADATA-PROBE/v1"), ("owners", toJson (owners.map nameJson)),
    ("field_projection_contracts", str "NOT_CAPTURED_THEOREM_VARIANT_REMAINS_OUTSIDE_IMPORTED_V1"),
    ("complete_definition_occurrences", nat definitionIndex), ("new_constants", toJson ([] : List Json)),
    ("whole_generated_family", str "UNAVAILABLE"), ("complete_context", str "UNAVAILABLE"),
    ("effective_inherited_defaults", str "NOT_OBSERVED"), ("flat_constructor", str "NOT_OBSERVED"),
    ("M4", str "NOT_RUN"), ("M7", str "NOT_ADMITTED"), ("Store_mutations", nat 0)]
end StructureFieldMetadataProbe
