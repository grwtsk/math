# elementwiseExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c0a8b062d744da3992b7d61869d2b1e60849a6f8052f2a2dbefb278cb187f50",
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
  "slug": "elementwiseexpr--0eba912e2c7c96fd059bb009",
  "source": {
    "blob": "c09c34def31b2af59f4cc8b86c583e98bec9583b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 79,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0eba912e2c7c96fd059bb0099e893b81e3c2d0c3a910c6c8585a11874258176d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c0a8b062d744da3992b7d61869d2b1e60849a6f8052f2a2dbefb278cb187f50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elementwiseExpr (src : Name) (type pf : Expr) (simpSides := true) :
    MetaM (Expr × Option Level) := do
  let type := (← instantiateMVars type).cleanupAnnotations
  forallTelescope type fun fvars type' => do
    mkHomElementwise type' (mkAppN pf fvars) fun eqPf instConcr? => do
      -- First simplify using elementwise-specific lemmas
      let mut eqPf' ← simpType (simpOnlyNames elementwiseThms (config := { decide := false })) eqPf
      if (← inferType eqPf') == .const ``True [] then
        throwError "elementwise lemma for {src} is trivial after applying ConcreteCategory {""
          }lemmas, which can be caused by how applications are unfolded. {""
          }Using elementwise is unnecessary."
      if simpSides then
        let ctx := { ← Simp.Context.mkDefault with config.decide := false }
        let (ty', eqPf'') ← simpEq (fun e => return (← simp e ctx).1) (← inferType eqPf') eqPf'
        -- check that it's not a simp-trivial equality:
        forallTelescope ty' fun _ ty' => do
          if let some (_, lhs, rhs) := ty'.eq? then
            if ← Std.Tactic.Lint.isSimpEq lhs rhs then
              throwError "applying simp to both sides reduces elementwise lemma for {src} {""
                }to the trivial equality {ty'}. {""
                }Either add `nosimp` or remove the `elementwise` attribute."
        eqPf' ← mkExpectedTypeHint eqPf'' ty'
      if let some (w, instConcr) := instConcr? then
        return (← Meta.mkLambdaFVars (fvars.push instConcr) eqPf', w)
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
  mkHomElementwise {α} (eqTy eqPf : Expr) (k : Expr → Option (Level × Expr) → MetaM α) :
      MetaM α := do
    let (C, instC) ← try extractCatInstance eqTy catch _ =>
      throwError "elementwise expects equality of morphisms in a category"
    -- First try being optimistic that there is already a ConcreteCategory instance.
    if let some eqPf' ← observing? (mkAppM ``hom_elementwise #[eqPf]) then
      k eqPf' none
    else
      -- That failed, so we need to introduce the instance, which takes creating
      -- a fresh universe level for `ConcreteCategory`'s forgetful functor.
      let .app (.const ``Category [v, u]) _ ← inferType instC
        | throwError "internal error in elementwise"
      let w ← mkFreshLevelMVar
      let cty : Expr := mkApp2 (.const ``ConcreteCategory [w, v, u]) C instC
      withLocalDecl `inst .instImplicit cty fun cfvar => do
        let eqPf' ← mkAppM ``hom_elementwise #[eqPf]
        k eqPf' (some (w, cfvar))

/-- Gives a name based on `baseName` that's not already in the list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant8ddf0a97d7e3a159f0f7b4995c6b9f31e72b601066fcb4506d0ee3faed4f349e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09c34def31b2af59f4cc8b86c583e98bec9583b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
