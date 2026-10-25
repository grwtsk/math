# mkSimpCongrTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffcf99bf14fd319beda444cbf3db44329db277eab10e9a54c76889f8a4d85cc1",
  "kind": "def",
  "lexical_name": "mkSimpCongrTheorem",
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
  "slug": "mksimpcongrtheorem--9d00f3fc26038ed3a8a5f0dc",
  "source": {
    "blob": "6309d1b9fe36c55f8e1e9a3becfeed9a946e1895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCongrTheorems/Variantf8b57d2926b04cbd7e67d29daff8a15209467a91d9365ee9169b8bf9edafd788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d00f3fc26038ed3a8a5f0dc8bba6189fc22fde76a94f94d51e7e439754c9aa2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCongrTheorems/Variantf8b57d2926b04cbd7e67d29daff8a15209467a91d9365ee9169b8bf9edafd788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffcf99bf14fd319beda444cbf3db44329db277eab10e9a54c76889f8a4d85cc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSimpCongrTheorem (declName : Name) (prio : Nat) : MetaM SimpCongrTheorem := withReducible do
  let c ← mkConstWithLevelParams declName
  let (xs, bis, type) ← forallMetaTelescopeReducing (← inferType c)
  match type.eqOrIff? with
  | none => throwError "Invalid `congr` theorem: Theorem is not an equality or iff{indentExpr type}"
  | some (lhs, rhs) =>
    lhs.withApp fun lhsFn lhsArgs => rhs.withApp fun rhsFn rhsArgs => do
      unless lhsFn.isConst && rhsFn.isConst && lhsFn.constName! == rhsFn.constName! && lhsArgs.size == rhsArgs.size do
        throwError "Invalid `congr` theorem: The left- and right-hand sides of the equality are not applications of the same function{indentExpr type}"
      let mut foundMVars : MVarIdSet := {}
      for lhsArg in lhsArgs do
        for mvarId in (lhsArg.collectMVars {}).result do
          foundMVars := foundMVars.insert mvarId
      let mut i : Nat := 0
      let mut hypothesesPos := #[]
      for x in xs, bi in bis do
        if bi.isExplicit && !foundMVars.contains x.mvarId! then
          let rhsFn? ← forallTelescopeReducing (← inferType x) fun ys xType => do
            match xType.eqOrIff? with
            | none => pure none -- skip
            | some (xLhs, xRhs) =>
              let mut j : Nat := 0
              for y in ys do
                let yType ← inferType y
                unless onlyMVarsAt yType foundMVars do
                  throwError "Invalid `congr` theorem: Argument #{j+1} of parameter #{i+1} contains unresolved parameter{indentExpr yType}"
                j := j + 1
              unless onlyMVarsAt xLhs foundMVars do
                throwError "Invalid `congr` theorem: Parameter #{i+1} is not a valid hypothesis because its left-hand side contains unresolved parameters{indentExpr xLhs}"
              let xRhsFn := xRhs.getAppFn
              unless xRhsFn.isMVar do
                throwError "Invalid `congr` theorem: Parameter #{i+1} is not a valid hypothesis because its right-hand side head is not a metavariable{indentExpr xRhs}"
              unless !foundMVars.contains xRhsFn.mvarId! do
                throwError "Invalid `congr` theorem: Parameter #{i+1} is not a valid hypothesis because its right-hand side head was already resolved{indentExpr xRhs}"
              for arg in xRhs.getAppArgs do
                unless arg.isFVar do
                  throwError "Invalid `congr` theorem: Parameter #{i+1} is not a valid hypothesis because its right-hand side argument is not a local variable{indentExpr xRhs}"
              pure (some xRhsFn)
          match rhsFn? with
          | none       => pure ()
          | some rhsFn =>
            foundMVars    := foundMVars.insert x.mvarId! |>.insert rhsFn.mvarId!
            hypothesesPos := hypothesesPos.push i
        i := i + 1
      return {
        theoremName   := declName
        funName       := lhsFn.constName!
        hypothesesPos := hypothesesPos
        priority      := prio
      }
where
  /-- Return `true` if `t` contains a metavariable that is not in `mvarSet` -/
  onlyMVarsAt (t : Expr) (mvarSet : MVarIdSet) : Bool :=
    Option.isNone <| t.find? fun e => e.isMVar && !mvarSet.contains e.mvarId!

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCongrTheorems/Variantf8b57d2926b04cbd7e67d29daff8a15209467a91d9365ee9169b8bf9edafd788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpCongrTheorems/Variantf8b57d2926b04cbd7e67d29daff8a15209467a91d9365ee9169b8bf9edafd788.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6309d1b9fe36c55f8e1e9a3becfeed9a946e1895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
