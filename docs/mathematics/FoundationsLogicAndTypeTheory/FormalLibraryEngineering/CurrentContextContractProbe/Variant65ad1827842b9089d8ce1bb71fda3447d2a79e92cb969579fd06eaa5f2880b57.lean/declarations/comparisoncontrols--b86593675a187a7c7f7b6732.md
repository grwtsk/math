# comparisonControls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efb5a351dcce6792e2675d389433896cb0bfd54ce7bf4d01cdd894c092309899",
  "kind": "def",
  "lexical_name": "comparisonControls",
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
  "slug": "comparisoncontrols--b86593675a187a7c7f7b6732",
  "source": {
    "blob": "83912dd3557182ee826b54bd3b3ef798d540d40d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurrentContextContractProbe/Variant65ad1827842b9089d8ce1bb71fda3447d2a79e92cb969579fd06eaa5f2880b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b86593675a187a7c7f7b6732c42cfa2e334918f8cfeefeb4bbce0c536e6429ab",
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

Occurrence: `declaration:efb5a351dcce6792e2675d389433896cb0bfd54ce7bf4d01cdd894c092309899`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurrentContextContractProbe/Variant65ad1827842b9089d8ce1bb71fda3447d2a79e92cb969579fd06eaa5f2880b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CurrentContextContractProbe/Variant65ad1827842b9089d8ce1bb71fda3447d2a79e92cb969579fd06eaa5f2880b57.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83912dd3557182ee826b54bd3b3ef798d540d40d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
