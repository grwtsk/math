# expandFields

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8441206a13f17d73a3787e9bd03c6993f421bde1eec620fbb0416268b757f2d9",
  "kind": "def",
  "lexical_name": "expandFields",
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
  "slug": "expandfields--a8d32fda701d174804e259e3",
  "source": {
    "blob": "a1c91bd6fe151224d413a2c083e3d0385d2386eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 339,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8d32fda701d174804e259e3144b04fa57c40a4f9edb646e19b7c915e7957408",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8441206a13f17d73a3787e9bd03c6993f421bde1eec620fbb0416268b757f2d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def expandFields (structStx : Syntax) (structModifiers : Modifiers) (structDeclName : Name) : TermElabM (Array StructFieldView) := do
  if structStx[4][0].isToken ":=" then
    -- https://github.com/leanprover/lean4/issues/5236
    let cmd := if structStx[0].getKind == ``Parser.Command.classTk then "class" else "structure"
    withRef structStx[0] <| Linter.logLintIf Linter.linter.deprecated structStx[4][0]
      s!"`{cmd} ... :=` has been deprecated in favor of `{cmd} ... where`."
  let fieldBinders := if structStx[4].isNone then #[] else structStx[4][2][0].getArgs
  fieldBinders.foldlM (init := #[]) fun (views : Array StructFieldView) fieldBinder => withRef fieldBinder do
    let mut fieldBinder := fieldBinder
    if fieldBinder.getKind == ``Parser.Command.structSimpleBinder then
      fieldBinder := mkNode ``Parser.Command.structExplicitBinder
        #[ fieldBinder[0], mkAtomFrom fieldBinder "(", mkNullNode #[ fieldBinder[1] ], fieldBinder[2], fieldBinder[3], fieldBinder[4], mkAtomFrom fieldBinder ")" ]
    let k := fieldBinder.getKind
    let binfo ←
      if k == ``Parser.Command.structExplicitBinder then pure BinderInfo.default
      else if k == ``Parser.Command.structImplicitBinder then pure BinderInfo.implicit
      else if k == ``Parser.Command.structInstBinder then pure BinderInfo.instImplicit
      else throwError "Found an unexpected binder type for field{indentD fieldBinder}"
    let fieldModifiers ← elabModifiers fieldBinder[0]
    checkValidFieldModifier fieldModifiers
    if fieldModifiers.isPrivate && structModifiers.isPrivate then
      let hint ← mkDeletePrivateFieldHint fieldBinder[0] fieldBinder "field"
      throwError m!"Field cannot be marked `private` because it is already in a `private` structure" ++ hint
    if fieldModifiers.isProtected && structModifiers.isPrivate then
      throwError "Field cannot be marked `protected` because this structure is `private`"
    let (binders, type?, default?) ←
      if binfo == BinderInfo.default then
        let (binders, type?) := expandOptDeclSig fieldBinder[3]
        let optBinderTacticDefault := fieldBinder[4]
        if optBinderTacticDefault.isNone then
          pure (binders, type?, none)
        else if optBinderTacticDefault[0].getKind != ``Parser.Term.binderTactic then
          -- binderDefault := leading_parser " := " >> termParser
          let value := optBinderTacticDefault[0][1]
          pure (binders, type?, some <| StructFieldViewDefault.optParam value)
        else
          let binderTactic := optBinderTacticDefault[0]
          let tac := binderTactic[2]
          -- Auto-param applies to `forall $binders*, $type`, which will be handled in `elabFieldTypeValue`
          pure (binders, type?, some <| StructFieldViewDefault.autoParam tac)
      else
        let (binders, type) := expandDeclSig fieldBinder[3]
        pure (binders, some type, none)
    let idents := fieldBinder[2].getArgs
    idents.foldlM (init := views) fun (views : Array StructFieldView) ident => withRef ident do
      let rawName := ident.getId
      let name    := rawName.eraseMacroScopes
      unless name.isAtomic do
        throwErrorAt ident "Invalid field name `{name.eraseMacroScopes}`: Field names must be atomic"
      let declName := structDeclName ++ name
      let declName ← applyVisibility fieldModifiers declName
      return views.push {
        ref        := ident
        modifiers  := fieldModifiers
        binderInfo := binfo
        declName
        name
        nameId     := ident
        rawName
        binders
        type?
        default?
      }

/-
leading_parser (structureTk <|> classTk) >> declId >> optDeclSig >> optional «extends» >>
  optional (("where" <|> ":=") >> optional structCtor >> structFields) >> optDeriving

where
def structParent := leading_parser optional (atomic (ident >> " : ")) >> termParser
def «extends» := leading_parser " extends " >> sepBy1 structParent ", " >> optType

def structFields         := leading_parser many (structExplicitBinder <|> structImplicitBinder <|> structInstBinder)
def structCtor           := leading_parser try (declModifiers >> ident >> " :: ")
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant283064a7fd3fb6d650ea5670cf26108df06fe96aa6d03baf982a58164ea8e0ea.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c91bd6fe151224d413a2c083e3d0385d2386eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
