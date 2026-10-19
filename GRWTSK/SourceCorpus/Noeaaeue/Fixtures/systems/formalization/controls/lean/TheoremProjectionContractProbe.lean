import LeanImportedContracts
import StructureFieldMetadataFixture

/-! Complete compiler-exposed theorem projection contracts for authored fixtures.
This separate native profile does not extend imported v1 or admit corpus proofs.
AI-assisted implementation and shared mechanical review provide no independent
human acceptance. Cached imported axioms and repeat quotes are not fresh replay. -/
namespace TheoremProjectionContractProbe
open Lean LeanCompiledTyping

def sameTheorem (x y : TheoremVal) : Bool :=
  x.name == y.name && x.levelParams == y.levelParams && x.type.equal y.type &&
    x.value.equal y.value && x.all == y.all

private def guardTheorem (ci : ConstantInfo) : IO Unit := do
  let .thmInfo v := ci | throw <| IO.userError "THEOREM_PROJECTION_VARIANT_REQUIRED"
  if v.levelParams.length > 64 || v.all.length > 64 then
    throw <| IO.userError "THEOREM_PROJECTION_NAME_ARRAY_LIMIT_64"
  LeanImportedContracts.guardNames (#[v.name] ++ v.levelParams.toArray ++ v.all.toArray)

private def comparisonControls (v : TheoremVal) : IO (Array Json) := do
  let changed : Array (String × TheoremVal) := #[
    ("name", { v with name := `changed_theorem_name }),
    ("levelParams", { v with levelParams := [`changed_level_parameter] }),
    ("type", { v with type := mkConst ``False }),
    ("value", { v with value := v.type }),
    ("all", { v with all := [`changed_mutual_name] })]
  let mut controls := #[]
  for (field, other) in changed do
    if sameTheorem v other then throw <| IO.userError "THEOREM_PROJECTION_CHANGED_FIELD_ACCEPTED"
    controls := controls.push <| obj [("field", str field), ("same", toJson false),
      ("alpha_same", Json.null), ("class", str "COMPILER_EXECUTED_METADATA_COMPARATOR_NOT_KERNEL_CHECK")]
  let .forallE tn tt tb ti := v.type | throw <| IO.userError "THEOREM_PROJECTION_FORALL_REQUIRED"
  let .lam pn pt pb pi := v.value | throw <| IO.userError "THEOREM_PROJECTION_LAMBDA_REQUIRED"
  if ti != .default || pi != .default then throw <| IO.userError "THEOREM_PROJECTION_EXPLICIT_SELF_REQUIRED"
  let altered : Array (String × Expr × Expr × TheoremVal) := #[
    ("type_binder_name", v.type, .forallE `changed_self tt tb ti, { v with type := .forallE `changed_self tt tb ti }),
    ("type_binder_annotation", v.type, .forallE tn tt tb .implicit, { v with type := .forallE tn tt tb .implicit }),
    ("proof_binder_name", v.value, .lam `changed_self pt pb pi, { v with value := .lam `changed_self pt pb pi }),
    ("proof_binder_annotation", v.value, .lam pn pt pb .implicit, { v with value := .lam pn pt pb .implicit })]
  for (field, original, otherExpr, other) in altered do
    let alphaSame := original == otherExpr
    if sameTheorem v other || !alphaSame then
      throw <| IO.userError "THEOREM_PROJECTION_STRUCTURAL_ALPHA_CONTROL_DISAGREEMENT"
    controls := controls.push <| obj [("field", str field), ("same", toJson false),
      ("alpha_same", toJson alphaSame), ("class", str "COMPILER_EXECUTED_METADATA_COMPARATOR_NOT_KERNEL_CHECK")]
  return controls

/-- Capture only the two existing fixture ready projections in a current context.
The proof is read directly from thmInfo.value; default value? hides theorem values. -/
def observe (out : System.FilePath) (context : Name) : CoreM Unit := do
  let owners := #[`NoeFixtures.ParentAuto.Embedded, `NoeFixtures.ParentAuto.Copied]
  let field := `ready
  liftM <| LeanImportedContracts.guardRequest out context owners[0]! #[]
  let before ← getEnv
  let some (.defnInfo _) := before.find? context | throwError "THEOREM_PROJECTION_CURRENT_CONTEXT_REQUIRED"
  if (before.getModuleIdxFor? context).isSome then throwError "THEOREM_PROJECTION_CURRENT_CONTEXT_REQUIRED"
  if before.header.moduleNames.size > 4096 then throwError "THEOREM_PROJECTION_HEADER_LIMIT_4096"
  liftM <| LeanImportedContracts.guardNames (before.header.moduleNames ++ owners ++ #[field])
  liftM <| IO.FS.createDir (out / "artifacts")
  let handle ← liftM <| IO.FS.Handle.mk (out / "observations.jsonl") .write
  let total ← liftM <| IO.mkRef 0
  let quote := LeanImportedContracts.boundedEmit handle total
  liftM <| quote <| obj [("record_type", str "LeanCommand"), ("syntax_kind", str "module_header"),
    ("loaded_module_structures", toJson (before.header.moduleNames.map nameJson))]
  let mut selectors : Array Name := #[]
  for index in [:owners.size] do
    let owner := owners[index]!
    let some info := getStructureInfo? before owner | throwError "THEOREM_PROJECTION_STRUCTURE_REQUIRED"
    if info.fieldNames.size > 63 || info.fieldInfo.size > 63 || info.parentInfo.size > 64 then
      throwError "THEOREM_PROJECTION_METADATA_LIMIT"
    liftM <| LeanImportedContracts.guardNames (#[owner] ++ info.fieldNames)
    let some f := getFieldInfo? before owner field | throwError "THEOREM_PROJECTION_FIELD_REQUIRED"
    let mut position : Option Nat := none
    for i in [:info.fieldNames.size] do
      if info.fieldNames[i]! == field then
        if position.isSome then throwError "THEOREM_PROJECTION_DUPLICATE_FIELD"
        position := some i
    let some i := position | throwError "THEOREM_PROJECTION_POSITION_REQUIRED"
    if info.getProjFn? i != some f.projFn then throwError "THEOREM_PROJECTION_POSITION_JOIN"
    liftM <| LeanImportedContracts.guardNames #[f.fieldName, f.projFn]
    if f.subobject?.isSome || f.autoParam?.isSome then throwError "THEOREM_PROJECTION_PLAIN_LEGACY_NULL_FIELD_REQUIRED"
    let some ci := before.find? f.projFn | throwError "THEOREM_PROJECTION_CONSTANT_REQUIRED"
    liftM <| guardTheorem ci
    let .thmInfo v := ci | throwError "THEOREM_PROJECTION_VARIANT_REQUIRED"
    if !before.isImportedConst v.name then throwError "THEOREM_PROJECTION_IMPORTED_REQUIRED"
    let some accessibleProof := ci.value? true | throwError "THEOREM_PROJECTION_PROOF_REQUIRED"
    if !accessibleProof.equal v.value || ci.hasValue || !ci.hasValue true || ci.value?.isSome then
      throwError "THEOREM_PROJECTION_ALLOW_OPAQUE_ACCESS_DISAGREEMENT"
    let ti ← liftM <| LeanImportedContracts.artifact out index "type" v.type
    let vi ← liftM <| LeanImportedContracts.artifact out index "proof" v.value
    let metadata := obj [("name", nameJson v.name), ("levelParams", toJson (v.levelParams.map nameJson)),
      ("type", str ti), ("value", str vi), ("all", toJson (v.all.map nameJson))]
    let some repeated := (← getEnv).find? v.name | throwError "THEOREM_PROJECTION_REPEAT_REQUIRED"
    let .thmInfo repeatedVal := repeated | throwError "THEOREM_PROJECTION_REPEAT_VARIANT_REQUIRED"
    if !sameTheorem v repeatedVal then throwError "THEOREM_PROJECTION_FULL_REPEAT_DISAGREEMENT"
    let controls ← liftM <| comparisonControls v
    let tr := v.type.getUsedConstants.qsort Name.lt
    let pr := v.value.getUsedConstants.qsort Name.lt
    if tr.size > 4096 || pr.size > 4096 then throwError "THEOREM_PROJECTION_REFERENCE_LIMIT_4096"
    liftM <| LeanImportedContracts.guardNames (tr ++ pr)
    let axioms ← collectAxioms v.name
    if axioms.size > 64 then throwError "THEOREM_PROJECTION_AXIOM_LIMIT_64"
    liftM <| LeanImportedContracts.guardNames axioms
    let legacyError ← liftM <| do
      try
        LeanImportedContracts.guardConstant ci
        pure ""
      catch e => pure e.toString
    if (legacyError.splitOn "UNSUPPORTED_IMPORTED_CONSTANTINFO_VARIANT").length < 2 then
      throwError "THEOREM_PROJECTION_LEGACY_V1_REFUSAL_REQUIRED"
    let some p := before.getProjectionFnInfo? v.name | throwError "THEOREM_PROJECTION_NATIVE_INFO_REQUIRED"
    let constructor := getStructureCtor before owner
    if p.ctorName != constructor.name || p.numParams != constructor.numParams || p.fromClass ||
        p.i != i || p.i > 65535 || p.numParams > 65535 ||
        before.getProjectionStructureName? v.name != some owner then
      throwError "THEOREM_PROJECTION_OWNER_INDEX_JOIN"
    liftM <| LeanImportedContracts.guardNames #[p.ctorName]
    selectors := selectors.push v.name
    liftM <| quote <| obj [("record_type", str "TheoremProjectionContract"),
      ("owner", nameJson owner), ("field_name", nameJson field), ("field_index", nat i),
      ("fieldNames", toJson (info.fieldNames.map nameJson)),
      ("field_info", obj [("fieldName", nameJson f.fieldName), ("projFn", nameJson f.projFn),
        ("subobject?", Json.null), ("binderInfo", binderJson f.binderInfo), ("legacy_autoParam?", Json.null)]),
      ("name", nameJson v.name), ("declaration_kind", str "theorem"), ("full_constantinfo", metadata),
      ("projection_info", obj [("ctorName", nameJson p.ctorName), ("numParams", nat p.numParams),
        ("i", nat p.i), ("fromClass", toJson p.fromClass)]), ("projection_structure", nameJson owner),
      ("module_binding", ← IO.ofExcept (LeanImportedContracts.moduleBinding before v.name)),
      ("isImportedConst", toJson (before.isImportedConst v.name)), ("unsafe", toJson ci.isUnsafe),
      ("partial_definition", toJson ci.isPartial), ("generic_hint", LeanImportedContracts.hintJson ci.hints),
      ("has_value_default", toJson ci.hasValue), ("has_value_allow_opaque", toJson (ci.hasValue true)),
      ("value_default_none", toJson ci.value?.isNone), ("value_allow_opaque_same", toJson (accessibleProof.equal v.value)),
      ("type_constant_references", toJson (tr.map nameJson)), ("proof_constant_references", toJson (pr.map nameJson)),
      ("constant_reference_scope", str "CONST_ONLY_PROJECTION_OWNER_SEPARATE_DAG_ROLE"),
      ("cached_axioms", toJson (axioms.map nameJson)), ("contains_sorry_ax", toJson (axioms.contains ``sorryAx)),
      ("axiom_scope", str "IMPORTED_COLLECT_AXIOMS_API_TYPE_PROOF_OR_PRECOMPUTED_CACHE_NOT_FRESH_REPLAY"),
      ("repeat_method", str "EXPR_EQUAL_THEOREM_TYPE_PROOF_VALUE_AND_ALL_REMAINING_FIELDS"),
      ("full_repeat_same", toJson (sameTheorem v repeatedVal)), ("comparison_controls", toJson controls),
      ("legacy_v1_refusal", str legacyError), ("all_scope", str "INFORMATIONAL_MUTUAL_BLOCK_NOT_WHOLE_GENERATED_FAMILY"),
      ("proof_value_scope", str "COMPLETE_CURRENT_COMPILER_EXPOSED_THEOREM_VALUE_NOT_ORIGINAL_SOURCE_REPLAY"),
      ("semantic_source_owner", str "UNAVAILABLE"), ("kernel_admission", str "NOT_CLAIMED")]
  let literal := Name.mkSimple "NoeFixtures.ParentAuto.Embedded.ready"
  let numeric := Name.num (Name.mkSimple "missing_theorem_projection") 0
  if (before.find? literal).isSome || (before.find? numeric).isSome then throwError "THEOREM_PROJECTION_MISSING_SELECTOR_GUARD"
  let some other := before.find? `NoeFixtures.ParentAuto.Copied.extra | throwError "THEOREM_PROJECTION_NON_THEOREM_CONTROL_REQUIRED"
  let variantError ← liftM <| do
    try
      guardTheorem other
      pure ""
    catch e => pure e.toString
  if (variantError.splitOn "THEOREM_PROJECTION_VARIANT_REQUIRED").length < 2 then
    throwError "THEOREM_PROJECTION_NON_THEOREM_ACCEPTED"
  let after ← getEnv
  let added := after.checked.get.constants.foldStage2 (fun found n _ => found || (before.find? n).isNone) false
  if added || before.header.moduleNames != after.header.moduleNames then throwError "THEOREM_PROJECTION_ENVIRONMENT_CHANGED"
  liftM <| quote <| obj [("record_type", str "TheoremProjectionTerminal"),
    ("profile", str "PRIVATE-THEOREM-PROJECTION-CONTRACTS/v1"), ("selectors", toJson (selectors.map nameJson)),
    ("complete_theorem_occurrences", nat selectors.size), ("type_proof_fields", nat (2 * selectors.size)),
    ("comparison_control_occurrences", nat (9 * selectors.size)),
    ("missing_literal", nameJson literal), ("missing_numeric", nameJson numeric), ("missing_selector_guard_count", nat 2),
    ("non_theorem_refusal", str variantError), ("new_constants", toJson ([] : List Json)),
    ("whole_generated_family", str "UNAVAILABLE"), ("complete_context", str "UNAVAILABLE"),
    ("tactic_execution", str "NOT_RUN"), ("effective_inherited_defaults", str "NOT_OBSERVED"),
    ("flat_constructor", str "NOT_OBSERVED"), ("current_primary_lease", str "NOT_ESTABLISHED"),
    ("M4", str "NOT_RUN"), ("M7", str "NOT_ADMITTED"), ("Store_mutations", nat 0)]
end TheoremProjectionContractProbe
