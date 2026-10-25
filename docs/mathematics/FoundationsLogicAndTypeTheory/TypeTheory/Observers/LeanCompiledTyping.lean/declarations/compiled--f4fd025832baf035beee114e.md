# compiled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cf412cbb7106f69c3a2e83894b6a7039c45ff64df674307c3aab31d738875fb",
  "kind": "def",
  "lexical_name": "compiled",
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
  "slug": "compiled--f4fd025832baf035beee114e",
  "source": {
    "blob": "68304a3532012629fcdf26bf5792bed658efccb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 221,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4fd025832baf035beee114eea5e768ae6fd160da95271497b90eb287e93494a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanCompiledTyping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cf412cbb7106f69c3a2e83894b6a7039c45ff64df674307c3aab31d738875fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compiled (module : Name) (dir : System.FilePath) (env : Environment) : IO Unit := do
  IO.FS.createDirAll (dir / "artifacts")
  let h ← IO.FS.Handle.mk (dir / "observations.jsonl") .write
  let moduleNames := env.header.moduleNames
  let indexedNames := env.const2ModIdx.toArray.filterMap fun (name, idx) =>
    if moduleNames[idx.toNat]! == module then some name else none
  let mut unavailableNames := 0
  for name in indexedNames.qsort Name.lt do
    if (env.find? name).isNone then
      unavailableNames := unavailableNames + 1
      emit h <| obj [("record_type", str "CompiledModuleIndexNameObservation"),
        ("name", str name.toString), ("defining_module", str module.toString),
        ("constant_info", str "UNAVAILABLE"), ("logical_declaration_kind", str "UNKNOWN"),
        ("reason", str "MODULE_NAME_INDEX_ENTRY_HAS_NO_CONSTANTINFO; NATIVE_OR_GENERATED_ROLE_NOT_INFERRED_FROM_NAME"),
        ("type_status", str "UNAVAILABLE"), ("body_status", str "UNAVAILABLE"),
        ("generated_owner", str "UNAVAILABLE_REQUIRES_SOURCE_OR_IR_OWNERSHIP_RECORD"),
        ("proof_acceptance", str "NOT_CLAIMED")]
      h.flush
  let selected := env.const2ModIdx.toArray.filterMap fun (name, idx) =>
    if moduleNames[idx.toNat]! == module then env.find? name |>.map (name, ·) else none
  let selected := selected.qsort (fun a b => Name.lt a.1 b.1)
  let mut index := 0
  for (name, ci) in selected do
    let typeFile ← artifact dir index "type" ci.type
    let bodyFile ← match ci.value? true with
      | some e => artifact dir index "body" e
      | none => pure ""
    let typeReferences := ci.type.getUsedConstants |>.qsort Name.lt
    let bodyReferences := (ci.value? true).map Expr.getUsedConstants |>.getD #[] |>.qsort Name.lt
    let family := match ci with
      | .ctorInfo v => obj [("status", str "KNOWN"), ("owner", str v.induct.toString), ("role", str "constructor")]
      | .recInfo v => obj [("status", str "KNOWN"), ("owners", toJson (v.all.map toString)), ("role", str "recursor")]
      | .inductInfo v => obj [("status", str "KNOWN"), ("owners", toJson (v.all.map toString)), ("constructors", toJson (v.ctors.map toString)), ("role", str "inductive")]
      | _ => obj [("status", str "KNOWN_PARTIAL"), ("role_status", str "UNAVAILABLE_WITHOUT_COMMAND_OBSERVATION")]
    emit h <| obj [
      ("schema_version", nat 1), ("record_type", str "CompiledDeclarationObservation"),
      ("provenance_origin", str "compiler_artifact_observation"), ("status", str "KNOWN_PARTIAL"),
      ("name", str name.toString), ("name_structure", nameJson name), ("declaration_kind", str (kind ci)),
      ("defining_module", str module.toString), ("module_ownership", str "LEAN_CONST_TO_MODULE_INDEX"),
      ("visibility", str (if isPrivateName name then "private" else "public")),
      ("universe_parameters", toJson (ci.levelParams.map toString)), ("generated_family", family),
      ("command_owner_status", str "UNAVAILABLE_REQUIRES_INSTRUMENTED_SOURCE_OBSERVATION"),
      ("type_artifact", str typeFile), ("type_status", str "KNOWN"),
      ("contract_complete", toJson true), ("contract_format", str "lean-expr-json-v1"),
      ("body_artifact", if bodyFile.isEmpty then Json.null else str bodyFile),
      ("body_status", str (if bodyFile.isEmpty then "NOT_APPLICABLE" else "KNOWN")),
      ("type_references", names typeReferences), ("body_references", names bodyReferences),
      ("proof_references", if kind ci == "theorem" then names bodyReferences else Json.null),
      ("axioms", Json.null), ("contains_sorry_ax", Json.null),
      ("axiom_observation_method", str "REQUIRES_SEPARATE_COMPILED_AXIOM_OBSERVATION"),
      ("axiom_closure_status", str "UNAVAILABLE_PENDING_AXIOM_PHASE"),
      ("unavailable_dependency_constants", Json.null),
      ("unsafe", toJson ci.isUnsafe), ("partial_definition", toJson ci.isPartial),
      ("freshness", str "REQUIRES_HOST_SOURCE_VALIDATING_BUILD_AND_ARTIFACT_BINDING"),
      ("independent_replay", str "NOT_RUN"), ("complete_context", str "UNAVAILABLE"),
      ("provenance_status", str "UNKNOWN"), ("proof_acceptance", str "NOT_CLAIMED")]
    h.flush
    index := index + 1
  emit h <| obj [("schema_version", nat 1), ("record_type", str "CompiledModuleObservation"),
    ("status", str "KNOWN_PARTIAL"), ("module", str module.toString),
    ("declarations_total", nat index), ("commands", str "NOT_OBSERVED"),
    ("module_index_names_total", nat indexedNames.size),
    ("module_index_names_without_constantinfo", nat unavailableNames),
    ("independent_replay", str "NOT_RUN"), ("complete_context", str "UNAVAILABLE")]
  h.flush

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanCompiledTyping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68304a3532012629fcdf26bf5792bed658efccb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
