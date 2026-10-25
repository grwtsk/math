# elabMacroRulesAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8db9f86b0d6bf02e69927fca69c85cccd36696c92b7c7355959c6389a3409e79",
  "kind": "def",
  "lexical_name": "elabMacroRulesAux",
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
  "slug": "elabmacrorulesaux--bffeb7fde4d239e2ec1d8b38",
  "source": {
    "blob": "e72126f5b4c2475a97249c44ca5299f5d9c41c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroRules/Variant1ad71b812b31055e621747552209fc045be2310d93575ca931e03e77e401a703.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bffeb7fde4d239e2ec1d8b3858621e8a64de9ea4b7068f4455ffed0d9a9c8116",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroRules/Variant1ad71b812b31055e621747552209fc045be2310d93575ca931e03e77e401a703.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8db9f86b0d6bf02e69927fca69c85cccd36696c92b7c7355959c6389a3409e79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMacroRulesAux (doc? : Option (TSyntax ``docComment))
    (attrs? : Option (TSepArray ``attrInstance ",")) (attrKind : TSyntax ``attrKind)
    (tk : Syntax) (k : SyntaxNodeKind) (alts : Array (TSyntax ``matchAlt)) :
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
         | none        => throwErrorAt alt "invalid macro_rules alternative, expected syntax node kind `{k}`"
         | some quoted =>
           let pat := pat.setArg 1 quoted
           let pats := pats.elemsAndSeps.set! 0 pat
           `(matchAltExpr| | $(⟨pats⟩),* => $rhs)
      else
        throwErrorAt alt "invalid macro_rules alternative, unexpected syntax node kind `{k'}`"
    | _ => throwUnsupportedSyntax
  let attr ← `(attrInstance| $attrKind macro $(Lean.mkIdent k))
  let attrs := match attrs? with
    | some attrs => attrs.getElems.push attr
    | none => #[attr]
  let vis := Parser.Command.visibility.ofAttrKind attrKind
  `($[$doc?:docComment]? @[$attrs,*] $vis:visibility
    aux_def macroRules $(mkIdentFrom tk k (canonical := true)) : Macro :=
     fun $alts:matchAlt* | _ => no_error_if_unused% throw Lean.Macro.Exception.unsupportedSyntax)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroRules/Variant1ad71b812b31055e621747552209fc045be2310d93575ca931e03e77e401a703.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MacroRules/Variant1ad71b812b31055e621747552209fc045be2310d93575ca931e03e77e401a703.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72126f5b4c2475a97249c44ca5299f5d9c41c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
