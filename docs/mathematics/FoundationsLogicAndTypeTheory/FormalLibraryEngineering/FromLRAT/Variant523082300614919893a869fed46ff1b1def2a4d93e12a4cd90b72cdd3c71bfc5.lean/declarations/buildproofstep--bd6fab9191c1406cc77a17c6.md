# buildProofStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:faf102a5991923c5ee5f1ba464ce735a8e916aeb08e2284760e3a3e0d2ca3345",
  "kind": "def",
  "lexical_name": "buildProofStep",
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
  "slug": "buildproofstep--bd6fab9191c1406cc77a17c6",
  "source": {
    "blob": "c45f908020ab8ae86a140fee5edc1759b46a4dcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 312,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd6fab9191c1406cc77a17c671564f949a458dea4420f5f6dd636854b85f481c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:faf102a5991923c5ee5f1ba464ce735a8e916aeb08e2284760e3a3e0d2ca3345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def buildProofStep (db : HashMap Nat Clause)
  (ns pf : Array Int) (ctx clause : Expr) : Except String Expr := Id.run do
  let mut lams := #[]
  let mut args := #[]
  let mut gctx : HashMap Nat LClause := {}
  -- step 1
  for i in pf do
    let i := i.natAbs
    let some cl := db.find? i | return Except.error "missing clause"
    if !gctx.contains i then
      lams := lams.push (mkApp2 (mkConst ``Sat.Fmla.proof) ctx cl.expr)
      args := args.push cl.proof
      gctx := gctx.insert i {
        lits := cl.lits
        expr := cl.expr
        depth := args.size
      }
  let n := args.size
  -- step 2
  let mut f :=
    (mkAppN · args) ∘
    lams.foldr (mkLambda `c default) ∘
    mkLambda `v default (mkConst ``Sat.Valuation) ∘
    mkLambda `hv default (mkApp2 (mkConst ``Sat.Valuation.satisfies_fmla) (mkBVar 0) ctx)
  let v depth := mkBVar (depth + 1)
  let hv depth := mkBVar depth
  lams := #[]
  let mut clause := clause
  let mut depth := 0
  let mut lctx : HashMap Int Nat := {}
  for i in ns do
    let l := clause.appFn!.appArg!
    clause := clause.appArg!
    lams := lams.push (mkApp2 (mkConst ``Sat.Valuation.neg) (v depth) l)
    depth := depth.succ
    lctx := lctx.insert i depth
  f := f ∘ lams.foldr (mkLambda `h default)
  -- step 3
  for (step : Int) in pf do
    if step < 0 then return Except.error "unimplemented: RAT step"
    let some cl := gctx.find? step.toNat | return Except.error "missing clause"
    let mut unit := none
    for i in cl.lits do
      unless lctx.contains i do
        if unit.isSome then return Except.error s!"not unit: {cl.lits}"
        depth := depth.succ
        unit := some i
    let mut pr := mkApp2 (mkBVar (depth + n + 2 - cl.depth)) (v depth) (hv depth)
    for i in cl.lits do
      pr := mkApp pr <| mkBVar (match lctx.find? i with | some k => depth - k | _ => 0)
    let some u := unit | return Except.ok <| f pr
    let lit := toExpr $ Sat.Literal.ofInt u
    let nlit := toExpr $ Sat.Literal.ofInt (-u)
    let d1 := depth-1
    let app := mkApp3 (mkConst ``Sat.Valuation.by_cases) (v d1) nlit <|
      mkLambda `h default (mkApp2 (mkConst ``Sat.Valuation.neg) (v d1) lit) pr
    let dom := mkApp2 (mkConst ``Sat.Valuation.neg) (v d1) nlit
    f := fun e ↦ f <| mkApp app <| mkLambda `h default dom e
    lctx := lctx.insert (-u) depth
  return Except.error s!"no refutation: {ns}, {pf}, {lctx.toList}"

/-- An LRAT step is either an addition or a deletion step. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FromLRAT/Variant523082300614919893a869fed46ff1b1def2a4d93e12a4cd90b72cdd3c71bfc5.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c45f908020ab8ae86a140fee5edc1759b46a4dcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
