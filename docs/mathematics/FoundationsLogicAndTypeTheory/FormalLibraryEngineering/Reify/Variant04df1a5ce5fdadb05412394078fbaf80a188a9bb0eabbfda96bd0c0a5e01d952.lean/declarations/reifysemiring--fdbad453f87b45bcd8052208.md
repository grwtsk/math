# reifySemiring?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69b84c114104dcb407b4b19ef19780e0297eb83554506e7bfcd59be92836937a",
  "kind": "def",
  "lexical_name": "reifySemiring?",
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
  "slug": "reifysemiring--fdbad453f87b45bcd8052208",
  "source": {
    "blob": "e061e250e7cf6ad17a22a2c9de47c2ec47d3c693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variant04df1a5ce5fdadb05412394078fbaf80a188a9bb0eabbfda96bd0c0a5e01d952.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdbad453f87b45bcd8052208764b7faa0ddecce5a7641df4e48b35e66b7b0f44",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variant04df1a5ce5fdadb05412394078fbaf80a188a9bb0eabbfda96bd0c0a5e01d952.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69b84c114104dcb407b4b19ef19780e0297eb83554506e7bfcd59be92836937a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def reifySemiring? (e : Expr) : m (Option SemiringExpr) := do
  let toVar (e : Expr) : m SemiringExpr := do
    return .var (← mkVar e)
  let asVar (e : Expr) : m SemiringExpr := do
    reportSemiringAppIssue e
    return .var (← mkVar e)
  let rec go (e : Expr) : m SemiringExpr := do
    match_expr e with
    | HAdd.hAdd _ _ _ i a b =>
      if isSameExpr (← getAddFn').appArg! i then return .add (← go a) (← go b) else asVar e
    | HMul.hMul _ _ _ i a b =>
      if isSameExpr (← getMulFn').appArg! i then return .mul (← go a) (← go b) else asVar e
    | HPow.hPow _ _ _ i a b =>
      let some k := Sym.getNatValue? b |>.run | toVar e
      if isSameExpr (← getPowFn').appArg! i then return .pow (← go a) k else asVar e
    | NatCast.natCast _ i a =>
      if isSameExpr (← getNatCastFn').appArg! i then
        let some k := Sym.getNatValue? a |>.run | toVar e
        return .num k
      else
        asVar e
    | OfNat.ofNat _ n _ =>
      let .lit (.natVal k) := n | toVar e
      return .num k
    | _ => toVar e
  let toTopVar (e : Expr) : m (Option SemiringExpr) := do
    return some (← toVar e)
  let asTopVar (e : Expr) : m (Option SemiringExpr) := do
    reportSemiringAppIssue e
    toTopVar e
  match_expr e with
  | HAdd.hAdd _ _ _ i a b =>
    if isSameExpr (← getAddFn').appArg! i then return some (.add (← go a) (← go b)) else asTopVar e
  | HMul.hMul _ _ _ i a b =>
    if isSameExpr (← getMulFn').appArg! i then return some (.mul (← go a) (← go b)) else asTopVar e
  | HPow.hPow _ _ _ i a b =>
    let some k := Sym.getNatValue? b |>.run | return none
    if isSameExpr (← getPowFn').appArg! i then return some (.pow (← go a) k) else asTopVar e
  | NatCast.natCast _ i a =>
    if isSameExpr (← getNatCastFn').appArg! i then
      let some k := Sym.getNatValue? a |>.run | toTopVar e
      return some (.num k)
    else
      asTopVar e
  | OfNat.ofNat _ n _ =>
    let .lit (.natVal k) := n | asTopVar e
    return some (.num k)
  | _ => toTopVar e

end SemiringReify

end Lean.Meta.Sym.Arith
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variant04df1a5ce5fdadb05412394078fbaf80a188a9bb0eabbfda96bd0c0a5e01d952.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reify/Variant04df1a5ce5fdadb05412394078fbaf80a188a9bb0eabbfda96bd0c0a5e01d952.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e061e250e7cf6ad17a22a2c9de47c2ec47d3c693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
