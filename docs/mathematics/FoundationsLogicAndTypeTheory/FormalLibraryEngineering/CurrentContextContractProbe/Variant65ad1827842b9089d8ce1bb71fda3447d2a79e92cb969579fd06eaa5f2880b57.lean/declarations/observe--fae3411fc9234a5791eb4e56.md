# observe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:627cec349f81ba37c956e89ba3e7e32d0fb4e905fceb7e69cff363f6b4fb9709",
  "kind": "def",
  "lexical_name": "observe",
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
  "slug": "observe--fae3411fc9234a5791eb4e56",
  "source": {
    "blob": "83912dd3557182ee826b54bd3b3ef798d540d40d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurrentContextContractProbe/Variant65ad1827842b9089d8ce1bb71fda3447d2a79e92cb969579fd06eaa5f2880b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fae3411fc9234a5791eb4e560ef3aca78620d4f6a063eef0c172a7e99b91904b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurrentContextContractProbe/Variant65ad1827842b9089d8ce1bb71fda3447d2a79e92cb969579fd06eaa5f2880b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:627cec349f81ba37c956e89ba3e7e32d0fb4e905fceb7e69cff363f6b4fb9709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurrentContextContractProbe/Variant65ad1827842b9089d8ce1bb71fda3447d2a79e92cb969579fd06eaa5f2880b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurrentContextContractProbe/Variant65ad1827842b9089d8ce1bb71fda3447d2a79e92cb969579fd06eaa5f2880b57.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83912dd3557182ee826b54bd3b3ef798d540d40d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
