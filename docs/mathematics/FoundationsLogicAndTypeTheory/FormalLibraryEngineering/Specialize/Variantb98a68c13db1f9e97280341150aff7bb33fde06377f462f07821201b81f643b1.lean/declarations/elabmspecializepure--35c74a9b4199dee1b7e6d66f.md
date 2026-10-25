# elabMspecializePure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:724407d6317a7fe70c6d86cc2ca8459d45e0e48528d0499fa992cc45577de5a1",
  "kind": "def",
  "lexical_name": "elabMspecializePure",
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
  "slug": "elabmspecializepure--35c74a9b4199dee1b7e6d66f",
  "source": {
    "blob": "7008ec26f46569412b79934b93b9c36510e5cd25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35c74a9b4199dee1b7e6d66f41939d1e2f19568859006e03aaeacac08f5ac712",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:724407d6317a7fe70c6d86cc2ca8459d45e0e48528d0499fa992cc45577de5a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabMspecializePure : Tactic
  | `(tactic| mspecialize_pure $head $args* => $hyp) => do
  -- "mspecialize_pure" >> term >> many (ppSpace >> checkColGt "irrelevant" >> termParser (eval_prec max)) >> "as" >> ident
  let (mvar, goal) ← mStartMainGoal
  mvar.withContext do

  -- Want to prove goal P ⊢ₛ T. `head` is a pure proof of type `φ` that turns into `⊢ₛ H` via `start_entails`.
  -- So we
  -- 1. Introduce `head` via `PropAsEntails` as stateful hypothesis named `hyp`, P ∧ (hyp : H) ⊢ₛ T
  -- 2. (from here on it's the same as `mspecialize`.)
  --    Produce a (transitive chain of) proofs
  --      P ∧ H ⊢ P ∧ H₁ ⊢ₛ P ∧ H₂ ⊢ₛ ...
  --    One for each arg; end up with goal P ∧ H' ⊢ₛ T
  -- 3. Recombine with SPred.mkAnd (NB: P' might be empty), compose with P' ∧ H' ⊣⊢ₛ SPred.mkAnd P' H'.
  -- 4. Make a new MVar for goal `SPred.mkAnd P' H' ⊢ T` and assign the transitive chain.
  let u := goal.u
  let σs := goal.σs
  let P := goal.hyps
  let T := goal.target
  let hφ ← elabTerm head none
  let φ ← inferType hφ
  let H ← mkFreshExprMVar (mkApp (mkConst ``SPred [u]) σs)
  let inst ← synthInstance (mkApp3 (mkConst ``PropAsSPredTautology [u]) φ σs H)
  let uniq ← mkFreshId
  let mut H := (Hyp.mk hyp.getId uniq (← instantiateMVars H)).toExpr

  let goal : MGoal := { goal with hyps := SPred.mkAnd! u σs P H }
  -- invariant: proof (_ : { goal with hyps := SPred.mkAnd! u σs P H }.toExpr) fills the mvar
  let mut proof : Expr → Expr :=
    mkApp8 (mkConst ``Specialize.pure_start [u]) σs φ H P T inst hφ

  for arg in args do
    let res? ← OptionT.run
      (mSpecializeImpStateful P H ⟨arg⟩
        <|> mSpecializeImpPure P H ⟨arg⟩
        <|> mSpecializeForall P H ⟨arg⟩)
    match res? with
    | some (H', H2H') =>
      -- logInfo m!"H: {H}, proof: {← inferType H2H'}"
      proof := fun hgoal => proof (mkApp6 (mkConst ``SPred.entails.trans [u]) σs (SPred.mkAnd! u σs P H) (SPred.mkAnd! u σs P H') goal.target H2H' hgoal)
      H := H'
    | none =>
      throwError "Could not specialize {H} with {arg}"

  let some hyp' := parseHyp? H | panic! "Invariant of specialize_pure violated"
  addHypInfo hyp σs hyp'

  let newMVar ← mkFreshExprSyntheticOpaqueMVar { goal with hyps := SPred.mkAnd! u σs P H }.toExpr
  mvar.assign (proof newMVar)
  replaceMainGoal [newMVar.mvarId!]
  | _ => throwUnsupportedSyntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variantb98a68c13db1f9e97280341150aff7bb33fde06377f462f07821201b81f643b1.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7008ec26f46569412b79934b93b9c36510e5cd25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
