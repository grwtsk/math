# collectGroundPattern?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c9c05cfef3e030b402ee8cc0ec58914c9ab7a6d1bdddf8db944229111b73f21",
  "kind": "def",
  "lexical_name": "collectGroundPattern?",
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
  "slug": "collectgroundpattern--2ec695bfb20edb0d8989282b",
  "source": {
    "blob": "654387b687c2b34418a7dd62aa266d893b498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1268,
    "line": 1233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ec695bfb20edb0d8989282b82c8113f3b45f98ec9a89d65898abfbed18971c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c9c05cfef3e030b402ee8cc0ec58914c9ab7a6d1bdddf8db944229111b73f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1233–1268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def collectGroundPattern? (proof : Expr) (xs : Array Expr) (searchPlaces : Array Expr) (symPrios: SymbolPriorities) (minPrio : Nat)
    : MetaM (Option (Expr × List HeadIndex)) := do
  unless (← checkCoverage proof xs.size {}) matches .ok do
    return none
  let go? : CollectorM (Option Expr) := do
    for place in searchPlaces do
      let place ← preprocessPattern place
      if let some r ← visit? place then
        return r
    return none
  let (some p, s) ← go? { proof, xs } |>.run' {} { symPrios, minPrio } |>.run {}
    | return none
  return some (p, s.symbols.toList)
where
  visit? (e : Expr) : CollectorM (Option Expr) := do
    match e with
    | .app .. =>
      let f := e.getAppFn
      if (← isPatternFnCandidate f) then
        let e ← NormalizePattern.normalizePattern e
        return some e
      else
        let args := e.getAppArgs
        for arg in args, argKind in (← NormalizePattern.getPatternArgKinds f args.size) do
          unless argKind.isSupport do
            if let some r ← visit? arg then
              return r
        return none
    | .forallE _ d b _ =>
      if (← pure e.isArrow <&&> isProp d <&&> isProp b) then
        if let some d ← visit? d then return d
        visit? b
      else
        return none
    | _ => return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean#L1233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654387b687c2b34418a7dd62aa266d893b498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
