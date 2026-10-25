# elabElabRulesAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46d52678f07c08eb85e880c7e0c7b5a4dfba7e088f892971188167097a4b0360",
  "kind": "def",
  "lexical_name": "elabElabRulesAux",
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
  "slug": "elabelabrulesaux--44667d8e9de863fcbf8537b6",
  "source": {
    "blob": "31f799c5017ebb0f14900cd9f0ff4ee64131b12a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRules/Varianta7f056df4395409bdc7f1a610f1e61acc28e02e830d20f72c18a3ab70d0f10d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44667d8e9de863fcbf8537b65c5ce4a9adfed2c1afcd5b78a93080a791d2535d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRules/Varianta7f056df4395409bdc7f1a610f1e61acc28e02e830d20f72c18a3ab70d0f10d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46d52678f07c08eb85e880c7e0c7b5a4dfba7e088f892971188167097a4b0360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabElabRulesAux (doc? : Option (TSyntax ``docComment))
    (attrs? : Option (TSepArray ``attrInstance ",")) (attrKind : TSyntax ``attrKind)
    (k : SyntaxNodeKind) (cat? expty? : Option (Ident)) (alts : Array (TSyntax ``matchAlt)) :
    CommandElabM Syntax := do
  let alts ← alts.mapM fun (alt : TSyntax ``matchAlt) => match alt with
    | `(matchAltExpr| | $pats,* => $rhs) => do
      let pat := pats.elemsAndSeps[0]!
      if !pat.isQuot then
        throwUnsupportedSyntax
      let quoted := getQuotContent pat
      let k' := quoted.getKind
      if checkRuleKind k' k then
        pure alt
      else if k' == choiceKind then
         match quoted.getArgs.find? fun quotAlt => checkRuleKind quotAlt.getKind k with
         | none        => throwErrorAt alt "invalid elab_rules alternative, expected syntax node kind `{k}`"
         | some quoted =>
           let pat := pat.setArg 1 quoted
           let pats := ⟨pats.elemsAndSeps.set! 0 pat⟩
           `(matchAltExpr| | $pats,* => $rhs)
      else
        throwErrorAt alt "invalid elab_rules alternative, unexpected syntax node kind `{k'}`"
    | _ => throwUnsupportedSyntax
  let catName ← match cat?, expty? with
    | some cat, _ => pure cat.getId
    | _, some _   => pure `term
    -- TODO: infer category from quotation kind, possibly even kind of quoted syntax?
    | _, _        => throwError "invalid elab_rules command, specify category using `elab_rules : <cat> ...`"
  let mkAttrs (kind : Name) : CommandElabM (TSyntaxArray ``attrInstance) := do
    let attr ← `(attrInstance| $attrKind:attrKind $(mkIdent kind):ident $(← mkIdentFromRef k):ident)
    pure <| match attrs? with
      | some attrs => attrs.getElems.push attr
      | none => #[attr]
  let vis := Parser.Command.visibility.ofAttrKind attrKind
  if let some expId := expty? then
    if catName == `term then
      `($[$doc?:docComment]? @[$(← mkAttrs `term_elab),*] $vis:visibility
        aux_def elabRules $(mkIdent k) : Lean.Elab.Term.TermElab :=
        fun stx expectedType? => Lean.Elab.Term.withExpectedType expectedType? fun $expId => match stx with
          $alts:matchAlt* | _ => no_error_if_unused% throwUnsupportedSyntax)
    else if catName == `doElem then
      `($[$doc?:docComment]? @[$(← mkAttrs `doElem_elab),*] $vis:visibility
        aux_def elabRules $(mkIdent k) : Lean.Elab.Do.DoElab :=
        fun stx $expId => match stx with
          $alts:matchAlt* | _ => no_error_if_unused% throwUnsupportedSyntax)
    else
      throwErrorAt expId "syntax category `{catName}` does not support expected type specification"
  else if catName == `term then
    `($[$doc?:docComment]? @[$(← mkAttrs `term_elab),*] $vis:visibility
      aux_def elabRules $(mkIdent k) : Lean.Elab.Term.TermElab :=
      fun stx _ => match stx with
        $alts:matchAlt* | _ => no_error_if_unused% throwUnsupportedSyntax)
  else if catName == `command then
    `($[$doc?:docComment]? @[$(← mkAttrs `command_elab),*] $vis:visibility
      aux_def elabRules $(mkIdent k) : Lean.Elab.Command.CommandElab :=
      fun $alts:matchAlt* | _ => no_error_if_unused% throwUnsupportedSyntax)
  else if catName == `tactic || catName == `conv then
    `($[$doc?:docComment]? @[$(← mkAttrs `tactic),*] $vis:visibility
      aux_def elabRules $(mkIdent k) : Lean.Elab.Tactic.Tactic :=
      fun $alts:matchAlt* | _ => no_error_if_unused% throwUnsupportedSyntax)
  else if catName == `doElem then
    `($[$doc?:docComment]? @[$(← mkAttrs `doElem_elab),*] $vis:visibility
      aux_def elabRules $(mkIdent k) : Lean.Elab.Do.DoElab :=
      fun stx cont => match stx with
        $alts:matchAlt* | _ => no_error_if_unused% throwUnsupportedSyntax)
  else
    -- We considered making the command extensible and support new user-defined categories. We think it is unnecessary.
    -- If users want this feature, they add their own `elab_rules` macro that uses this one as a fallback.
    throwError "unsupported syntax category `{catName}`"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRules/Varianta7f056df4395409bdc7f1a610f1e61acc28e02e830d20f72c18a3ab70d0f10d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabRules/Varianta7f056df4395409bdc7f1a610f1e61acc28e02e830d20f72c18a3ab70d0f10d3.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f799c5017ebb0f14900cd9f0ff4ee64131b12a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
