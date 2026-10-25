# reduceTopAppliedPre?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b90ebfaae4cd704be9964d39a6cde29177a1b469a51aa989e234f82ef23e313c",
  "kind": "def",
  "lexical_name": "reduceTopAppliedPre?",
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
  "slug": "reducetopappliedpre--9d773cf305ada08317e62f73",
  "source": {
    "blob": "60e5a06bfd9979f27d4e518c4e222d201a4dd53d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d773cf305ada08317e62f73146927ac379fc81648df569c1d1bfa52eef83a6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b90ebfaae4cd704be9964d39a6cde29177a1b469a51aa989e234f82ef23e313c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def reduceTopAppliedPre? (goal : MVarId) (target pre : Expr) : SymM (Option MVarId) := do
  unless pre.isAppOf ``Lean.Order.top && pre.getAppNumArgs > 2 do return none
  let args := pre.getAppArgs
  let some carrier := args[0]? | return none
  let some instTop := args[1]? | return none
  -- `base = @top carrier instTop`, the unapplied lifted top; `pre = base s₁ … sₙ`.
  let base := mkApp2 pre.getAppFn carrier instTop
  -- Fold `top_apply` over the excess arguments: `acc : base s₁ … sᵢ = (⊤ : …)`.
  let mut acc := mkApp2 (mkConst ``Eq.refl [← Sym.getLevel carrier]) carrier base
  let mut curTop := base   -- `base s₁ … sᵢ`, the LHS of `acc`
  let mut curBare := base  -- `(⊤ : …)`, the RHS of `acc`
  let mut curTy := carrier
  let mut curCL := instTop
  for x in args.extract 2 args.size do
    let .forallE _ σ τ _ ← instantiateMVarsIfMVarAppS curTy | return none
    if τ.hasLooseBVars then return none
    unless curCL.isAppOf ``Lean.Order.instCompleteLatticePi do return none
    let .lam _ _ τCL _ := curCL.appArg! | return none
    let uσ ← Sym.getLevel σ
    let uτ ← Sym.getLevel τ
    -- `tfa : (⊤ : σ → τ) x = (⊤ : τ)`
    let tfa := mkApp4 (mkConst ``Lean.Order.top_apply [← decLevel uσ, ← decLevel uτ]) σ τ τCL x
    let some (_, _, newBare) := (← Sym.inferType tfa).eq? | return none
    -- `cf : curTop x = curBare x` (congrFun acc x), then `acc : curTop x = newBare`.
    let cf := mkApp6 (mkConst ``congrFun [uσ, uτ]) σ (.lam `x σ τ .default) curTop curBare acc x
    acc := mkApp6 (mkConst ``Eq.trans [uτ]) τ (mkApp curTop x) (mkApp curBare x) newBare cf tfa
    curTop := mkApp curTop x
    curBare := newBare
    curTy := τ
    curCL := τCL
  -- `acc : pre = (⊤ : Prop)`; lift through `· ⊑ rhs` and replace the target.
  let relArgs := target.getAppArgs
  let some α := relArgs[0]? | return none
  let some inst := relArgs[1]? | return none
  let some rhs := relArgs[3]? | return none
  let uα ← Sym.getLevel α
  -- `f := (· ⊑ rhs) : α → Prop`
  let f := Expr.lam `p α (mkApp4 target.getAppFn α inst (.bvar 0) rhs) .default
  let eqProof := mkApp6 (mkConst ``congrArg [uα, .succ .zero]) α (mkSort .zero) pre curBare f acc
  let newTarget := mkApp4 target.getAppFn α inst curBare rhs
  return some (← goal.replaceTargetEq newTarget eqProof)

/-- Reduce a `Prop`-lattice goal `(⊤ : Prop) ⊑ φ` to the bare proposition `φ` via `top_le_prop`,
returning any other goal unchanged. The match on `Sort 0` keeps it to the `Prop` base lattice,
where the reduction is sound; entailments at an abstract lattice carrier pass through. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Entails/Variant9ac6102f11fa085f9b859f9f07776a95ca0a82973c4ff1b575b17d3c38bdf357.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e5a06bfd9979f27d4e518c4e222d201a4dd53d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
