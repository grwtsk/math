# getAssignmentExt?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0642e999cf7bbef5cb82ecba70be2677528cf8d3c89bb4f76fde872b8e311cda",
  "kind": "def",
  "lexical_name": "getAssignmentExt?",
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
  "slug": "getassignmentext--301dac4db5b5fb6a98cca6f4",
  "source": {
    "blob": "58ee9b16cc88ba78373adc36e6184932887d9451",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:301dac4db5b5fb6a98cca6f405ca01982ed116b6e58e7bd1aed1c4edf038d68a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0642e999cf7bbef5cb82ecba70be2677528cf8d3c89bb4f76fde872b8e311cda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getAssignmentExt? (e : Expr) : GoalM (Option Rat) := do
  if let some val ← getAssignment? (← get) e then
    -- Easy case when `e : Int`
    return some val
  /-
  **Note**: The following code assumes that instantiated mvars occurring in types
  have been instantiated.
  -/
  let type ← inferType e
  if type == Int.mkType then
    -- It should have been handled in the previous getAssignment?
    return none
  else if type == Nat.mkType then
    -- TODO: improve this case.
    for parent in (← getParents e).elems do
      let_expr NatCast.natCast _ inst _ := parent | pure ()
      let_expr instNatCastInt := inst | pure ()
      return (← getAssignment? (← get) parent)
  else
    -- It may be a `ToInt` term.
    if let some x := (← get').toIntVarMap.find? { expr := e } then
      -- If there is an int variable `x` for `toInt e`, use its assignment.
      if let some val ← getAssignment? (← get) x then
        return some val
    if let some info := (← get').toIntTermMap.find? { expr := e } then
      -- If `toInt e` is an integer value, return it.
      if let some val ← getIntValue? info.eToInt then
        return some val
      -- If `toInt e` is a composite int term that has been internalized
      -- and has an assignment, return it.
      if (← alreadyInternalized info.eToInt) then
        if let some val ← getAssignment? (← get) info.eToInt then
          return some val
  return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MBTC/Variant90e0ba468323513b5cff73d124fd7dc88031bc417be6d17bfa7456544567e187.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58ee9b16cc88ba78373adc36e6184932887d9451` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
