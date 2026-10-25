# delabDoElems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7be23419b5fafcb040115979c71eadbf971d5be6a4b7eefff95d0a1b0a010105",
  "kind": "def",
  "lexical_name": "delabDoElems",
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
  "slug": "delabdoelems--86cd20aec24f59d4a7a85fca",
  "source": {
    "blob": "3a43e15944e75cf221e11cb3e1100a21e4476b87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1481,
    "line": 1446,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86cd20aec24f59d4a7a85fca8b321f765b679540f592e52bc2a18a6b167f3af2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7be23419b5fafcb040115979c71eadbf971d5be6a4b7eefff95d0a1b0a010105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1446–1481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def delabDoElems : DelabM (List Syntax) := do
  let e ← getExpr
  if e.isAppOfArity ``Bind.bind 6 then
    -- Bind.bind.{u, v} : {m : Type u → Type v} → [self : Bind m] → {α β : Type u} → m α → (α → m β) → m β
    let α := e.getAppArgs[2]!
    let ma ← withAppFn $ withAppArg delab
    withAppArg do
      match (← getExpr) with
      | Expr.lam _ _ body _ =>
        withBindingBodyUnusedName fun n => do
          if body.hasLooseBVars then
            prependAndRec `(doElem|let $n:term ← $ma:term)
          else if α.isConstOf ``Unit || α.isConstOf ``PUnit then
            prependAndRec `(doElem|$ma:term)
          else
            prependAndRec `(doElem|let _ ← $ma:term)
      | _ => failure
  else if e.isLet then
    let Expr.letE n t v b nondep ← getExpr | unreachable!
    let n ← getUnusedName n b
    let stxT ← descend t 0 delab
    let stxV ← descend v 1 delab
    withLetDecl n t v (nondep := nondep) fun fvar =>
      let b := b.instantiate1 fvar
      descend b 2 $
        if nondep then
          prependAndRec `(doElem|have $(mkIdent n) : $stxT := $stxV)
        else
          prependAndRec `(doElem|let $(mkIdent n) : $stxT := $stxV)
  else
    let stx ← delab
    return [← `(doElem|$stx:term)]
  where
    prependAndRec x : DelabM _ := List.cons <$> x <*> delabDoElems

@[builtin_delab app.Bind.bind]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variant652cebf48737d1c828275f276abe730d620ccd9bd53c718d0eaf861acc8df79d.lean#L1446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a43e15944e75cf221e11cb3e1100a21e4476b87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
