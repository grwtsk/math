# extractRatFromReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b8684a7c766c14a257b50515619a012f6c05d8d51c33d37f244413759a66f3f",
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
  "slug": "extractratfromreal--eee4253a20a87e53e8979a01",
  "source": {
    "blob": "0fe1a21f41a7973712513ff6cf21d3d729138e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 234,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eee4253a20a87e53e8979a01806217d1f18881cd058d0ca222dee20a050e0b69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b8684a7c766c14a257b50515619a012f6c05d8d51c33d37f244413759a66f3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def extractRatFromReal (e : Lean.Expr) : MetaM (Option ℚ) := do
  -- First try without whnf (preserves structure like OfNat.ofNat)
  if let some q ← tryExtract e then
    return some q
  -- Then try with whnf
  let e' ← whnf e
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
      if args.size >= 6 then
        if let some a ← extractRatFromReal args[4]! then
          if let some b ← extractRatFromReal args[5]! then
            if b ≠ 0 then
              return some (a / b)
      return none

    -- Case 7: OfScientific.ofScientific (for decimal literals like 2.72)
    else if fn.isConstOf ``OfScientific.ofScientific then
      if args.size >= 5 then
        if let some mantissa ← extractNatLit args[2]! then
          let isNegExp := args[3]!.isConstOf ``Bool.true
          if let some exp ← extractNatLit args[4]! then
            let base : ℚ := 10
            if isNegExp then
              return some ((mantissa : ℚ) / (base ^ exp))
            else
              return some ((mantissa : ℚ) * (base ^ exp))
      return none

    else
      return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Varianta25030593cb10b1bfe83fb13efc71c052e51b88e5209488a1c83fa40da45711d.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe1a21f41a7973712513ff6cf21d3d729138e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
