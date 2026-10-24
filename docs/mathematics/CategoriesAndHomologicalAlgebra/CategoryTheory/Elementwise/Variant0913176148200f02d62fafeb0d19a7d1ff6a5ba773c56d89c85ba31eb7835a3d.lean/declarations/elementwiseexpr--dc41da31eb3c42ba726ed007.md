# elementwiseExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47c5484181994fdc62936fd4675503ce680a851d3515a7f7c535c086455bc411",
  "kind": "def",
  "lexical_name": "elementwiseExpr",
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
  "slug": "elementwiseexpr--dc41da31eb3c42ba726ed007",
  "source": {
    "blob": "15b0d5b0563b95b0bca734c7ad05a445b68d0048",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc41da31eb3c42ba726ed0075ba91582f90b5a3525dbcddb75e4abee8fb1e3ad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47c5484181994fdc62936fd4675503ce680a851d3515a7f7c535c086455bc411`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elementwiseExpr (src : Name) (type pf : Expr) (simpSides := true) :
    MetaM (Expr × Option (Level × Level)) := do
  let type := (← instantiateMVars type).cleanupAnnotations
  forallTelescope type fun fvars type' => do
    mkHomElementwise type' (← mkExpectedTypeHint (mkAppN pf fvars) type') fun eqPf instConcr? => do
      -- First simplify using elementwise-specific lemmas
      let mut eqPf' ← simpType (simpOnlyNames elementwiseThms (config := { decide := false })) eqPf
      if (← inferType eqPf') == .const ``True [] then
        throwError "elementwise lemma for {src} is trivial after applying HasForget \
          lemmas, which can be caused by how applications are unfolded. \
          Using elementwise is unnecessary."
      if simpSides then
        let ctx ← Simp.Context.mkDefault
        let (ty', eqPf'') ← simpEq (fun e => return (← simp e ctx).1) (← inferType eqPf') eqPf'
        -- check that it's not a simp-trivial equality:
        forallTelescope ty' fun _ ty' => do
          if let some (_, lhs, rhs) := ty'.eq? then
            if ← Batteries.Tactic.Lint.isSimpEq lhs rhs then
              throwError "applying simp to both sides reduces elementwise lemma for {src} \
                to the trivial equality {ty'}. \
                Either add `nosimp` or remove the `elementwise` attribute."
        eqPf' ← mkExpectedTypeHint eqPf'' ty'
      if let some (w, uF, insts) := instConcr? then
        return (← Meta.mkLambdaFVars (fvars.append insts) eqPf', (w, uF))
      else
        return (← Meta.mkLambdaFVars fvars eqPf', none)
where
  /-- Given an equality, extract a `Category` instance from it or raise an error.
  Returns the name of the category and its instance. -/
  extractCatInstance (eqTy : Expr) : MetaM (Expr × Expr) := do
    let some (α, _, _) := eqTy.cleanupAnnotations.eq? | failure
    let (``Quiver.Hom, #[_, instQuiv, _, _]) := α.getAppFnArgs | failure
    let (``CategoryTheory.CategoryStruct.toQuiver, #[_, instCS]) := instQuiv.getAppFnArgs | failure
    let (``CategoryTheory.Category.toCategoryStruct, #[C, instC]) := instCS.getAppFnArgs | failure
    return (C, instC)
  mkHomElementwise {α} [Inhabited α] (eqTy eqPf : Expr)
      (k : Expr → Option (Level × Level × Array Expr) → MetaM α) :
      MetaM α := do
    let (C, instC) ← try extractCatInstance eqTy catch _ =>
      throwError "elementwise expects equality of morphisms in a category"
    -- First try being optimistic that there is already a HasForget instance.
    if let some eqPf' ← observing? (mkAppM ``hom_elementwise #[eqPf]) then
      k eqPf' none
    else
      -- That failed, so we need to introduce the instance, which takes creating
      -- a fresh universe level for `ConcreteCategory`'s forgetful functor.
      let .app (.const ``Category [v, u]) _ ← inferType instC
        | throwError "internal error in elementwise: {← inferType instC}"
      let w ← mkFreshLevelMVar
      let uF ← mkFreshLevelMVar
      -- Give a type to the `FunLike` instance on `F`
      let fty (F carrier : Expr) : Expr :=
        -- I *think* this is right, but it certainly doesn't feel like I'm doing it right.
        .forallE `X C (.forallE `Y C (mkApp3
          (.const ``FunLike [.succ uF, .succ w, .succ w])
          (mkApp2 F (.bvar 1) (.bvar 0))
          (mkApp carrier (.bvar 1)) (mkApp carrier (.bvar 0))) default) default
      -- Give a type to the `ConcreteCategory` instance on `C`
      let cty (F carrier instFunLike : Expr) : Expr :=
        mkApp5 (.const ``ConcreteCategory [w, v, u, uF]) C instC F carrier instFunLike
      withLocalDecls
        #[(`F, .implicit, fun _ => pure <| .forallE `X C (.forallE `Y C
            (.sort (.succ uF)) default) default),
          (`carrier, .implicit, fun _ => pure <| .forallE `X C (.sort (.succ w)) default),
          (`instFunLike, .implicit, fun decls => pure <| fty decls[0]! decls[1]!),
          (`inst, .instImplicit, fun decls => pure <| cty decls[0]! decls[1]! decls[2]!)]
        fun cfvars => do
          let eqPf' ← mkAppM ``hom_elementwise #[eqPf]
          k eqPf' (some (w, uF, cfvars))

/-- Gives a name based on `baseName` that's not already in the list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant0913176148200f02d62fafeb0d19a7d1ff6a5ba773c56d89c85ba31eb7835a3d.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15b0d5b0563b95b0bca734c7ad05a445b68d0048` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
