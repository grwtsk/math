# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:caa52fbc8c9c756cacf8885745c8dfa4c29751d407834dd85f8838f31e41d384",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--d3e5f8e28737e9d4e7a2bcb7",
  "source": {
    "blob": "1a0c05bc115d8f1b87da5b9915a028a8073476d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3e5f8e28737e9d4e7a2bcb7f9103db2dc41c05467cdabb4fcc66a165a34f681",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:caa52fbc8c9c756cacf8885745c8dfa4c29751d407834dd85f8838f31e41d384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize registerBuiltinAttribute {
  name := `gcongr
  descr := "generalized congruence"
  add := fun decl _ kind ↦ MetaM.run' do
    let declTy := (← getConstInfo decl).type
    withReducible <| forallTelescopeReducing declTy fun xs targetTy => do
    let fail (m : MessageData) := throwError "\
      @[gcongr] attribute only applies to lemmas proving f x₁ ... xₙ ∼ f x₁' ... xₙ'.\n \
      {m} in the conclusion of {declTy}"
    -- verify that conclusion of the lemma is of the form `f x₁ ... xₙ ∼ f x₁' ... xₙ'`
    let .app (.app rel lhs) rhs ← whnf targetTy |
      fail "No relation with at least two arguments found"
    let some relName := rel.getAppFn.constName? | fail "No relation found"
    let (some head, lhsArgs) := lhs.withApp fun e a => (e.constName?, a) |
      fail "LHS is not a function"
    let (some head', rhsArgs) := rhs.withApp fun e a => (e.constName?, a) |
      fail "RHS is not a function"
    unless head == head' && lhsArgs.size == rhsArgs.size do
      fail "LHS and RHS do not have the same head function and arity"
    let mut varyingArgs := #[]
    let mut pairs := #[]
    -- iterate through each pair of corresponding (LHS/RHS) inputs to the head function `head` in
    -- the conclusion of the lemma
    for e1 in lhsArgs, e2 in rhsArgs do
      -- we call such a pair a "varying argument" pair if the LHS/RHS inputs are not defeq
      -- (and not proofs)
      let isEq := (← isDefEq e1 e2) || ((← isProof e1) && (← isProof e2))
      if !isEq then
        let e1 := e1.eta
        let e2 := e2.eta
        -- verify that the "varying argument" pairs are free variables (after eta-reduction)
        unless e1.isFVar && e2.isFVar do fail "Not all arguments are free variables"
        -- add such a pair to the `pairs` array
        pairs := pairs.push (varyingArgs.size, e1, e2)
      -- record in the `varyingArgs` array a boolean (true for varying, false if LHS/RHS are defeq)
      varyingArgs := varyingArgs.push !isEq
    let mut mainSubgoals := #[]
    let mut i := 0
    -- iterate over antecedents `hyp` to the lemma
    for hyp in xs do
      mainSubgoals ← forallTelescopeReducing (← inferType hyp) fun _args hypTy => do
        let mut mainSubgoals := mainSubgoals
        -- pull out the conclusion `hypTy` of the antecedent, and check whether it is of the form
        -- `lhs₁ _ ... _ ≈ rhs₁ _ ... _` (for a possibly different relation `≈` than the relation
        -- `rel` above)
        if let .app (.app _ lhs₁) rhs₁ ← whnf hypTy then
          let lhs₁ := lhs₁.getAppFn
          let rhs₁ := rhs₁.getAppFn
          -- check whether `(lhs₁, rhs₁)` is in some order one of the "varying argument" pairs from
          -- the conclusion to the lemma
          if let some j ← pairs.findM? fun (_, e1, e2) =>
            isDefEq lhs₁ e1 <&&> isDefEq rhs₁ e2 <||>
            isDefEq lhs₁ e2 <&&> isDefEq rhs₁ e1
          then
            -- if yes, record the index of this antecedent as a "main subgoal", together with the
            -- index of the "varying argument" pair it corresponds to
            mainSubgoals := mainSubgoals.push (i, j.1)
        pure mainSubgoals
      i := i + 1
    -- store all the information from this parse of the lemma's structure in a `GCongrLemma`
    gcongrExt.add
      ((relName, head, varyingArgs), { declName := decl, mainSubgoals, varyingArgs }) kind
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante97732e9e06d491d48814158db262b7f773fa712d2c2893ad6f99904a005dc8b.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a0c05bc115d8f1b87da5b9915a028a8073476d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
