# winnowExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b85c6948112f3cc4c5cc564d9d15258f6939103a595ef44c0353d06ce7ef1aee",
  "kind": "def",
  "lexical_name": "winnowExpr",
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
  "slug": "winnowexpr--ad2ec8649de169d038b53a93",
  "source": {
    "blob": "b066885af07612d0abc58f0d8e139677ac422f41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad2ec8649de169d038b53a93526cd9ad5732e0eb6153dcd4de6d79d581c3d12c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b85c6948112f3cc4c5cc564d9d15258f6939103a595ef44c0353d06ce7ef1aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def winnowExpr (e : Expr) : MetaM Expr := do
  let rec visit (e : Expr) : MonadCacheT Expr Expr MetaM Expr := checkCache e fun _ => do
    if ← isProof e then
      return .bvar 0
    match e with
    | .app .. =>
      if let some e' ← getParentProjArg e then
        return (← visit e')
      e.withApp fun f args => do
        -- Visit only the explicit arguments to `f` and also its type (and type family) arguments.
        -- The reason we visit type arguments is so that, for example, `Decidable (_ < _)` has
        -- a chance to insert type information. Type families are for reporting things such as type constructors and monads.
        let mut fty ← inferType f
        let mut j := 0
        let mut e' ← visit f
        for h : i in *...args.size do
          unless fty.isForall do
            fty ← withTransparency .all <| whnf <| fty.instantiateRevRange j i args
            j := i
          let .forallE _ _ fty' bi := fty | failure
          fty := fty'
          let arg := args[i]
          if ← pure bi.isExplicit <||> (pure !arg.isSort <&&> isTypeFormer arg) then
            unless (← isProof arg) do
              e' := .app e' (← visit arg)
        return e'
    | .forallE n ty body bi =>
      withLocalDecl n bi ty fun arg => do
        -- In a dependent forall the body implies `ty`, so we won't mention it.
        let ty' ← if body.hasLooseBVars then pure (.bvar 0) else visit ty
        return .forallE n ty' (← visit (body.instantiate1 arg)) bi
    | .lam n ty body bi =>
      if let some e := Expr.etaExpandedStrict? e then
        visit e
      else
        withLocalDecl n bi ty fun arg => do
          -- Don't record the `.lam` since `ty` should be recorded elsewhere in the expression.
          visit (body.instantiate1 arg)
    | .letE _n _t v b _ => visit (b.instantiate1 v)
    | .sort .. =>
      if e.isProp then return .sort Level.zero
      else if e.isType then return .sort Level.one
      else return .sort (.param `u)
    | .const name .. => return .const name []
    | .mdata _ e' => visit e'
    | _ => return .bvar 0
  visit e |>.run

/--
State for name generation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNameGen/Variant5a18ca6c1898893b8c2ca13b0ac68e73126ee8fc1deaad640195fe014c0bdb7f.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b066885af07612d0abc58f0d8e139677ac422f41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
