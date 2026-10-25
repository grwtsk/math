# makeGCongrLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a797675a518e18804608c7bad1b6297742a454c4a4c7c77010d0789b6261065f",
  "kind": "def",
  "lexical_name": "makeGCongrLemma",
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
  "slug": "makegcongrlemma--100850d558731c7a495aa8b9",
  "source": {
    "blob": "89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:100850d558731c7a495aa8b90e79675b71987583a40d8502168e02caa38b365f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a797675a518e18804608c7bad1b6297742a454c4a4c7c77010d0789b6261065f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def makeGCongrLemma (hyps : Array Expr) (target : Expr) (declName : Name) (prio : Nat)
    (strict forGrw : Bool) : MetaM GCongrLemma := do
  let fail {α} (m : MessageData) : MetaM α := throwError "\
    @[gcongr] attribute only applies to lemmas proving f x₁ ... xₙ ∼ f x₁' ... xₙ'.\n \
    {m} in {target}"
  -- verify that conclusion of the lemma is of the form `f x₁ ... xₙ ∼ f x₁' ... xₙ'`
  let some (relName, lhs, rhs) := getRel (← whnf target) | fail "No relation found"
  let lhs := lhs.headBeta; let rhs := rhs.headBeta -- this is required for `Monotone fun x => ⋯`
  let some (lhsHead, lhsArgs) := getCongrAppFnArgs lhs | fail "LHS is not suitable for congruence"
  let some (rhsHead, rhsArgs) := getCongrAppFnArgs rhs | fail "RHS is not suitable for congruence"
  if strict then
    if lhsHead == rhsHead then
      fail "LHS and RHS have the same head function."
  else
    if lhsHead != rhsHead then
      fail "LHS and RHS do not have the same head function."
  if lhsArgs.size != rhsArgs.size then
    fail "LHS and RHS do not have the same number of arguments."
  let mut pairs := #[]
  -- iterate through each pair of corresponding (LHS/RHS) inputs to the head function `head` in
  -- the conclusion of the lemma
  for lhs in lhsArgs, rhs in rhsArgs do
    -- we call such a pair a "varying argument" pair if the LHS/RHS inputs are not defeq
    -- (and not proofs)
    if ← isDefEq lhs rhs <||> (isProof lhs <&&> isProof rhs) then continue
    let lhs := lhs.eta; let rhs := rhs.eta
    -- verify that the "varying argument" pairs are free variables (after eta-reduction)
    unless lhs.isFVar && rhs.isFVar do
      if strict then continue -- When comparing `a ≤ b` with `a < b`, the instances are different.
      fail "Not all varying arguments are free variables"
    -- Instance implicit arguments should be synthesized, rather than solved by congruence
    if (← lhs.fvarId!.getBinderInfo).isInstImplicit &&
      (← rhs.fvarId!.getBinderInfo).isInstImplicit then
      continue
    -- add such a pair to the `pairs` array
    pairs := pairs.push (lhs, rhs)
  let numVarying := pairs.size
  if numVarying = 0 then
    fail "LHS and RHS are the same"
  let mut mainSubgoals := #[]
  -- iterate over antecedents `hyp` to the lemma
  for hyp in hyps, i in 0...* do
    -- Checks if `∀ xs, lhs ~ rhs` is a valid "main goal".
    let isMainGoal? (lhs rhs : Expr) (xs : Array Expr) : Option (GCongrHyp × Expr × Expr) :=
      lhs.withApp fun lhs lhsArgs => rhs.withApp fun rhs rhsArgs => do
      /- The relation needs to be of the form `lhs y₁ ... yₙ ~ rhs y₁ ... yₙ`,
      where `yᵢ` are free variables from `xs`,
      and `(lhs, rhs)` is a varying argument pair from the conclusion to the lemma
      We relax these conditions for lemmas that are not used by `grw`. -/
      guard <| !forGrw || lhsArgs.all xs.contains && lhsArgs == rhsArgs
      let lhsIdx ← hyps.idxOf? lhs
      let rhsIdx ← hyps.idxOf? rhs
      let (pair, isContra) ← pairs.findSome? fun pair =>
        if (lhs, rhs) == pair then some (pair, false) else
        if (rhs, lhs) == pair then some (pair, true) else none
      let hypsPos := xs.toList.map lhsArgs.idxOf?
      some ({ lhsIdx, rhsIdx, hypIdx := i, hypsPos, isContra }, pair)
    -- Checks if `hyp` is a valid "main goal".
    let go := forallTelescopeReducing (← inferType hyp) fun xs hypTy => do
      if let some (_, lhs₁, rhs₁) := getRel (← whnf hypTy) then
        return isMainGoal? lhs₁ rhs₁ xs
      else if let some lastFVar := xs.back? then
        return isMainGoal? (← inferType lastFVar) hypTy xs.pop
      return none
    if let some (mainSubgoal, pair) ← go then
      mainSubgoals := mainSubgoals.push mainSubgoal
      -- Erase the varying argument pair, to make sure each pair corresponds to just one hypothesis.
      pairs := pairs.erase pair
  if h : forGrw ∧ pairs.size ≠ 0 then
    let (lhs, rhs) := pairs[0]
    throwError "`{lhs}` appears on the LHS and `{rhs}` on the RHS, \
      but there is no corresponding hypothesis `{lhs} ~ {rhs}` or `{rhs} ~ {lhs}`.\n\n\
      This means that the `@[gcongr]` lemma cannot be used in the `grw` tactic. \
      Please use `@[gcongr only]` instead."
  -- store all the information from this parse of the lemma's structure in a `GCongrLemma`
  let mut keys := [{ relName, head := rhsHead, arity := lhsArgs.size }]
  if strict then
    keys := { relName, head := lhsHead, arity := lhsArgs.size } :: keys
  return { keys, declName, mainSubgoals, numHyps := hyps.size, prio, numVarying, forGrw }


/-- Attribute marking "generalized congruence" (`gcongr`) lemmas.  Such lemmas must have a
conclusion of a form such as `f x₁ y z₁ ∼ f x₂ y z₂`; that is, a relation between the application of
a function to two argument lists, in which the "varying argument" pairs (here `x₁`/`x₂` and
`z₁`/`z₂`) are all free variables. These lemmas are used by the `gcongr` and `grw` tactics.

The antecedents of such a lemma are classified as generating "main goals" if they are of the form
`x₁ ≈ x₂` for some "varying argument" pair `x₁`/`x₂` (and a possibly different relation `≈` to `∼`),
or more generally of the form `∀ i h h' j h'', f₁ i j ≈ f₂ i j` (say) for some "varying argument"
pair `f₁`/`f₂`, where the arguments of `f₁` and `f₂` are the same list of variables which have to
be bound by the preceding `∀`. (Other antecedents are considered to generate "side goals".)

If a lemma such as `add_le_add : a ≤ b → c ≤ d → a + c ≤ b + d` has been tagged with `gcongr`,
then a direct consequence like `a ≤ b → a + c ≤ b + c` does *not* need to be tagged.
However, if a more specific lemma has fewer side conditions, it should also be tagged with `gcongr`.
For example, `mul_le_mul_of_nonneg_right` and `mul_le_mul_of_nonneg_left` are both tagged.

* `gcongr only` relaxes some checks that ensure that the lemma is suitable for use in `grw`.
  So, a lemma tagged `gcongr only` is not used by `grw`, but it may still be used by `gcongr`.
* `gcongr strict` lets you tag lemmas where the conclusion relates two different constants,
  instead of a constant with itself.
  This allows `grw` to replace one constant with another while doing a rewrite.
  In particular, we use this to have special support for rewriting with strict inequalities (`<`).
  This is done by applying `gcongr strict` to `lt_of_lt_of_le`, which has the conclusion
  `b ≤ c → a < c` that relates `LE.le` with `LT.lt` (and similarly for `lt_of_lt_of_le'`).
  As a result, a rewrite with a strict inequality can turn `<` into `≤`, or `≤` into `<`,
  depending on whether this appears in positive or negative position.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantc4efd61c4bfe11d88c32c3fe178559175eeaa2368a41b5bebfe29fcc763a681b.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89f176eb1fc9048b6f4bf7b9ebd6b4a0a90e3d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
