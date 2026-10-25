# extractRatFromRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ff616c67a67e92fb8a41845ccef4b14449adf57faeeabf1d996df72f1ebf337",
  "kind": "def",
  "lexical_name": "extractRatFromRat",
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
  "slug": "extractratfromrat--6d5f4c5ac3e2814bb08b10bf",
  "source": {
    "blob": "4d21e93c90768f1adf83ad53219f606f3c0d513e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d5f4c5ac3e2814bb08b10bf93f0adad74d76d477b5c3cb5d2ebb9ffcd4d9b69",
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

Occurrence: `declaration:5ff616c67a67e92fb8a41845ccef4b14449adf57faeeabf1d996df72f1ebf337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def extractRatFromRat (e : Lean.Expr) : MetaM (Option ℚ) := do
  -- Try without whnf first (preserves OfNat.ofNat structure)
  if let some q ← tryExtractRat e then
    return some q
  -- Then try with whnf
  let e' ← whnf e
  tryExtractRat e'
where
  tryExtractRat (e : Lean.Expr) : MetaM (Option ℚ) := do
    let fn := e.getAppFn
    let args := e.getAppArgs

    -- Check for Rat.ofInt
    if fn.isConstOf ``Rat.ofInt then
      if args.size > 0 then
        if let some i ← extractIntLit args[0]! then
          return some (i : ℚ)
      return none

    -- Check for OfNat.ofNat on Rat
    else if fn.isConstOf ``OfNat.ofNat then
      if args.size >= 2 then
        if let some n ← extractNatLit args[1]! then
          return some (n : ℚ)
      return none

    -- Check for Nat.cast to ℚ (handles ↑1, ↑2, etc.)
    else if fn.isConstOf ``Nat.cast || fn.isConstOf ``NatCast.natCast then
      if args.size > 0 then
        if let some n ← extractNatLit args.back! then
          return some (n : ℚ)
      return none

    -- Check for Int.cast to ℚ
    else if fn.isConstOf ``Int.cast || fn.isConstOf ``IntCast.intCast then
      if args.size > 0 then
        if let some i ← extractIntLit args.back! then
          return some (i : ℚ)
      return none

    -- Try to match Rat.mk' num den ...
    else if fn.isConstOf ``Rat.mk' then
      return none  -- TODO: implement if needed

    else
      -- Last resort: evaluate the expression directly.  Only safe for
      -- fully ground terms (no free variables or metavariables).
      if e.hasFVar || e.hasMVar then
        return none
      try
        let q ← unsafe evalExpr ℚ (mkConst ``Rat) e
        return some q
      catch _ =>
        return none

/-- Try to extract a rational value from a Lean expression that represents a real number.
    Handles: Rat.cast, OfNat.ofNat, Nat.cast, Int.cast, negations, and divisions.
    Also handles direct ℚ expressions as a fallback. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extract/Variant267c71d0a4747d2e4781f87ab666deb51f4a4a90d4853e79185698cb67c874f5.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d21e93c90768f1adf83ad53219f606f3c0d513e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
