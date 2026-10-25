# elabAxiom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb517a41826ca72c4d269c69b81a4da1350d81d23a7d5d9214dc2ac439b5f4e1",
  "kind": "def",
  "lexical_name": "elabAxiom",
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
  "slug": "elabaxiom--da86cbada466e2d9f249b94a",
  "source": {
    "blob": "ca409f8835376638b29feca5dfa1e4a8d73cf0f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 101,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantf81a137aca9f1c6b35a57010fb8539e78e663752aeff1126b686886a6a1afcb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da86cbada466e2d9f249b94a2d0dac31121df1b6dce49011c036f2d7a4ff2025",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantf81a137aca9f1c6b35a57010fb8539e78e663752aeff1126b686886a6a1afcb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb517a41826ca72c4d269c69b81a4da1350d81d23a7d5d9214dc2ac439b5f4e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabAxiom (modifiers : Modifiers) (stx : Syntax) : CommandElabM Unit := do
  -- leading_parser "axiom " >> declId >> declSig
  let declId             := stx[1]
  let (binders, typeStx) := expandDeclSig stx[2]
  runTermElabM fun vars => do
    let scopeLevelNames ← Term.getLevelNames
    let ⟨shortName, declName, allUserLevelNames, docString?⟩ ← Term.expandDeclId (← getCurrNamespace) scopeLevelNames declId modifiers
    addDeclarationRangesForBuiltin declName modifiers.stx stx
    Term.withAutoBoundImplicit do
    Term.withAutoBoundImplicitForbiddenPred (fun n => shortName == n) do
    Term.withDeprecationContextFromAttrs modifiers.attrs <| Term.withDeclName declName <| Term.withLevelNames allUserLevelNames <| Term.elabBinders binders.getArgs fun xs => do
      Term.applyAttributesAt declName modifiers.attrs AttributeApplicationTime.beforeElaboration
      let type ← Term.elabType typeStx
      Term.synthesizeSyntheticMVarsNoPostponing
      let xs ← Term.addAutoBoundImplicits xs (declId.getTailPos? (canonicalOnly := true))
      let type ← instantiateMVars type
      let type ← mkForallFVars xs type
      let type ← mkForallFVars vars type (usedOnly := true)
      let type ← Term.levelMVarToParam type
      let usedParams  := collectLevelParams {} type |>.params
      match sortDeclLevelParams scopeLevelNames allUserLevelNames usedParams with
      | Except.error msg      => throwErrorAt stx msg
      | Except.ok levelParams =>
        let type ← instantiateMVars type
        let decl := Declaration.axiomDecl {
          name        := declName,
          levelParams := levelParams,
          type        := type,
          isUnsafe    := modifiers.isUnsafe
        }
        trace[Elab.axiom] "{declName} : {type}"
        Term.ensureNoUnassignedMVars decl
        addDecl decl

        Term.applyAttributesAt declName modifiers.attrs AttributeApplicationTime.afterTypeChecking
        if isExtern (← getEnv) declName then
          compileDecl decl
        if let some doc := docString? then
          addDocString declName binders doc
        Term.applyAttributesAt declName modifiers.attrs AttributeApplicationTime.afterCompilation
        withSaveInfoContext do  -- save new env with docstring and decl
          Term.addTermInfo' declId (← mkConstWithLevelParams declName) (isBinder := true)
        enableRealizationsForConst declName
open Lean.Parser.Command.InternalSyntax in
/--
Macro that expands a declaration with a complex name into an explicit `namespace` block.
Implementing this step as a macro means that reuse checking is handled by `elabCommand`.
 -/
@[builtin_macro Lean.Parser.Command.declaration]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantf81a137aca9f1c6b35a57010fb8539e78e663752aeff1126b686886a6a1afcb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantf81a137aca9f1c6b35a57010fb8539e78e663752aeff1126b686886a6a1afcb7.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca409f8835376638b29feca5dfa1e4a8d73cf0f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
