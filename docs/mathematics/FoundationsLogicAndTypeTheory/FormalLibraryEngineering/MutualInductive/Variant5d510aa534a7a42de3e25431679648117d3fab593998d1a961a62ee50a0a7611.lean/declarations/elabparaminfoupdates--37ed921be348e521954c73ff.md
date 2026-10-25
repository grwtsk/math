# elabParamInfoUpdates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3c5753d0976a338f17bcc27ad80e398a85bdc6d693d3dca4396a0b4a99ee8b5",
  "kind": "def",
  "lexical_name": "elabParamInfoUpdates",
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
  "slug": "elabparaminfoupdates--37ed921be348e521954c73ff",
  "source": {
    "blob": "2f896ef31359aad0ee273d30032f02e843781076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 450,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37ed921be348e521954c73ff2ac8038aa4f3d3215dadb744241635c725f3fcfa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3c5753d0976a338f17bcc27ad80e398a85bdc6d693d3dca4396a0b4a99ee8b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 450–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabParamInfoUpdates
    [Monad m] [MonadError m] [MonadLCtx m] [MonadLiftT TermElabM m]
    (params : Array Expr) (binders : Array Syntax)
    (maybeParam : FVarId → m Bool) :
    m (Array Syntax × ExprMap (Syntax × BinderInfo)) := do
  let mut overrides : ExprMap (Syntax × BinderInfo) := {}
  for i in *...binders.size do
    match typelessBinder? binders[i]! with
    | none => return (binders.extract i, overrides)
    | some (ids, bi) =>
      let lctx ← getLCtx
      let decls := ids.filterMap fun id => lctx.findFromUserName? id.getId
      let decls ← decls.filterM fun decl => maybeParam decl.fvarId
      if decls.size != ids.size then
        -- Then either these are for a new variables or the binder isn't only for parameters
        return (binders.extract i, overrides)
      for decl in decls, id in ids do
        Term.addTermInfo' id decl.toExpr
        unless params.contains decl.toExpr do
          throwErrorAt id m!"Only parameters appearing in the declaration header may have their binders kinds be overridden"
            ++ .hint' "If this is not intended to be an override, use a binder with a type: for example, `(x : _)`"
        overrides := overrides.insert decl.toExpr (id, bi)
  return (#[], overrides)

section IndexPromotion
/-!
## Index-to-parameter promotion

The basic convention for `inductive` is that the binders before the colon in a type former
correspond to the type parameters, and the pi types after the colon correspond to the indices.

Indices that are fixed across all occurrences of the type former can potentially be promoted
to be parameters instead. Motivations:
- The recursor is more efficient (though the induction principle might be more rigid than expected;
  this is solved by generalizing variables)
- The inferred universe level of the inductive type might decrease.

Recall that when an inductive type declaration `Declaration.inductDecl` is sent to the kernel,
every constructor is provided its full type, including the inductive parameters.
The `inductDecl` declaration itself specifies how many parameters there are (`nparams`),
and the first `nparams` parameters of a constructor are the parameters for the inductive type.

The function `fixedIndicesToParams` determines by how much `nparams` can be increased
without resulting in an invalid inductive type declaration.
We say the indices that become parameters this way are *promoted*.
Only a prefix of indices can be promoted because of this.

Note that it currently does not do any constructor parameter reordering.
If the parameter for an index does not appear in the correct position in a constructor for it to be
an inductive type parameter, it is not promoted.
That said, the `inductive` command itself has some capacity for reordering
in `Lean.Elab.Command.reorderCtorArgs`.

Promotion can be disabled with `set_option inductive.autoPromoteIndices false`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean#L450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f896ef31359aad0ee273d30032f02e843781076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
