# toParserDescr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41e01cabcbb1df15235fa5c74bcbaadf487324f30bc2ff8ebc93fa04c331e599",
  "kind": "def",
  "lexical_name": "toParserDescr",
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
  "slug": "toparserdescr--f19df5968780d4576a102bcf",
  "source": {
    "blob": "26ba9576232a398d9deb7cfbf6accb85ac97720b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f19df5968780d4576a102bcfd3aa08ba48fbafad68c749c6761d2c009e24f197",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41e01cabcbb1df15235fa5c74bcbaadf487324f30bc2ff8ebc93fa04c331e599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toParserDescr (stx : Syntax) (catName : Name) : TermElabM (Term × Option Nat) := do
  let env ← getEnv
  let behavior := Parser.leadingIdentBehavior env catName
  let ((newStx, _), lhsPrec?) ← (process stx { catName := catName, first := true, leftRec := true, behavior := behavior }).run none
  return (newStx, lhsPrec?)
where
  process (stx : Syntax) : ToParserDescr := withRef stx do
    let kind := stx.getKind
    if kind == nullKind then
      processSeq stx
    else if kind == choiceKind then
      process stx[0]
    else if kind == ``Lean.Parser.Syntax.paren then
      process stx[1]
    else if kind == ``Lean.Parser.Syntax.cat then
      processNullaryOrCat stx
    else if kind == ``Lean.Parser.Syntax.unary then
      processAlias stx[0] #[stx[2]]
    else if kind == ``Lean.Parser.Syntax.binary then
      processAlias stx[0] #[stx[2], stx[4]]
    else if kind == ``Lean.Parser.Syntax.sepBy then
      processSepBy stx
    else if kind == ``Lean.Parser.Syntax.sepBy1 then
      processSepBy1 stx
    else if kind == ``Lean.Parser.Syntax.atom then
      processAtom stx
    else if kind == ``Lean.Parser.Syntax.nonReserved then
      processNonReserved stx
    else if kind == ``Lean.Parser.Syntax.unicodeAtom then
      processUnicode stx
    else
      let stxNew? ← liftM (liftMacroM (expandMacro? stx) : TermElabM _)
      match stxNew? with
      | some stxNew => process stxNew
      | none => throwErrorAt stx "unexpected syntax kind of category `syntax`: {kind}"

  /-- Sequence (aka NullNode) -/
  processSeq (stx : Syntax) := do
    let args := stx.getArgs
    if (← checkLeftRec stx[0]) then
      if args.size == 1 then throwErrorAt stx "invalid atomic left recursive syntax"
      let args := args.eraseIdxIfInBounds 0
      let args ← args.mapM fun arg => withNestedParser do process arg
      mkParserSeq args
    else
      let args ← args.mapIdxM fun i arg => withReader (fun ctx => { ctx with first := ctx.first && i == 0 }) do process arg
      mkParserSeq args

  ensureNoPrec (stx : Syntax) :=
    unless stx[1].isNone do
      throwErrorAt stx[1] "unexpected precedence"

  processParserCategory (stx : Syntax) := do
    let catName := stx[0].getId.eraseMacroScopes
    if (← read).first && catName == (← read).catName then
      throwErrorAt stx "invalid atomic left recursive syntax"
    let prec? ← liftMacroM <| expandOptPrecedence stx[1]
    let prec := prec?.getD 0
    return (← `(ParserDescr.cat $(quote catName) $(quote prec)), 1)

  processAlias (id : Syntax) (args : Array Syntax) := do
    let aliasName := id.getId.eraseMacroScopes
    let info ← Parser.getParserAliasInfo aliasName
    addAliasInfo id info
    let args' ← args.mapM (withNestedParser ∘ process)
    -- wrap lone string literals in `<|>` in dedicated node (#1275)
    let args' ← if aliasName == `orelse then  -- TODO: generalize if necessary
      args.zipWithM (bs := args') fun arg arg' => do
        let mut #[arg] := arg.getArgs | return arg'
        let sym ← match arg with
          | `(stx| &$sym) => pure sym
          | `(stx| $sym:str) => pure sym
          | _ => return arg'
        let sym := sym.getString
        return (← `(ParserDescr.nodeWithAntiquot $(quote sym) $(quote (Name.str `token sym)) $(arg'.1)), 1)
    else
      pure args'
    let (args', stackSz) := if let some stackSz := info.stackSz? then
      if !info.autoGroupArgs then
        (args'.map (·.1), stackSz)
      else
        (args'.map ensureUnaryOutput, stackSz)
    else
      let (args', stackSzs) := args'.unzip
      (args', stackSzs.foldl (· + ·) 0)
    let stx ← match args' with
      | #[]       => Parser.ensureConstantParserAlias aliasName; ``(ParserDescr.const $(quote aliasName))
      | #[p1]     => Parser.ensureUnaryParserAlias aliasName; ``(ParserDescr.unary $(quote aliasName) $p1)
      | #[p1, p2] => Parser.ensureBinaryParserAlias aliasName; ``(ParserDescr.binary $(quote aliasName) $p1 $p2)
      | _         => unreachable!
    return (stx, stackSz)

  processNullaryOrCat (stx : Syntax) := do
    let ident := stx[0]
    let id := ident.getId.eraseMacroScopes
    match (← elabParserName? ident) with
    | some (.parser c (isDescr := true)) =>
      ensureNoPrec stx
      -- `syntax _ :=` at least enforces this
      let stackSz := 1
      return (mkIdentFrom stx c, stackSz)
    | some (.parser c (isDescr := false)) =>
      if (← Parser.getParserAliasInfo id).declName == c then
        -- prefer parser alias over base declaration because it has more metadata, #2249
        ensureNoPrec stx
        return (← processAlias ident #[])
      ensureNoPrec stx
      -- as usual, we assume that people using `Parser` know what they are doing
      let stackSz := 1
      return (← `(ParserDescr.parser $(quote c)), stackSz)
    | some (.category _) =>
      processParserCategory stx
    | some (.alias _) =>
      ensureNoPrec stx
      processAlias ident #[]
    | none => throwError "unknown parser declaration/category/alias `{id}`"

  processSepBy (stx : Syntax) := do
    let p ← ensureUnaryOutput <$> withNestedParser do process stx[1]
    let sep := stx[3]
    let psep ← if stx[4].isNone then `(ParserDescr.symbol $sep) else ensureUnaryOutput <$> withNestedParser do process stx[4][1]
    let allowTrailingSep := !stx[5].isNone
    return (← `((with_annotate_term $(stx[0]) @ParserDescr.sepBy) $p $sep $psep $(quote allowTrailingSep)), 1)

  processSepBy1 (stx : Syntax) := do
    let p ← ensureUnaryOutput <$> withNestedParser do process stx[1]
    let sep := stx[3]
    let psep ← if stx[4].isNone then `(ParserDescr.symbol $sep) else ensureUnaryOutput <$> withNestedParser do process stx[4][1]
    let allowTrailingSep := !stx[5].isNone
    return (← `((with_annotate_term $(stx[0]) @ParserDescr.sepBy1) $p $sep $psep $(quote allowTrailingSep)), 1)

  isValidAtom (s : String) : Bool :=
    -- Pretty-printing instructions shouldn't affect validity
    let s := s.trimAscii.copy
    !s.isEmpty &&
    (s.front != '\'' || "''".isPrefixOf s) &&
    s.front != '\"' &&
    !(isIdBeginEscape s.front) &&
    !(s.front == '`' && (s.rawEndPos == ⟨1⟩ || isIdFirst (String.Pos.Raw.get s ⟨1⟩) || isIdBeginEscape (String.Pos.Raw.get s ⟨1⟩))) &&
    !s.front.isDigit &&
    !(s.any Char.isWhitespace)

  validAtom (stx : Syntax) : ToParserDescrM String := do
    let some atom := stx.isStrLit? | throwUnsupportedSyntax
    unless isValidAtom atom do
      throwErrorAt stx "invalid atom"
    return atom

  processAtom (stx : Syntax) := do
    let atom ← validAtom stx[0]
    /- For syntax categories where initialized with `LeadingIdentBehavior` different from default (e.g., `tactic`), we automatically mark
       the first symbol as nonReserved. -/
    if (← read).behavior != Parser.LeadingIdentBehavior.default && (← read).first then
      return (← `(ParserDescr.nonReservedSymbol $(quote atom) false), 1)
    else
      return (← `(ParserDescr.symbol $(quote atom)), 1)

  processNonReserved (stx : Syntax) := do
    let atom ← validAtom stx[1]
    return (← `((with_annotate_term $(stx[0]) @ParserDescr.nonReservedSymbol) $(quote atom) false), 1)

  processUnicode (stx : Syntax) := do
    let atom ← validAtom stx[1]
    let asciiAtom ← validAtom stx[3]
    let preserveForPP := !stx[4].isNone
    return (← `((with_annotate_term $(stx[0]) @ParserDescr.unicodeSymbol) $(quote atom) $(quote asciiAtom) $(quote preserveForPP)), 1)

end Term

namespace Command
open Lean.Syntax
open Lean.Parser.Term hiding macroArg
open Lean.Parser.Command

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variantdf52ac6beaa9c0ab6f18d265892ee4827b04d020516c0618eb4af16faa63f9f9.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ba9576232a398d9deb7cfbf6accb85ac97720b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
