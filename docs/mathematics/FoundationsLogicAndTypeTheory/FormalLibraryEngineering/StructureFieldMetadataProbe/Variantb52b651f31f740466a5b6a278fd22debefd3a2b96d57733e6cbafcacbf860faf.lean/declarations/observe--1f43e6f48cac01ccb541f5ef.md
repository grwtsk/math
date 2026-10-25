# observe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bac708d1bb61b950952bbcb7289b74212d2016fd20033299b1881f2567da75c",
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
  "slug": "observe--1f43e6f48cac01ccb541f5ef",
  "source": {
    "blob": "075a2784c0549f2eac4414e207978978b7b9eb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureFieldMetadataProbe/Variantb52b651f31f740466a5b6a278fd22debefd3a2b96d57733e6cbafcacbf860faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f43e6f48cac01ccb541f5ef7ba89bd23eb173e048fa4f9ae3ad97ca3ae2ddf1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureFieldMetadataProbe/Variantb52b651f31f740466a5b6a278fd22debefd3a2b96d57733e6cbafcacbf860faf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bac708d1bb61b950952bbcb7289b74212d2016fd20033299b1881f2567da75c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureFieldMetadataProbe/Variantb52b651f31f740466a5b6a278fd22debefd3a2b96d57733e6cbafcacbf860faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructureFieldMetadataProbe/Variantb52b651f31f740466a5b6a278fd22debefd3a2b96d57733e6cbafcacbf860faf.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `075a2784c0549f2eac4414e207978978b7b9eb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
