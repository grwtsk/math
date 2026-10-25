# trySumSplitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc90e54b01aa3ba14874852930619a809584ffd7dfe94c268b5cfb2e168b5f43",
  "kind": "def",
  "lexical_name": "trySumSplitting",
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
  "slug": "trysumsplitting--d68af628c7edda903425a85e",
  "source": {
    "blob": "9300903d3adf07184fdb1782d46095a325e1cda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 610,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d68af628c7edda903425a85e3d7b5c101d9058c73a756f7b4e3b611c56ee3b1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc90e54b01aa3ba14874852930619a809584ffd7dfe94c268b5cfb2e168b5f43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def trySumSplitting (taylorDepth : Nat) (groupSize : Nat := 10) : TacticM Bool := do
  let goal ← getMainGoal
  let goalType ← goal.getType
  -- Parse as point inequality
  let some (lhs, _rhs, isStrict, _isReversed) ← parsePointIneq goalType
    | return false
  -- Only handle non-strict ≤ for now
  if isStrict then return false
  -- The function side should be a sum (any size, we'll try direct proof first)
  let terms := flattenAdd lhs
  -- Skip single terms (not a sum) but allow small sums (≥2 terms)
  if terms.length < 2 then return false
  trace[interval_decide] "Sum splitting: found {terms.length} terms, splitting into groups of {groupSize}"
  -- Partition into groups
  let mut groups : Array (List Lean.Expr) := #[]
  let termsArr := terms.toArray
  let mut i := 0
  while i < termsArr.size do
    let endIdx := min (i + groupSize) termsArr.size
    groups := groups.push (termsArr.toList.drop i |>.take (endIdx - i))
    i := endIdx
  -- For each group, compute its interval upper bound and prove the sub-inequality
  for (group, idx) in groups.toList.zip (List.range groups.size) do
    let groupExpr ← rebuildSum group
    -- Compute the upper bound for this group via interval evaluation
    let boundExpr ← try
      computeUpperBoundExpr groupExpr taylorDepth
    catch _ =>
      trace[interval_decide] "Sum splitting: failed to compute bound for group {idx}"
      return false
    let boundStx ← Term.exprToSyntax boundExpr
    let groupStx ← Term.exprToSyntax groupExpr
    let haveNameId := mkIdent (Name.mkSimple s!"h_group_{idx}")
    try
      -- Create the have goal and prove it with intervalDecideCore
      evalTactic (← `(tactic|
        have $haveNameId : $groupStx ≤ $boundStx := by skip
      ))
      -- The new goal from `skip` is `groupExpr ≤ boundExpr`
      intervalDecideCore taylorDepth
    catch _ =>
      trace[interval_decide] "Sum splitting: failed to prove group {idx}"
      return false
  -- Close the original goal with linarith using all the group bounds
  try
    evalTactic (← `(tactic| linarith))
    return true
  catch _ =>
    trace[interval_decide] "Sum splitting: linarith failed to combine group bounds"
    return false

/-! ### Ceiling/Floor Preprocessing

Goals involving `⌈e⌉₊` (Nat.ceil) cannot be reified into the `Expr` AST because
it has no constructor for ceiling.  Instead we reduce to a pure real inequality:

* `⌈e⌉₊ + k ≤ n`  ⟹  prove `e ≤ ↑(n - k)` by `interval_decide`,
  then close via `Nat.ceil_le` + `omega`.
-/

/-- Parse an expression as `⌈e⌉₊ + k`, `k + ⌈e⌉₊`, or just `⌈e⌉₊`.
    Returns `(ceilApp, innerRealExpr, offset)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9300903d3adf07184fdb1782d46095a325e1cda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
