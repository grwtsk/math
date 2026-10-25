# removeUnusedArguments?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82c647f623f257ec7ce5bbabd20c60bae923a669134fad1a1fac7ce90fd05e9e",
  "kind": "def",
  "lexical_name": "removeUnusedArguments?",
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
  "slug": "removeunusedarguments--5dde14cfb46c77694900b41a",
  "source": {
    "blob": "450d8edb60c648a3145eb1d9c2a410f4644debe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 512,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dde14cfb46c77694900b41a05ca0719c3db877c5bffef06f3f3c33554e8fb8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82c647f623f257ec7ce5bbabd20c60bae923a669134fad1a1fac7ce90fd05e9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def removeUnusedArguments? (mctx : MetavarContext) (mvar : Expr) : MetaM (Option (Expr × Expr)) :=
  withMCtx mctx do
    let mvarType ← instantiateMVars (← inferType mvar)
    if !hasUnusedArguments mvarType then
      return none
    else
      forallTelescope mvarType fun xs body => do
        let ys ← xs.foldrM (init := []) fun x ys => do
          if body.containsFVar x.fvarId! then
            return x :: ys
          else if (← ys.anyM fun y => return (← inferType y).containsFVar x.fvarId!) then
            return x :: ys
          else
            return ys
        let ys := ys.toArray
        let mvarType' ← mkForallFVars ys body
        withLocalDeclD `redf mvarType' fun f => do
          let transformer ← mkLambdaFVars #[f] (← mkLambdaFVars xs (mkAppN f ys) (etaReduce := true)) (etaReduce := true)
          trace[Meta.synthInstance.unusedArgs] "{mvarType}\nhas unused arguments, reduced type{indentExpr mvarType'}\nTransformer{indentExpr transformer}"
          return some (mvarType', transformer)

/-- Process the next subgoal in the given consumer node. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant1c4adf406c64523531b2af18073c2973cef5fe4eb80ac44bb9927d336559d004.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450d8edb60c648a3145eb1d9c2a410f4644debe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
