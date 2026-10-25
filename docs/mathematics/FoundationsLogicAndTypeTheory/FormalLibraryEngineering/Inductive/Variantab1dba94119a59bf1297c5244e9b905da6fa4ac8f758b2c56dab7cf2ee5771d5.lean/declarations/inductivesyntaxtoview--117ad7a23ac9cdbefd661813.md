# inductiveSyntaxToView

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86e86d3be59ed0f0966559429d7c5a5734efb35e7d0817dacb591cd318f8f413",
  "kind": "def",
  "lexical_name": "inductiveSyntaxToView",
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
  "slug": "inductivesyntaxtoview--117ad7a23ac9cdbefd661813",
  "source": {
    "blob": "015f33d01dc9080041fe10e6e6abb2767f6d3f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:117ad7a23ac9cdbefd6618139f7ca5744d258c94b08e375c7acc90789aff2435",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86e86d3be59ed0f0966559429d7c5a5734efb35e7d0817dacb591cd318f8f413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def inductiveSyntaxToView (modifiers : Modifiers) (decl : Syntax) (isCoinductive : Bool) : TermElabM InductiveView := do
  let isClass := decl.isOfKind ``Parser.Command.classInductive
  -- **Note**: We use `addFirstAttr` to make sure the `[class]` attribute is processed **before** `[univ_out_params]
  let modifiers := if isClass then modifiers.addFirstAttr { name := `class } else modifiers
  let (binders, type?) := expandOptDeclSig decl[2]
  let declId           := decl[1]
  let ⟨name, declName, levelNames, docString?⟩ ← Term.expandDeclId (← getCurrNamespace) (← Term.getLevelNames) declId modifiers
  -- In the case of mutual inductives, this is the earliests point where we can establish the
  -- correct scope for each individual inductive declaration (used e.g. to infer ctor visibility
  -- below), so let's do that now.
  withExporting (isExporting := !isPrivateName declName) do
    if modifiers.isMeta then
      modifyEnv (markMeta · declName)
    addDeclarationRangesForBuiltin declName modifiers.stx decl
    /-
      Relates to issue
      https://github.com/leanprover/lean4/issues/10503
    -/
    if declName.hasMacroScopes && isCoinductive then
      throwError "Coinductive predicates are not allowed inside of macro scopes"
    let ctors      ← decl[4].getArgs.mapM fun ctor => withRef ctor do
      /-
      ```
      def ctor := leading_parser optional docComment >> "\n| " >> declModifiers >> rawIdent >> optDeclSig
      ```
      -/
      let modifiersStx := ctor[2]
      let mut ctorModifiers ← elabModifiers ⟨modifiersStx⟩
      if let some leadingDocComment := ctor[0].getOptional? then
        if ctorModifiers.docString?.isSome then
          logErrorAt leadingDocComment "Duplicate doc string"
        ctorModifiers := { ctorModifiers with
          docString? := some ⟨leadingDocComment⟩ }
      if ctorModifiers.isPrivate && modifiers.isPrivate then
        let hint ← do
          let .original .. := modifiersStx.getHeadInfo | pure .nil
          let some range := modifiersStx[2].getRangeWithTrailing? | pure .nil
          -- Drop the doc comment from both the `declModifiers` and outer `ctor`, as well as
          -- everything after the constructor name (yielding invalid syntax with the desired range)
          let previewSpan? := ctor.modifyArgs (·[2...4].toArray.modify 0 (·.modifyArgs (·[1...*])))
          MessageData.hint "Remove `private` modifier from constructor" #[{
            suggestion := ""
            span? := Syntax.ofRange range
            previewSpan?
            toCodeActionTitle? := some fun _ => "Delete `private` modifier"
          }]
        throwError m!"Constructor cannot be marked `private` because it is already in a `private` inductive datatype" ++ hint
      if ctorModifiers.isProtected && modifiers.isPrivate then
        throwError "Constructor cannot be `protected` because it is in a `private` inductive datatype"
      checkValidCtorModifier ctorModifiers
      let ctorName := ctor.getIdAt 3
      if ctorName.hasMacroScopes && isCoinductive then
        throwError "Coinductive predicates are not allowed inside of macro scopes"
      let ctorName := declName ++ ctorName
      let ctorName ← withRef ctor[3] <| applyVisibility ctorModifiers ctorName
      let (binders, type?) := expandOptDeclSig ctor[4]
      addDeclarationRangesFromSyntax ctorName ctor ctor[3]
      if modifiers.isMeta then
        modifyEnv (markMeta · ctorName)
      return { ref := ctor, declId := ctor[3], modifiers := ctorModifiers, declName := ctorName, binders := binders, type? := type? : CtorView }
    let computedFields ← (decl[5].getOptional?.map (·[1].getArgs) |>.getD #[]).mapM fun cf => withRef cf do
      return { ref := cf, modifiers := cf[0], fieldId := cf[1].getId, type := ⟨cf[3]⟩, matchAlts := ⟨cf[4]⟩ }
    let classes ← getOptDerivingClasses decl[6]
    if decl[3][0].isToken ":=" then
      -- https://github.com/leanprover/lean4/issues/5236
      withRef decl[0] <| Linter.logLintIf Linter.linter.deprecated decl[3]
        "`inductive ... :=` has been deprecated in favor of `inductive ... where`"
    return {
      ref             := decl
      shortDeclName   := name
      derivingClasses := classes
      allowIndices    := true
      allowSortPolymorphism := true
      declId, modifiers, isClass, declName, levelNames
      binders, type?, ctors
      computedFields
      docString?
      isCoinductive := isCoinductive
    }

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inductive/Variantab1dba94119a59bf1297c5244e9b905da6fa4ac8f758b2c56dab7cf2ee5771d5.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015f33d01dc9080041fe10e6e6abb2767f6d3f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
