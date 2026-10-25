# observe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8235bcdeacdb23cc916ba01bd9f4a167e1b94a6b462a98c088a1f45d9bbb3626",
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
  "slug": "observe--4d3e9a82b13df23d5b7222cb",
  "source": {
    "blob": "6d8a0b5daeaa294738c1f8dca6b4c82519b4aaed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanRecursorContracts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d3e9a82b13df23d5b7222cb535cbc5e3f24a7b15430f3e2847a2d5e513349f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanRecursorContracts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8235bcdeacdb23cc916ba01bd9f4a167e1b94a6b462a98c088a1f45d9bbb3626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def observe (output : System.FilePath) (contextName owner : Name) (selectors : Array Name) : CoreM Unit := do
  if selectors.isEmpty || selectors.size > 64 then throwError "RECURSOR_SELECTOR_LIMIT_1_TO_64"
  if selectors.toList.eraseDups.length != selectors.size then throwError "RECURSOR_DUPLICATE_SELECTOR"
  liftM <| guardRequest output contextName owner selectors
  let before ← getEnv
  let some (.defnInfo context) := before.find? contextName | throwError "RECURSOR_CONTEXT_NOT_CURRENT_DEFINITION"
  if (before.getModuleIdxFor? contextName).isSome then throwError "RECURSOR_CONTEXT_MUST_BE_CURRENT_SOURCE"
  if before.header.moduleNames.size > 4096 then throwError "RECURSOR_HEADER_LIMIT_4096"
  liftM <| guardNames before.header.moduleNames
  let mut selected : Array (RecursorVal × InductiveVal × List ConstructorVal) := #[]
  for selector in selectors do
    let some (.recInfo rv) := before.find? selector | throwError "RECURSOR_SELECTOR_NOT_RECINFO"
    liftM <| guardRecursor rv
    let (iv,ctors) ← IO.ofExcept (association before owner rv)
    liftM <| guardConstant (.inductInfo iv)
    for ctor in ctors do liftM <| guardConstant (.ctorInfo ctor)
    selected := selected.push (rv,iv,ctors)
  -- Every selector and association is checked before serializing artifacts.
  liftM <| IO.FS.createDir (output / "artifacts")
  let handle ← liftM <| IO.FS.Handle.mk (output / "observations.jsonl") .write
  let total ← liftM <| IO.mkRef 0
  let quote := boundedEmit handle total
  let contextType ← liftM <| LeanImportedContracts.artifact output 0 "context-type" context.type
  let contextBody ← liftM <| LeanImportedContracts.artifact output 0 "context-body" context.value
  let contextRefs := context.value.getUsedConstants.qsort Name.lt
  if contextRefs.size > 4096 then throwError "RECURSOR_CONTEXT_REFERENCE_LIMIT_4096"
  liftM <| guardNames contextRefs
  liftM <| quote <| obj [("record_type",str "RecursorContext"),("name",nameJson contextName),
    ("type",str contextType),("body",str contextBody),("native_body_references",toJson (contextRefs.map nameJson)),
    ("selector_origin",str "CALLER_EXACT_NAMES_NOT_SOURCE_OWNER_OR_DEPENDENCY_INFERENCE"),
    ("semantic_source_owner",str "UNAVAILABLE"),("kernel_admission",str "NOT_CLAIMED")]
  for i in [:selected.size] do
    let (rv,iv,ctors) := selected[i]!
    let type ← liftM <| LeanImportedContracts.artifact output (i+1) "recursor-type" rv.type
    let ownerType ← liftM <| LeanImportedContracts.artifact output (i+1) "owner-type" iv.type
    let ownerMetadata ← IO.ofExcept (fullMetadata (.inductInfo iv) ownerType "")
    let mut ruleRows : List Json := []
    let mut ctorRows : List Json := []
    let mut ruleDependencies : List Json := []
    for j in [:rv.rules.length] do
      let rule := rv.rules[j]!
      let rhs ← liftM <| LeanImportedContracts.artifact output (i*64+j+100) "rule-rhs" rule.rhs
      let ctorType ← liftM <| LeanImportedContracts.artifact output (i*64+j+100) "ctor-type" ctors[j]!.type
      let ctorMetadata ← IO.ofExcept (fullMetadata (.ctorInfo ctors[j]!) ctorType "")
      ruleRows := ruleRows ++ [obj [("ctor",nameJson rule.ctor),("nfields",nat rule.nfields),("rhs",str rhs)]]
      ctorRows := ctorRows ++ [ctorMetadata]
      let refs := rule.rhs.getUsedConstants.qsort Name.lt
      if refs.size > 4096 then throwError "RECURSOR_RULE_REFERENCE_LIMIT_4096"
      liftM <| guardNames refs
      let mut dependencyRows : Array Json := #[]
      for name in refs do
        let available := before.find? name |>.isSome
        if !available then throwError "RECURSOR_RULE_REFERENCE_UNAVAILABLE"
        let referenceAxioms ← Lean.collectAxioms name
        if referenceAxioms.size > 64 then throwError "RECURSOR_RULE_REFERENCE_AXIOM_LIMIT_64"
        liftM <| guardNames referenceAxioms
        dependencyRows := dependencyRows.push (obj [("name",nameJson name),("available",toJson available),
          ("cached_reference_axioms",toJson (referenceAxioms.map nameJson)),
          ("module_binding",← IO.ofExcept (moduleBinding before name))])
      ruleDependencies := ruleDependencies ++ [obj [("rule_index",nat j),("ctor",nameJson rule.ctor),
        ("rhs_constant_references",toJson (refs.map nameJson)),("reference_axiom_observations",toJson dependencyRows),
        ("scope",str "RHS_CONST_REFERENCES_AND_CACHED_PER_REFERENCE_AXIOMS_NOT_FRESH_TRANSITIVE_RULE_CLOSURE")]]
    let axioms ← Lean.collectAxioms rv.name
    if axioms.size > 64 then throwError "RECURSOR_AXIOM_LIMIT_64"
    liftM <| guardNames axioms
    let after ← getEnv
    let some (.recInfo repeated) := after.find? rv.name | throwError "RECURSOR_REPEAT_UNAVAILABLE"
    liftM <| quote <| obj [("record_type",str "RecursorDeclaration"),("name",nameJson rv.name),
      ("full_recursor",metadata rv type ruleRows),("owner",ownerMetadata),("constructors",toJson ctorRows),
      ("rule_dependencies",toJson ruleDependencies),
      ("module_binding",← IO.ofExcept (moduleBinding before rv.name)),
      ("isImportedConst",toJson (before.isImportedConst rv.name)),
      ("major_index",nat rv.getMajorIdx),("first_index_index",nat rv.getFirstIndexIdx),
      ("first_minor_index",nat rv.getFirstMinorIdx),("major_owner",(majorOwner? rv).map nameJson |>.getD Json.null),
      ("axioms",toJson (axioms.map nameJson)),("contains_sorry_ax",toJson (axioms.contains ``sorryAx)),
      ("axiom_scope",str "COLLECT_AXIOMS_RECINFO_TYPE_ONLY_NOT_RULE_RHS_OR_FRESH_KERNEL_REPLAY"),
      ("full_recursor_repeat_same",toJson (sameRecursor rv repeated)),
      ("import_binding_repeat_same",toJson (before.getModuleIdxFor? rv.name == after.getModuleIdxFor? rv.name && before.header.moduleNames == after.header.moduleNames)),
      ("recursor_body_status",str "NOT_APPLICABLE_RULE_RHS_RECORDED_SEPARATELY"),
      ("proof_dependency_status",str "NOT_INFERRED_FROM_TYPE_OR_REDUCTION_RULE"),
      ("semantic_source_owner",str "UNAVAILABLE"),("kernel_admission",str "NOT_CLAIMED")]
  let after ← getEnv
  let added := after.checked.get.constants.foldStage2 (fun acc name _ =>
    if (before.find? name).isNone then acc.push name else acc) (#[] : Array Name)
  if !added.isEmpty then throwError "RECURSOR_OBSERVATION_ADDED_CONSTANTS"
  liftM <| quote <| obj [("record_type",str "RecursorTerminal"),("profile",str "PRIVATE-NATIVE-RECURSOR-CONTRACTS/v1"),
    ("selectors",nat selectors.size),("lean_version",str "4.33.0"),
    ("expression_fields",str "COMPLETE_TYPE_AND_EVERY_RULE_RHS_NO_TYPE_ONLY_SUBSTITUTION"),
    ("new_constants",toJson (added.map nameJson)),
    ("whole_generated_family",str "UNAVAILABLE_WRAPPERS_OTHER_GENERATORS_NOT_ENUMERATED"),
    ("complete_context",str "UNAVAILABLE"),("original_build_source_custody",str "UNAVAILABLE"),
    ("M4",str "NOT_RUN"),("M7",str "NOT_ADMITTED")]
  liftM handle.flush

end LeanRecursorContracts
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanRecursorContracts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanRecursorContracts.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d8a0b5daeaa294738c1f8dca6b4c82519b4aaed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
