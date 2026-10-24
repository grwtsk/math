# extractRatFromRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a52aa25f29bf68119738fcca54a9c6fc0700e732fc9d34354fd9f2afe58d4f9f",
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
  "slug": "extractratfromrat--b017a00005a81feefe916551",
  "source": {
    "blob": "92fb150c1d062d61fbe2ce8022786a50a261615a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b017a00005a81feefe916551940b04deff0c60a63295639ad5ae0c92e307601b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a52aa25f29bf68119738fcca54a9c6fc0700e732fc9d34354fd9f2afe58d4f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–225.

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
    if fn.isConstOf ``Rat.ofInt then
      if args.size > 0 then
        if let some i ← extractIntLit args[0]! then
          return some (i : ℚ)
      return none
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
    else if fn.isConstOf ``Rat.mk' then
      return none
    else
      return none

/-- Try to extract a rational value from a Lean expression that represents a real number.
    Handles: Rat.cast, OfNat.ofNat, Nat.cast, Int.cast, negations, and divisions.
    Also handles direct ℚ expressions as a fallback. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Discovery/Variant6f5ee55b19c920d11918d03299bc25da1f815bb348d99d767630019b0c72b825.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92fb150c1d062d61fbe2ce8022786a50a261615a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
