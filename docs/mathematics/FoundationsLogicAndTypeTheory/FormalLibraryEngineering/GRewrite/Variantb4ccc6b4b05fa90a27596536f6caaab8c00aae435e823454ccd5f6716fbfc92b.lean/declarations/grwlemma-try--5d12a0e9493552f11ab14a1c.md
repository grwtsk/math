# GrwLemma.try

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e9c0946e5b77dc45efd44cf70cb4b3e89d62b598da828806d617c7e8caf768b",
  "kind": "def",
  "lexical_name": "GrwLemma.try",
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
  "slug": "grwlemma-try--5d12a0e9493552f11ab14a1c",
  "source": {
    "blob": "2205871552965d94a311c90f45918d890e662711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d12a0e9493552f11ab14a1ca7a2828f7c47aa136fe3a0bb7f63554e13e2ce80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e9c0946e5b77dc45efd44cf70cb4b3e89d62b598da828806d617c7e8caf768b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GrwLemma.try (i : GrwInfo) (lem : GrwLemma) (assignableMVars : Array Expr) :
    ClickSuggestionsM (Result GrwKey) := do
  let mctx ← getMCtx
  (·.getDM do throwError "no suitable `grw` relation was found") =<< i.gpos.findSomeM? fun pos ↦ do
  unless lem.relName == pos.relName && pos.symm?.all (· == lem.symm) do return none
  let (proof, mvars, binderInfos, rel) ← lem.name.forallMetaTelescopeReducing
  let mkApp2 rel lhs rhs := rel.cleanupAnnotations | return none
  unless ← isDefEq rel pos.relation do setMCtx mctx; return none
  some <$> do
  let e := i.subExpr
  let (lhs, rhs) := if lem.symm then (rhs, lhs) else (lhs, rhs)
  let lhsOrig := lhs; let mctxOrig ← getMCtx
  unless ← isDefEq e lhs do
    throwError "{lhs} does not unify with {e}"
  -- just like in `kabstract`, we compare the `HeadIndex` and number of arguments
  let lhs ← instantiateMVars lhs
  if lhs.toHeadIndex != e.toHeadIndex || lhs.headNumArgs != e.headNumArgs then
    throwError "{lhs} and {e} do not match according to the head-constant indexing"
  synthAppInstances `click_suggestions default mvars binderInfos false false
  let mvars ← mvars.map Expr.mvarId! |>.filterM (not <$> ·.isAssigned)
  let extraGoals ← mvars.mapM (do instantiateMVars <| ← ·.getType)

  let replacement ← instantiateMVars rhs
  let unhelpfulMVars ← hasUnhelpfulMVars mvars assignableMVars (extraGoals.push replacement)
  let proof ← instantiateMVars proof
  let isRefl ← isExplicitEq e replacement
  let justLemmaName ←
    if i.rwKind matches .hasBVars then pure true
    else withMCtx mctxOrig do kabstractFindsPositions i.rootExpr lhsOrig (← read).pos
  let key := {
    numGoals := extraGoals.size
    nameLength := lem.name.length
    replacementSize := (← ppExpr replacement).pretty.length
    name := lem.name.toString
    replacement := ← abstractMVars replacement
  }
  let tactic ← tacticSyntax lem i proof justLemmaName
  let isClosing ← (do
    if extraGoals.isEmpty then
      if let some rflTarget := i.rflTarget? then
        return ← withoutModifyingMCtx <| isDefEq replacement rflTarget
    return false)
  if isClosing then
    addSolvedSuggestion tactic
  let mut htmls := #[← exprToHtml replacement]
  for goal in extraGoals do
    htmls := htmls.push
      <div> <strong className="goal-vdash">⊢ </strong> {← exprToHtml goal} </div>
  let filtered ←
    if isRefl || unhelpfulMVars then
      pure none
    else
      some <$> mkSuggestion tactic (.element "div" #[] htmls) (isClosing := isClosing)
  htmls := htmls.push <div> {← lem.name.toHtml} </div>
  let unfiltered ← mkSuggestion tactic (.element "div" #[] htmls) (isClosing := isClosing)
  let pattern ← do
    let (_, _, e) ← forallMetaTelescopeReducing (← lem.name.getType)
    let mkApp2 _ lhs rhs := (← instantiateMVars e).cleanupAnnotations
      | throwError "Expected relation, not {indentExpr e}"
    exprToHtml <| if lem.symm then rhs else lhs
  return { filtered, unfiltered, key, pattern }

end Mathlib.Tactic.ClickSuggestions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GRewrite/Variantb4ccc6b4b05fa90a27596536f6caaab8c00aae435e823454ccd5f6716fbfc92b.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2205871552965d94a311c90f45918d890e662711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
