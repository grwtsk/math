# processTermParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3911832b8cd16513cce0cd12ff36bf7e3bc921d984172863612ba3c5784ee0ef",
  "kind": "def",
  "lexical_name": "processTermParam",
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
  "slug": "processtermparam--1e894b914a9251a76913256e",
  "source": {
    "blob": "4618670a37414c3eb7ee989af27ea86acd16030d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e894b914a9251a76913256e867f79a87d762bf505b44eee28d85df1be9137b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3911832b8cd16513cce0cd12ff36bf7e3bc921d984172863612ba3c5784ee0ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def processTermParam (params : Grind.Params)
    (p : TSyntax `Lean.Parser.Tactic.grindParam)
    (mod? : Option (TSyntax `Lean.Parser.Attr.grindMod))
    (term : Term)
    (minIndexable : Bool)
    : TermElabM Grind.Params := withRef p do
  checkNoRevert params
  let kind ← if let some mod := mod? then Grind.getAttrKindCore mod else pure .infer
  let kind ← match kind with
    | .ematch .user | .cases _ | .intro | .inj | .ext | .symbol _ | .funCC | .norm .. | .unfold =>
      throwError "invalid `grind` parameter, only global declarations are allowed with this kind of modifier"
    | .ematch kind => pure kind
    | .infer => pure <| .default false
  let thm? ← Term.withoutModifyingElabMetaStateWithInfo <| withRef p do
    let e ← Term.elabTerm term .none
    Term.synthesizeSyntheticMVars (postpone := .no) (ignoreStuckTC := true)
    let e ← instantiateMVars e
    if e.hasSyntheticSorry then
      return .none
    let e := e.eta
    if e.hasMVar then
      let r ← abstractMVars e
      return some (r.paramNames, r.expr)
    else
      return some (#[], e)
  let some (levelParams, proof) := thm? | return params
  let type ← inferType proof
  unless (← isProp type) do
    throwError "invalid `grind` parameter, proof term expected"
  if type.isForall then
    let mkThm (kind : Grind.EMatchTheoremKind) (idx : Nat) : MetaM Grind.EMatchTheorem := do
      let id := ((`extra).appendIndexAfter idx)
      let some thm ← Grind.mkEMatchTheoremWithKind? (.stx id p) levelParams proof kind params.symPrios (minIndexable := minIndexable)
        | throwError "invalid `grind` parameter, failed to infer patterns"
      return thm
    let idx := params.extra.size
    match kind with
    | .eqBoth gen =>
      ensureNoMinIndexable minIndexable
      return { params with extra := params.extra.push (← mkThm (.eqLhs gen) idx) |>.push (← mkThm (.eqRhs gen) idx) }
    | _ =>
      if kind matches .eqLhs _ | .eqRhs _ then
        ensureNoMinIndexable minIndexable
      return { params with extra := params.extra.push (← mkThm kind idx) }
  else
    unless mod?.isNone do
      throwError "invalid `grind` parameter, modifier is redundant since the parameter type is not a `forall`{indentExpr type}"
    unless levelParams.isEmpty do
      throwError "invalid `grind` parameter, parameter type is not a `forall` and is universe polymorphic{indentExpr type}"
    return { params with extraFacts := params.extraFacts.push proof }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4618670a37414c3eb7ee989af27ea86acd16030d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
