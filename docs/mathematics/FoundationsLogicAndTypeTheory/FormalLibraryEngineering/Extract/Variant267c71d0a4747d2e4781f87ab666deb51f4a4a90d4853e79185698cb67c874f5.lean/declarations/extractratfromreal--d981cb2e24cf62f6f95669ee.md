# extractRatFromReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8af4bf9d32cb07f21c96ffc264bc03f6cb22d20ceb01ac8e7859826318fa5cc6",
  "kind": "def",
  "lexical_name": "extractRatFromReal",
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
  "slug": "extractratfromreal--d981cb2e24cf62f6f95669ee",
  "source": {
    "blob": "4d21e93c90768f1adf83ad53219f606f3c0d513e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d981cb2e24cf62f6f95669eefbc67d43706ab976e3f222e4a49c1e9c91710076",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8af4bf9d32cb07f21c96ffc264bc03f6cb22d20ceb01ac8e7859826318fa5cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def extractRatFromReal (e : Lean.Expr) : MetaM (Option ℚ) := do
  let e ←
    if e.isMVar then
      if let some val ← getExprMVarAssignment? e.mvarId! then
        instantiateMVars val
      else
        pure e
    else
      instantiateMVars e
  -- First try without whnf (preserves structure like OfNat.ofNat)
  if let some q ← tryExtract e then
    return some q
  -- Then try with whnf
  let e' ← whnf e
  let e' ← instantiateMVars e'
  if let some q ← tryExtract e' then
    return some q
  -- Finally, try extracting from ℚ directly (for goals like ∀ x ∈ I, f(x) ≤ (1 : ℚ))
  extractRatFromRat e'
where
  tryExtract (e : Lean.Expr) : MetaM (Option ℚ) := do
    let fn := e.getAppFn
    let args := e.getAppArgs

    -- Case 1: Rat.cast q or RatCast.ratCast q
    if fn.isConstOf ``Rat.cast || fn.isConstOf ``RatCast.ratCast then
      if args.size > 0 then
        return ← extractRatFromRat args.back!
      else return none

    -- Case 2: OfNat.ofNat (for numeric literals like 2 : ℝ)
    else if fn.isConstOf ``OfNat.ofNat then
      -- OfNat.ofNat : {α : Type} → (n : ℕ) → [OfNat α n] → α
      -- args[1] is the natural number
      if args.size >= 2 then
        if let some n ← extractNatLit args[1]! then
          return some (n : ℚ)
      return none

    -- Case 3: Nat.cast n
    else if fn.isConstOf ``Nat.cast || fn.isConstOf ``NatCast.natCast then
      if args.size > 0 then
        if let some n ← extractNatLit args.back! then
          return some (n : ℚ)
      return none

    -- Case 4: Int.cast i
    else if fn.isConstOf ``Int.cast || fn.isConstOf ``IntCast.intCast then
      if args.size > 0 then
        if let some i ← extractIntLit args.back! then
          return some (i : ℚ)
      return none

    -- Case 5: Neg.neg x (for negative numbers)
    else if fn.isConstOf ``Neg.neg then
      if args.size > 0 then
        if let some q ← extractRatFromReal args.back! then
          return some (-q)
      return none

    -- Case 6: HDiv.hDiv a b (for fractions like 1/2)
    else if fn.isConstOf ``HDiv.hDiv then
      if args.size >= 6 then  -- HDiv.hDiv has 6 args: α β γ inst a b
        if let some a ← extractRatFromReal args[4]! then
          if let some b ← extractRatFromReal args[5]! then
            if b ≠ 0 then
              return some (a / b)
      return none

    -- Case 7: OfScientific.ofScientific (for decimal literals like 2.72)
    -- OfScientific.ofScientific : {α : Type} → [OfScientific α] → ℕ → Bool → ℕ → α
    -- 2.72 = ofScientific 272 true 2 = 272 * 10^(-2) = 272/100
    else if fn.isConstOf ``OfScientific.ofScientific then
      -- args: [type, inst, mantissa, isNegExp, exponent]
      if args.size >= 5 then
        if let some mantissa ← extractNatLit args[2]! then
          let isNegExp := args[3]!.isConstOf ``Bool.true
          if let some exp ← extractNatLit args[4]! then
            let base : ℚ := 10
            if isNegExp then
              -- mantissa * 10^(-exp) = mantissa / 10^exp
              return some ((mantissa : ℚ) / (base ^ exp))
            else
              -- mantissa * 10^exp
              return some ((mantissa : ℚ) * (base ^ exp))
      return none

    else return none

/-- Build an IntervalRat expression from two rational expressions and their Lean representations -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d21e93c90768f1adf83ad53219f606f3c0d513e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
