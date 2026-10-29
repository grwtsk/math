import LeanImportedContracts
import StructureFieldMetadataFixture

/-! Complete selected current-definition type/body quotes for authored fixtures.
AI-assisted implementation and shared mechanical review provide no independent
human proof acceptance. This separate profile preserves existing producers and
does not infer source ownership, whole context or mathematical admission. -/
namespace CurrentContextContractProbe
open Lean LeanCompiledTyping

private def guardCurrent (env : Environment) (context : Name) : Except String DefinitionVal := do
  let some (.defnInfo v) := env.find? context | throw "CURRENT_CONTEXT_DEFINITION_REQUIRED"
  if env.isImportedConst context || (env.getModuleIdxFor? context).isSome then
    throw "CURRENT_CONTEXT_IMPORTED_DEFINITION_REFUSED"
  let some checked := env.checked.get.find? context | throw "CURRENT_CONTEXT_CHECKED_DEFINITION_UNAVAILABLE"
  if !LeanImportedContracts.sameConstantInfo (.defnInfo v) checked then
    throw "CURRENT_CONTEXT_CHECKED_FULL_CONTRACT_DISAGREEMENT"
  if v.safety != .safe then throw "CURRENT_CONTEXT_SAFE_DEFINITION_REQUIRED"
  return v

