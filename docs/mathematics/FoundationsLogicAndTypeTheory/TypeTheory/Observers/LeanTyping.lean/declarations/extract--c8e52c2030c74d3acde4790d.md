# extract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7886ce752f3207bb158b07e549484dbc3ae911b75105a9bc1dc8ff33f379de46",
  "kind": "def",
  "lexical_name": "extract",
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
  "slug": "extract--c8e52c2030c74d3acde4790d",
  "source": {
    "blob": "d7f6507e3a5ee770721a9a35b2e072405a3ba16f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanTyping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8e52c2030c74d3acde4790dc4ba0dd36d20ee92f353a2d42f46ca0ce34fc1cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanTyping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7886ce752f3207bb158b07e549484dbc3ae911b75105a9bc1dc8ff33f379de46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def extract (dir : System.FilePath) (h : IO.FS.Handle) : Frontend.FrontendM Unit := do
  let mut index := 1
  let mut declCount := 0
  let mut done := false
  let mut anyErrors := false
  let mut allMessages : Array String := #[]
  while !done do
    Frontend.updateCmdPos
    let before ← get
    let start := before.parserState.pos.byteIdx
    let ictx ← Frontend.getInputContext
    let scope := before.commandState.scopes.head!
    let pmctx := { env := before.commandState.env, options := scope.opts, currNamespace := scope.currNamespace, openDecls := scope.openDecls }
    let (stx, ps, parseMessages) := Parser.parseCommand ictx pmctx before.parserState {}
    modify fun s => { s with commands := s.commands.push stx }
    Frontend.setParserState ps
    Frontend.setMessages parseMessages
    Frontend.elabCommandAtFrontend stx
    let terminal := Parser.isTerminalCommand stx
    let after ← get
    let finish := after.parserState.pos.byteIdx
    let newConstants := after.commandState.env.checked.get.constants.fold (fun acc n ci =>
      if (before.commandState.env.find? n).isNone then acc.push (n,ci) else acc) (#[] : Array (Name × ConstantInfo))
      |>.qsort (fun a b => Name.lt a.1 b.1)
    let commandMessages := parseMessages ++ after.commandState.messages
    let errors := commandMessages.hasErrors
    anyErrors := anyErrors || errors
    let mut diagnostics : Array String := #[]
    for msg in commandMessages.toList do
      let text ← liftM msg.toString
      diagnostics := diagnostics.push text
      allMessages := allMessages.push text
    liftM <| emit h <| obj [
      ("schema_version", nat 1), ("record_type", str "LeanCommand"),
      ("provenance_origin", str "compiler_observation"), ("status", str "KNOWN_PARTIAL"),
      ("command_index", nat index), ("start_byte", nat start), ("end_byte", nat finish),
      ("syntax_kind", str stx.getKind.toString), ("terminal", toJson terminal),
      ("context_before", contextJson before.commandState), ("context_after", contextJson after.commandState),
      ("declarations", names (newConstants.map Prod.fst)),
      ("elaboration_failed", toJson errors), ("diagnostics", toJson diagnostics),
      ("unsupported_effects_status", str "UNKNOWN")]
    for (n,ci) in newConstants do
      let ti ← liftM <| artifact dir declCount "type" ci.type
      let bi ← match ci.value? true with
        | some e => liftM <| artifact dir declCount "body" e
        | none => pure ""
      let axs ← Frontend.runCommandElabM (Lean.collectAxioms n)
      let tref := ci.type.getUsedConstants |>.qsort Name.lt
      let bref := (ci.value? true).map Expr.getUsedConstants |>.getD #[] |>.qsort Name.lt
      let family := match ci with
        | .ctorInfo v => obj [("status", str "KNOWN"), ("owner", str v.induct.toString), ("role", str "constructor")]
        | .recInfo v => obj [("status", str "KNOWN"), ("owners", toJson (v.all.map toString)), ("role", str "recursor")]
        | .inductInfo v => obj [("status", str "KNOWN"), ("owners", toJson (v.all.map toString)), ("constructors", toJson (v.ctors.map toString)), ("role", str "inductive")]
        | _ => obj [("status", str "KNOWN_PARTIAL"), ("role_status", str "UNKNOWN"), ("owner_command_index", nat index)]
      liftM <| emit h <| obj [
        ("schema_version", nat 1), ("record_type", str "DeclarationObservation"),
        ("provenance_origin", str "compiler_observation"), ("status", str "KNOWN_PARTIAL"),
        ("name", str n.toString), ("name_structure", nameJson n), ("declaration_kind", str (kind ci)),
        ("visibility", str (if isPrivateName n then "private" else "public")),
        ("universe_parameters", toJson (ci.levelParams.map toString)),
        ("owning_command_index", nat index), ("ownership_status", str "KNOWN"),
        ("start_byte", nat start), ("end_byte", nat finish),
        ("generated_family", family), ("type_artifact", str ti), ("type_status", str "KNOWN"),
        ("contract_complete", toJson true), ("contract_format", str "lean-expr-json-v1"),
        ("body_artifact", if bi.isEmpty then Json.null else str bi),
        ("body_status", str (if bi.isEmpty then "NOT_APPLICABLE" else "KNOWN")),
        ("type_references", names tref), ("body_references", names bref),
        ("proof_references", if kind ci == "theorem" then names bref else Json.null),
        ("axioms", names axs), ("contains_sorry_ax", toJson (axs.contains ``sorryAx)),
        ("unsafe", toJson ci.isUnsafe), ("partial_definition", toJson ci.isPartial),
        ("source_elaboration", str (if errors then "KNOWN_PARTIAL" else "KNOWN")),
        ("observation_freshness", str "fresh_local_elaboration_cached_imports"),
        ("independent_replay", str "NOT_RUN"), ("proof_mechanism", str "UNKNOWN"),
        ("classification_status", str "UNKNOWN"), ("provenance_status", str "UNKNOWN")]
      declCount := declCount + 1
    index := index + 1
    done := terminal
    if finish <= start && !terminal then
      throw <| IO.userError "parser made no progress; retained preceding observations"
  liftM <| emit h <| obj [("schema_version", nat 1), ("record_type", str "ModuleObservation"),
    ("provenance_origin", str "compiler_observation"),
    ("status", str (if anyErrors then "KNOWN_PARTIAL" else "KNOWN")),
    ("commands_total", nat (index-1)), ("declarations_total", nat declCount),
    ("elaboration_failed", toJson anyErrors),
    ("diagnostics", toJson allMessages), ("context_coverage", str "KNOWN_PARTIAL"),
    ("module_build", str "NOT_RUN"), ("independent_replay", str "NOT_RUN")]
end LeanTyping

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanTyping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanTyping.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7f6507e3a5ee770721a9a35b2e072405a3ba16f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
