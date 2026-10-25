# intervalDecideSingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff96ed8447116aaa95743b234e19224e66418e7efdebfc4793c1036db040bcf4",
  "kind": "def",
  "lexical_name": "intervalDecideSingle",
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
  "slug": "intervaldecidesingle--bbd589d42d617b47b5be1ba9",
  "source": {
    "blob": "9300903d3adf07184fdb1782d46095a325e1cda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 846,
    "line": 777,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbd589d42d617b47b5be1ba9c64bfc849f5744dff38f505784a25247f2462750",
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

Occurrence: `declaration:ff96ed8447116aaa95743b234e19224e66418e7efdebfc4793c1036db040bcf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 777–846.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def intervalDecideSingle (depth : Option Nat) : TacticM Unit := do
  -- Try ceiling/floor preprocessing first (for goals like ⌈e⌉₊ + k ≤ n).
  -- We estimate the Taylor depth from the inner real expression and try a few depths.
  let goalType ← getMainTarget
  let est ← estimateTranscendentalDepth goalType
  let ceilDepths : List Nat := match depth with
    | some d => [d]
    | none => if est > 10 then [est, est + 10, est + 20] else [10, 15, 20, 25, 30]
  let goalState ← saveState
  for d in ceilDepths do
    try
      restoreState goalState
      if ← tryCeilPreprocess d then return
    catch _ => continue
  restoreState goalState
  match depth with
  | some n =>
    let goalState ← saveState
    let goalType ← getMainTarget
    -- If we can estimate a much smaller depth, try it first to save time.
    let est ← estimateTranscendentalDepth goalType
    let est' := Nat.min est n
    let depths : List Nat :=
      if est' + 5 < n then [est', n] else [n]
    let mut lastError : Option Exception := none
    for d in depths do
      try
        restoreState goalState
        intervalDecideCore d
        return
      catch e =>
        lastError := some e
        continue
    restoreState goalState
    let splitSuccess ← trySumSplitting n
    if splitSuccess then return
    match lastError with
    | some e => throw e
    | none => throwError "interval_decide: failed at all depth levels"
  | none =>
    let goalType ← getMainTarget
    let est ← estimateTranscendentalDepth goalType
    let depths :=
      if est > 10 then
        [est, est + 10, est + 20]
      else
        [10, 15, 20, 25, 30]
    trace[interval_decide] "Estimated depth: {est}, trying depths: {depths}"
    let goalState ← saveState
    let mut lastError : Option Exception := none
    for d in depths do
      try
        restoreState goalState
        trace[interval_decide] "Trying Taylor depth {d}..."
        intervalDecideCore d
        trace[interval_decide] "Success with Taylor depth {d}"
        return
      catch e =>
        lastError := some e
        continue
    -- All depths failed — try sum splitting as a last resort
    let est2 := if est > 10 then est else 30
    restoreState goalState
    let splitSuccess ← trySumSplitting est2
    if splitSuccess then return
    match lastError with
    | some e => throw e
    | none => throwError "interval_decide: failed at all depth levels"

/-- Recursively handle conjunctions and disjunctions, then apply intervalDecideSingle -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean#L777).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9300903d3adf07184fdb1782d46095a325e1cda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
