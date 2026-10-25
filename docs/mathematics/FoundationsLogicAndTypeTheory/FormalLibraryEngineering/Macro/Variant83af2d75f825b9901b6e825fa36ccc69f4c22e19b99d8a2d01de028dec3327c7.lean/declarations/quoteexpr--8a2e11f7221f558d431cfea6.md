# quoteExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2c69412e0394565baf9ea7bdc7f46210fea606b595299242382b983ef9d1015",
  "kind": "def",
  "lexical_name": "quoteExpr",
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
  "slug": "quoteexpr--8a2e11f7221f558d431cfea6",
  "source": {
    "blob": "80dd26726f6355f44af9535c64e12a255ff5f39e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 389,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a2e11f7221f558d431cfea67100efd0709aa3e19a38b1cd959627190c18f18c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2c69412e0394565baf9ea7bdc7f46210fea606b595299242382b983ef9d1015`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta partial def quoteExpr : Expr → QuoteM Expr
  | .bvar i => return mkApp (.const ``Expr.bvar []) (toExpr i)
  | e@(.fvar ..) => do
    let some r := (← read).exprBackSubst[e]? | throwError "unknown free variable {e}"
    match r with
    | .quoted r => return r
    | .unquoted r => quoteExpr r
  | e@(.mvar ..) => do
    if let some (.quoted r) := (← read).exprBackSubst[e]? then return r
    throwError "resulting term contains metavariable {e}"
  | .sort u => return mkApp (.const ``Expr.sort []) (← quoteLevel u)
  | .const n ls => return mkApp2 (.const ``Expr.const []) (toExpr n) (← quoteLevelList ls)
  | e@(.app _ _) => do
    let fn ← quoteExpr e.getAppFn
    let args ← e.getAppArgs.mapM quoteExpr
    if e.getAppFn.isFVar then -- TODO make configurable
      return mkApp2 (.const ``betaRev' []) fn $
        args.foldl (flip $ mkApp3 (.const ``List.cons [.zero]) (.const ``Expr []))
          (mkApp (.const ``List.nil [.zero]) (.const ``Expr []))
    else
      pure $ args.foldl (mkApp2 (.const ``Expr.app [])) fn
  | .lam n t b d => do
    return mkApp4 (.const ``Expr.lam []) (toExpr n.eraseMacroScopes)
      (← quoteExpr t) (← quoteExpr b) (toExpr d)
  | .forallE n t b d => do
    return mkApp4 (.const ``Expr.forallE []) (toExpr $ if b.hasLooseBVar 0 then n.eraseMacroScopes else Name.anonymous)
      (← quoteExpr t) (← quoteExpr b) (toExpr d)
  | .letE n t v b d => do
    return mkApp5 (.const ``Expr.letE []) (toExpr n.eraseMacroScopes) (← quoteExpr t) (← quoteExpr v) (← quoteExpr b) (toExpr d)
  | .lit l => return mkApp (.const ``Expr.lit []) (toExpr l)
  | .proj n i e => return mkApp3 (.const ``Expr.proj []) (toExpr n) (toExpr i) (← quoteExpr e)
  | .mdata _ e => quoteExpr e

/--
Translates an arbitrary local context to a context of
Q-annotated expressions. Used by `by_elabq` and `run_tacq`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80dd26726f6355f44af9535c64e12a255ff5f39e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
