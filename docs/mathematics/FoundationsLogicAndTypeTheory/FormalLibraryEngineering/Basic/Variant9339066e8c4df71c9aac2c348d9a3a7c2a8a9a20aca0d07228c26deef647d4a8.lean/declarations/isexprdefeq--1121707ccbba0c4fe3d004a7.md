# isExprDefEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64eb88d8a66eea9e0d1aea150ace3c3954d0c6dc0dca787728d3c334ab4c4e6a",
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
  "slug": "isexprdefeq--1121707ccbba0c4fe3d004a7",
  "source": {
    "blob": "b9743855e4f667c6fad1cee0803ee003e513baef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2509,
    "line": 2474,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1121707ccbba0c4fe3d004a7c86179037dcfe3ec7b4f57eb315b785fd2cf6a22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64eb88d8a66eea9e0d1aea150ace3c3954d0c6dc0dca787728d3c334ab4c4e6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2474–2509.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean#L2474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9743855e4f667c6fad1cee0803ee003e513baef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
