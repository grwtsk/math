# elabMSpecialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64d096997963ed707337d644d7028facd5c8280435778011afab5ddff66252c3",
  "kind": "def",
  "lexical_name": "elabMSpecialize",
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
  "slug": "elabmspecialize--214c59fd98ec2ff7b400b881",
  "source": {
    "blob": "c6ad00fa378ad5016a982967eb8f2b3700f992ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:214c59fd98ec2ff7b400b881ec5bc2331444fdba937fcdce9c57d54964a2fda4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64d096997963ed707337d644d7028facd5c8280435778011afab5ddff66252c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMSpecialize : Tactic
  | `(tactic| mspecialize $hyp $args*) => do
  let (mvar, goal) ← mStartMainGoal
  mvar.withContext do

  -- Want to prove goal P ⊢ T, where hyp occurs in P.
  -- So we
  -- 1. focus on hyp (referred to as H):  P ⊣⊢ₛ P' ∧ H. Prove P' ∧ H ⊢ₛ T
  -- 2. Produce a (transitive chain of) proofs
  --      P' ∧ H ⊢ P' ∧ H₁ ⊢ₛ P' ∧ H₂ ⊢ₛ ...
  --    One for each arg; end up with goal P' ∧ H' ⊢ₛ T
  -- 3. Recombine with SPred.mkAnd (NB: P' might be empty), compose with P' ∧ H' ⊣⊢ₛ SPred.mkAnd P' H'.
  -- 4. Make a new MVar for goal `SPred.mkAnd P' H' ⊢ T` and assign the transitive chain.
  let some specFocus := goal.focusHyp hyp.getId | throwError "unknown identifier `{hyp}`"
  let u := goal.u
  let σs := goal.σs
  let P := specFocus.restHyps
  let mut H := specFocus.focusHyp
  let some hyp' := parseHyp? H | panic! "Invariant of specialize violated"
  addHypInfo hyp σs hyp'
  -- invariant: proof (_ : { goal with hyps := SPred.mkAnd! σs P H }.toExpr) fills the mvar
  let mut proof : Expr → Expr :=
    mkApp7 (mkConst ``Specialize.focus [u]) σs goal.hyps P H goal.target specFocus.proof

  for arg in args do
    let res? ← OptionT.run
      (mSpecializeImpStateful P H arg
        <|> mSpecializeImpPure P H arg
        <|> mSpecializeForall P H arg)
    match res? with
    | some (H', H2H') =>
      -- logInfo m!"H: {H}, proof: {← inferType H2H'}"
      proof := fun hgoal => proof (mkApp6 (mkConst ``SPred.entails.trans [u]) σs (SPred.mkAnd! u σs P H) (SPred.mkAnd! u σs P H') goal.target H2H' hgoal)
      H := H'
    | none =>
      throwError "Could not specialize {H} with {arg}"

  let newMVar ← mkFreshExprSyntheticOpaqueMVar { goal with hyps := SPred.mkAnd! u σs P H }.toExpr
  mvar.assign (proof newMVar)
  replaceMainGoal [newMVar.mvarId!]

  | _ => throwUnsupportedSyntax

@[builtin_tactic Lean.Parser.Tactic.mspecializePure]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantceffc9778c0f5efaf0d71a61dd8e5c958d8de0e6d23acba5fb4e88d7853900df.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ad00fa378ad5016a982967eb8f2b3700f992ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
