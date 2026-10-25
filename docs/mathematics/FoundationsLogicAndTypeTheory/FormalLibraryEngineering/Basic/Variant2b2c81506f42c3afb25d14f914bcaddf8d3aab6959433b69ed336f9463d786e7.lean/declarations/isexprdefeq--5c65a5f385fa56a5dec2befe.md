# isExprDefEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e3635e1c5e72721da425857ad0b6aa840f9b946e6e5c4ca33cec19e132ced9a",
  "kind": "def",
  "lexical_name": "isExprDefEq",
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
  "slug": "isexprdefeq--5c65a5f385fa56a5dec2befe",
  "source": {
    "blob": "20e3e5ee85818ad6002ce0762167e0d6b4cf7186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2517,
    "line": 2482,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c65a5f385fa56a5dec2befe761f954d8552b8d5aadf606391b8da73d55e25c4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e3635e1c5e72721da425857ad0b6aa840f9b946e6e5c4ca33cec19e132ced9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2482–2517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def isExprDefEq (t s : Expr) : MetaM Bool :=
  withReader (fun ctx => { ctx with defEqCtx? := some { lhs := t, rhs := s, lctx := ctx.lctx, localInstances := ctx.localInstances } }) do
    /-
    The following `resetDefEqPermCaches` is a workaround. Without it the test suite fails, and we probably cannot compile complex libraries such as Mathlib.
    TODO: investigate why we need this reset.
    Some conjectures:
    - It is not enough to check whether `t` and `s` do not contain metavariables. We would need to check the type
      of all local variables `t` and `s` depend on. If the local variables contain metavariables, the result of `isDefEq` may change if these
      variables are instantiated.
    - Related to the previous one: the operation
      ```lean
      _root_.Lean.MVarId.replaceLocalDeclDefEq (mvarId : MVarId) (fvarId : FVarId) (typeNew : Expr)
      ```
      is probably being misused. We are probably using it to replace a `type` with `typeNew` where these two types
      are definitionally equal IFF we can assign the metavariables in `type`.

    Possible fix: always generate new `FVarId`s when update the type of local variables.
    Drawback: this operation can be quite expensive, and we must evaluate whether it is worth doing to remove the following `reset`.

    Remark: the kernel does *not* update the type of variables in the local context.
    -/
    resetDefEqPermCaches
    checkpointDefEq (mayPostpone := true) <| Meta.isExprDefEqAux t s

/--
  Determines whether two expressions are definitionally equal to each other.

  To control how metavariables are assigned and unified, metavariables and their context have a "depth".
  Given a metavariable `?m` and a `MetavarContext` `mctx`, `?m` is not assigned if `?m.depth != mctx.depth`.
  The combinator `withNewMCtxDepth x` will bump the depth while executing `x`.
  So, `withNewMCtxDepth (isDefEq a b)` is `isDefEq` without any mvar assignment happening
  whereas `isDefEq a b` will assign any metavariables of the current depth in `a` and `b` to unify them.

  For matching (where only mvars in `b` should be assigned), we create the term inside the `withNewMCtxDepth`.
  For an example, see [Lean.Meta.Simp.tryTheoremWithExtraArgs?](https://github.com/leanprover/lean4/blob/master/src/Lean/Meta/Tactic/Simp/Rewrite.lean#L100-L106)
 -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant2b2c81506f42c3afb25d14f914bcaddf8d3aab6959433b69ed336f9463d786e7.lean#L2482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20e3e5ee85818ad6002ce0762167e0d6b4cf7186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