private def comparisonControls (v : DefinitionVal) : IO (Array Json) := do
  let ci := ConstantInfo.defnInfo v
  let altered : Array (String × DefinitionVal) := #[
    ("name", { v with name := `changed_current_context }),
    ("levelParams", { v with levelParams := [`changed_level_parameter] }),
    ("type", { v with type := mkConst ``False }),
    ("value", { v with value := v.type }),
    ("hints", { v with hints := if v.hints == .abbrev then .opaque else .abbrev }),
    ("safety", { v with safety := .unsafe }),
    ("all", { v with all := [`changed_mutual_name] })]
  let mut controls := #[]
  for (field, other) in altered do
    if LeanImportedContracts.sameConstantInfo ci (.defnInfo other) then
      throw <| IO.userError "CURRENT_CONTEXT_CHANGED_FIELD_ACCEPTED"
    controls := controls.push <| obj [("field", str field), ("same", toJson false),
      ("alpha_same", Json.null), ("class", str "COMPILER_EXECUTED_METADATA_COMPARATOR_NOT_KERNEL_CHECK")]
  let .forallE tn tt tb ti := v.type | throw <| IO.userError "CURRENT_CONTEXT_FORALL_REQUIRED"
  let .lam bn bt bb bi := v.value | throw <| IO.userError "CURRENT_CONTEXT_LAMBDA_REQUIRED"
  if ti != .default || bi != .default then throw <| IO.userError "CURRENT_CONTEXT_EXPLICIT_ARGUMENT_REQUIRED"
  let changed : Array (String × Expr × Expr × DefinitionVal) := #[
    ("type_binder_name", v.type, .forallE `changed_argument tt tb ti, { v with type := .forallE `changed_argument tt tb ti }),
    ("type_binder_annotation", v.type, .forallE tn tt tb .implicit, { v with type := .forallE tn tt tb .implicit }),
    ("body_binder_name", v.value, .lam `changed_argument bt bb bi, { v with value := .lam `changed_argument bt bb bi }),
    ("body_binder_annotation", v.value, .lam bn bt bb .implicit, { v with value := .lam bn bt bb .implicit })]
  for (field, original, otherExpr, other) in changed do
    let alphaSame := original == otherExpr
    if !alphaSame || LeanImportedContracts.sameConstantInfo ci (.defnInfo other) then
      throw <| IO.userError "CURRENT_CONTEXT_STRUCTURAL_ALPHA_CONTROL_DISAGREEMENT"
    controls := controls.push <| obj [("field", str field), ("same", toJson false),
      ("alpha_same", toJson alphaSame), ("class", str "COMPILER_EXECUTED_METADATA_COMPARATOR_NOT_KERNEL_CHECK")]
  return controls

/-- Observe one existing, checked current definition with distinct type/body DAGs.
The caller binds its exact source bytes; this query does not establish ownership. -/
def observe (out : System.FilePath) (context : Name) : CoreM Unit := do
  liftM <| LeanImportedContracts.guardRequest out context context #[]
  let before ← getEnv
  let v ← IO.ofExcept (guardCurrent before context)
  let ci := ConstantInfo.defnInfo v
  liftM <| LeanImportedContracts.guardConstant ci
  if before.header.moduleNames.size > 4096 then throwError "CURRENT_CONTEXT_HEADER_LIMIT_4096"
  liftM <| LeanImportedContracts.guardNames (before.header.moduleNames ++ #[before.mainModule])
  let some defaultBody := ci.value? | throwError "CURRENT_CONTEXT_DEFAULT_BODY_REQUIRED"
  let some opaqueBody := ci.value? true | throwError "CURRENT_CONTEXT_ALLOW_OPAQUE_BODY_REQUIRED"
  if !ci.hasValue || !ci.hasValue true || !defaultBody.equal v.value || !opaqueBody.equal v.value then
    throwError "CURRENT_CONTEXT_BODY_GETTER_DISAGREEMENT"
  liftM <| IO.FS.createDir (out / "artifacts")
  let handle ← liftM <| IO.FS.Handle.mk (out / "observations.jsonl") .write
  let total ← liftM <| IO.mkRef 0
  let quote := LeanImportedContracts.boundedEmit handle total
  liftM <| quote <| obj [("record_type", str "LeanCommand"), ("syntax_kind", str "module_header"),
    ("loaded_module_structures", toJson (before.header.moduleNames.map nameJson)),
    ("current_main_module", nameJson before.mainModule)]
  let ti ← liftM <| LeanImportedContracts.artifact out 0 "type" v.type
  let bi ← liftM <| LeanImportedContracts.artifact out 0 "body" v.value
  let metadata ← IO.ofExcept (LeanImportedContracts.fullMetadata ci ti bi)
  let controls ← liftM <| comparisonControls v
  let tr := v.type.getUsedConstants.qsort Name.lt
  let br := v.value.getUsedConstants.qsort Name.lt
  if tr.size > 4096 || br.size > 4096 then throwError "CURRENT_CONTEXT_REFERENCE_LIMIT_4096"
  liftM <| LeanImportedContracts.guardNames (tr ++ br)
  -- guardCurrent checked the complete selected kernel-environment declaration.
  -- collectAxioms traverses this local definition's type/body, while imported
  -- dependencies can use precomputed extension entries; this is not full replay.
  let axioms ← collectAxioms context
  if axioms.size > 64 then throwError "CURRENT_CONTEXT_AXIOM_LIMIT_64"
  liftM <| LeanImportedContracts.guardNames axioms
  let after ← getEnv
  let repeated ← IO.ofExcept (guardCurrent after context)
  if !LeanImportedContracts.sameConstantInfo ci (.defnInfo repeated) then
    throwError "CURRENT_CONTEXT_FULL_REPEAT_DISAGREEMENT"
  if before.mainModule != after.mainModule || before.header.moduleNames != after.header.moduleNames then
    throwError "CURRENT_CONTEXT_MODULE_HEADER_CHANGED"
  let added := after.checked.get.constants.foldStage2 (fun found n _ => found || (before.find? n).isNone) false
  if added then throwError "CURRENT_CONTEXT_NEW_CONSTANT_DURING_QUERY"
  liftM <| quote <| obj [("record_type", str "CurrentContextDefinitionContract"),
    ("name", nameJson context), ("declaration_kind", str "definition"), ("full_constantinfo", metadata),
    ("module_binding", ← IO.ofExcept (LeanImportedContracts.moduleBinding before context)),
    ("current_main_module", nameJson before.mainModule), ("isImportedConst", toJson (before.isImportedConst context)),
    ("checked_full_contract_same", toJson true), ("checked_before_axiom_collection", toJson true),
    ("current_origin_scope", str "EXISTING_CHECKED_CURRENT_DEFINITION_NO_IMPORT_INDEX_CALLER_SOURCE_BOUND_NOT_SEMANTIC_OWNER"),
    ("unsafe", toJson ci.isUnsafe), ("partial_definition", toJson ci.isPartial),
    ("has_value_default", toJson ci.hasValue), ("has_value_allow_opaque", toJson (ci.hasValue true)),
    ("value_default_same", toJson (defaultBody.equal v.value)), ("value_allow_opaque_same", toJson (opaqueBody.equal v.value)),
    ("type_constant_references", toJson (tr.map nameJson)), ("body_constant_references", toJson (br.map nameJson)),
    ("constant_reference_scope", str "CONST_ONLY_PROJECTION_OWNER_SEPARATE_DAG_ROLE"),
    ("axioms", toJson (axioms.map nameJson)), ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
    ("axiom_scope", str "CHECKED_CURRENT_DEFINITION_TYPE_BODY_TRAVERSAL_IMPORTED_DEPENDENCY_CACHE_NOT_FULL_SOURCE_KERNEL_CONSUMER_REPLAY"),
    ("repeat_method", str "EXPR_EQUAL_TYPE_VALUE_AND_ALL_REMAINING_VARIANT_FIELDS"),
    ("full_repeat_same", toJson (LeanImportedContracts.sameConstantInfo ci (.defnInfo repeated))),
    ("module_binding_repeat_same", toJson (before.getModuleIdxFor? context == after.getModuleIdxFor? context)),
    ("comparison_controls", toJson controls), ("all_scope", str "INFORMATIONAL_MUTUAL_BLOCK_NOT_WHOLE_GENERATED_FAMILY"),
    ("body_scope", str "COMPLETE_CURRENT_COMPILER_EXPOSED_DEFINITION_VALUE_NOT_THEOREM_PROOF"),
    ("semantic_source_owner", str "UNAVAILABLE"), ("kernel_admission", str "NOT_CLAIMED")]
  let missing := #[Name.mkSimple "missing.current.context", Name.num (Name.mkSimple "missing_context_definition") 0]
  liftM <| LeanImportedContracts.guardNames missing
  for n in missing do
    if (before.find? n).isSome then throwError "CURRENT_CONTEXT_MISSING_SELECTOR_GUARD"
  let imported := ``Nat.add
  let importedRefusal := match guardCurrent before imported with
    | .error e => e
    | .ok _ => ""
  let variant := `NoeFixtures.ParentAuto.Embedded.ready
  let variantRefusal := match guardCurrent before variant with
    | .error e => e
    | .ok _ => ""
  if importedRefusal != "CURRENT_CONTEXT_IMPORTED_DEFINITION_REFUSED" || variantRefusal != "CURRENT_CONTEXT_DEFINITION_REQUIRED" then
    throwError "CURRENT_CONTEXT_IMPORT_OR_VARIANT_CONTROL_ACCEPTED"
  liftM <| quote <| obj [("record_type", str "CurrentContextContractTerminal"),
    ("profile", str "PRIVATE-CURRENT-CONTEXT-CONTRACTS/v1"), ("selector", nameJson context),
    ("complete_definition_occurrences", nat 1), ("type_body_fields", nat 2), ("comparison_control_occurrences", nat 11),
    ("missing_selectors", toJson (missing.map nameJson)), ("missing_selector_guard_count", nat 2),
    ("imported_definition_selector", nameJson imported), ("imported_definition_refusal", str importedRefusal),
    ("non_definition_selector", nameJson variant), ("non_definition_refusal", str variantRefusal),
    ("current_main_module", nameJson before.mainModule), ("new_constants", toJson ([] : List Json)),
    ("whole_generated_family", str "UNAVAILABLE"), ("complete_context", str "UNAVAILABLE"),
    ("fresh_affected_consumers", str "NOT_RUN"), ("current_primary_lease", str "NOT_ESTABLISHED"),
    ("M4", str "NOT_RUN"), ("M7", str "NOT_ADMITTED"), ("Store_mutations", nat 0)]
end CurrentContextContractProbe
