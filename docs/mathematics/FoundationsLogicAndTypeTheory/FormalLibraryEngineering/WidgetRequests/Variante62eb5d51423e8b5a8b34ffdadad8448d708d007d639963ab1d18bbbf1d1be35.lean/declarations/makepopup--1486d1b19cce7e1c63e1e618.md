# makePopup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23ef7b48999918ffafed17147ada5470439c4dd2fcadf1fef5999685aeb7b8e5",
  "kind": "def",
  "lexical_name": "makePopup",
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
  "slug": "makepopup--1486d1b19cce7e1c63e1e618",
  "source": {
    "blob": "ef080d6400a767136062b5f43ae0047c60397a7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1486d1b19cce7e1c63e1e6181397567c9200a8e104452957d1a86454905858f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23ef7b48999918ffafed17147ada5470439c4dd2fcadf1fef5999685aeb7b8e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def makePopup : WithRpcRef InfoWithCtx → RequestM (RequestTask InfoPopup)
  | i => RequestM.pureTask do
    let i := i.val
    i.ctx.runMetaM i.info.lctx do
      let type? ← match (← i.info.type?) with
        | some type => some <$> ppExprTagged type
        | none => pure none
      let exprExplicit? ← match i.info with
        | Elab.Info.ofTermInfo ti =>
          some <$> ppExprForPopup ti.expr (explicit := true)
        | Elab.Info.ofDelabTermInfo { toTermInfo := ti, explicit, ..} =>
          some <$> ppExprForPopup ti.expr (explicit := explicit)
        | Elab.Info.ofFieldInfo fi => pure <| some <| TaggedText.text fi.fieldName.toString
        | _ => pure none
      return {
        type := type?
        exprExplicit := exprExplicit?
        doc := ← i.info.docString? : InfoPopup
      }
where
  maybeWithoutTopLevelHighlight : Bool → CodeWithInfos → CodeWithInfos
    | true, .tag _ tt => tt
    | _,    tt        => tt
  ppExprForPopup (e : Expr) (explicit : Bool) : MetaM CodeWithInfos := do
    -- When hovering over a metavariable, we want to see its value, even if `pp.instantiateMVars` is false.
    if explicit then
      if let .mvar mvarId := e then
        if let some e' ← getExprMVarAssignment? mvarId then
          return ← ppExprForPopupAux e' false
    ppExprForPopupAux e explicit
  ppExprForPopupAux (e : Expr) (explicit : Bool) : MetaM CodeWithInfos := do
    -- When `explicit` is false, keep the top-level tag so that users can also see the explicit version of the term on an additional hover.
    maybeWithoutTopLevelHighlight explicit <$> ppExprTagged e do
      if explicit then
        withOptionAtCurrPos pp.tagAppFns.name true do
        withOptionAtCurrPos pp.explicit.name true do
        withOptionAtCurrPos pp.mvars.anonymous.name true do
          delabApp
      else
        withOptionAtCurrPos pp.proofs.name true do
        withOptionAtCurrPos pp.sorrySource.name true do
          delab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WidgetRequests/Variante62eb5d51423e8b5a8b34ffdadad8448d708d007d639963ab1d18bbbf1d1be35.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef080d6400a767136062b5f43ae0047c60397a7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
