# eqSpecToWp?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f47c68f64a62c58af85bd2ea8e210391dc27c8614588fcfaee2423765b36be7",
  "kind": "def",
  "lexical_name": "eqSpecToWp?",
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
  "slug": "eqspectowp--a5cda2acc1f4d64379b731f9",
  "source": {
    "blob": "e39485b4727669e40b2752d74a633be14945f721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5cda2acc1f4d64379b731f9afa78df4ad9f7a616e3c346816dfb8522cb89ab8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f47c68f64a62c58af85bd2ea8e210391dc27c8614588fcfaee2423765b36be7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def eqSpecToWp? (info : WPApp) (xs : Array Expr) (eqPrf eqType : Expr) :
    OptionT MetaM (Expr × Expr) := do
  let_expr Eq eqα lhs rhs := eqType
    | throwError "simp spec is not an equation: {eqType}"
  -- Recover the value type `α` and confirm the equation is in the goal's monad. `α` is typed at the
  -- monad's domain sort so the equation's element type stays well-formed.
  let α ← mkFreshExprMVar (← inferType info.M).bindingDomain!
  guard <| ← isDefEqGuarded eqα (mkApp info.M α)
  -- Pin the schematic instance and state metavariables by unifying the equation's LHS with the goal's
  -- concrete program, so dictionary projections in `rhs` reduce against the real instance.
  let _ ← show MetaM Bool from commitWhen <| isDefEqGuarded lhs info.prog
  -- Synthesize leftover dictionary metavariables (e.g. for an abstract-monad lift equation, whose LHS
  -- does not unify with a concrete program) so the projections in `rhs` reduce against instances.
  for x in xs do
    if x.isMVar && !(← x.mvarId!.isAssigned) then
      try x.mvarId!.assign (← Meta.synthInstance (← Meta.inferType x))
      catch _ => pure ()
  -- Reduce dictionary projections to expose the actual operation VCGen continues on.
  let rhs ← show MetaM Expr from Meta.transform rhs (pre := fun e => do
    if let .proj .. := e then
      if let some r ← withDefault <| Meta.reduceProj? e then return .done r
    return .continue)
  -- `post`/`epost` are schematic metavariables (their VCs collapse downstream).
  let post ← mkFreshExprMVar (userName := `Q) (← mkArrow α info.Pred)
  let epost ← mkFreshExprMVar (userName := `E) info.EPred
  -- Cast to the reduced RHS so the resulting `wp` rewrites onto the exposed operation.
  let eqPrf ← mkExpectedTypeHint eqPrf (← mkEq lhs rhs)
  -- Pin the monad and assertion instances from the goal's `wp` arguments. Inferring the monad from
  -- the equation type alone would leave `m β =?= info.M γ` as an underdetermined flex-rigid problem,
  -- so non-monadic equations like `Option.getD.eq_1` would fail to unify. With `m` fixed, the value
  -- type is inferred from the equation proof.
  let specProof ← mkAppOptM ``Std.Internal.Do.wp_le_wp_of_eq <|
    (info.args.extract 0 7).map some ++ #[none, none, some eqPrf, some post, some epost]
  return (specProof, ← instantiateMVars (← Meta.inferType specProof))

/--
Try to build a backward rule from a single spec theorem.

For a spec already in `⊑ wp` form (`pre ⊑ wp prog post epost`, where the lattice type is
`info.Pred = σ1 → ... → σn → Prop`), produces an auxiliary lemma directly. An equality spec
`lhs = rhs` is first normalized to `wp rhs Q E ⊑ wp lhs Q E` via `eqSpecToWp?` and then handled the
same way.

- `info.Pred`: the goal's lattice type (e.g. `Nat → Prop`)
- `info.instWP`: the `WPMonad` instance for the goal monad
- `info.excessArgs`: free variables representing state args from
  `info.Pred = σ1 → ... → σn → Prop`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleConstruction/Variantfd9313c4198c00f7c7b286f7a0fbd2f51f8d746b87343c3291c2efb6053acfb0.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e39485b4727669e40b2752d74a633be14945f721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
