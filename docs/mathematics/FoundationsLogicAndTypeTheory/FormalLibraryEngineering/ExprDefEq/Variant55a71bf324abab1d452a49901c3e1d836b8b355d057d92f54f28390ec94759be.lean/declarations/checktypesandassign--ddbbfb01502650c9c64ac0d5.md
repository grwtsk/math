# checkTypesAndAssign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:496527cf5823750677983c89d3f292201463d7cfe902d04a2c5ebfd28b020402",
  "kind": "def",
  "lexical_name": "checkTypesAndAssign",
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
  "slug": "checktypesandassign--ddbbfb01502650c9c64ac0d5",
  "source": {
    "blob": "8bbd010584f31382615499820e7b562d16998fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 500,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddbbfb01502650c9c64ac0d511b8b7e85e1c7417652493833fb272e2b38a5ff7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:496527cf5823750677983c89d3f292201463d7cfe902d04a2c5ebfd28b020402`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def checkTypesAndAssign (mvar : Expr) (v : Expr) : MetaM Bool :=
  withTraceNodeBefore `Meta.isDefEq.assign.checkTypes (fun _ => return m!"({mvar} : {← inferType mvar}) := ({v} : {← inferType v})") do
    if !mvar.isMVar then
      trace[Meta.isDefEq.assign.checkTypes] "metavariable expected"
      return false
    else
      -- must check whether types are definitionally equal or not, before assigning and returning true
      let mvarType ← inferType mvar
      let vType ← inferType v
      if (← respectTransparencyAtTypes) then
        withImplicitConfig do
          if (← Meta.isExprDefEqAux mvarType vType) then
            mvar.mvarId!.assign v
            return true
          else
            if (← isDiagnosticsEnabled) then withInferTypeConfig do
              if (← Meta.isExprDefEqAux mvarType vType) then
                trace[diagnostics] "failure when assigning metavariable with type{indentExpr mvarType}\nwhich is not definitionally equal to{indentExpr vType}\nwhen using `.implicit` transparency, but it is with `.default`.\nWorkaround: `set_option backward.isDefEq.respectTransparency.types false`"
            return false
      else
        withInferTypeConfig do
          if (← Meta.isExprDefEqAux mvarType vType) then
            mvar.mvarId!.assign v
            return true
          else
            return false

/--
Auxiliary method for solving constraints of the form `?m xs := v`.
It creates a lambda using `mkLambdaFVars ys v`, where `ys` is a superset of `xs`.
`ys` is often equal to `xs`. It is a bigger when there are let-declaration dependencies in `xs`.
For example, suppose we have `xs` of the form `#[a, c]` where
```
a : Nat
b : Nat := f a
c : b = a
```
In this scenario, the type of `?m` is `(x1 : Nat) -> (x2 : f x1 = x1) -> C[x1, x2]`,
and type of `v` is `C[a, c]`. Note that, `?m a c` is type correct since `f a = a` is definitionally equal
to the type of `c : b = a`, and the type of `?m a c` is equal to the type of `v`.
Note that `fun xs => v` is the term `fun (x1 : Nat) (x2 : b = x1) => v` which has type
`(x1 : Nat) -> (x2 : b = x1) -> C[x1, x2]` which is not definitionally equal to the type of `?m`,
and may not even be type correct.
The issue here is that we are not capturing the `let`-declarations.

This method collects let-declarations `y` occurring between `xs[0]` and `xs.back` s.t.
some `x` in `xs` depends on `y`.
`ys` is the `xs` with these extra let-declarations included.

In the example above, `ys` is `#[a, b, c]`, and `mkLambdaFVars ys v` produces
`fun a => let b := f a; fun (c : b = a) => v` which has a type definitionally equal to the type of `?m`.

Recall that the method `checkAssignment` ensures `v` does not contain offending `let`-declarations.

This method assumes that for any `xs[i]` and `xs[j]` where `i < j`, we have that `index of xs[i]` < `index of xs[j]`.
where the index is the position in the local context.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant55a71bf324abab1d452a49901c3e1d836b8b355d057d92f54f28390ec94759be.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bbd010584f31382615499820e7b562d16998fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
