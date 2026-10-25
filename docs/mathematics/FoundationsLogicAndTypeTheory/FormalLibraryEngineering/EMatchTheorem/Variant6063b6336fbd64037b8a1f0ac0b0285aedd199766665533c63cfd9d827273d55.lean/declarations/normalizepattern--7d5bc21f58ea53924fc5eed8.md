# normalizePattern?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eea196de35ea7628bd62c937c86a89ed1ca6e5844d615eb1be6166b1ea2faa06",
  "kind": "def",
  "lexical_name": "normalizePattern?",
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
  "slug": "normalizepattern--7d5bc21f58ea53924fc5eed8",
  "source": {
    "blob": "654387b687c2b34418a7dd62aa266d893b498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1158,
    "line": 1111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d5bc21f58ea53924fc5eed831aba95e0d2062abdd9178e9f57fa97af95a507e",
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

Occurrence: `declaration:eea196de35ea7628bd62c937c86a89ed1ca6e5844d615eb1be6166b1ea2faa06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1111–1158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def normalizePattern? (e : Expr) (argKinds : Array NormalizePattern.PatternArgKind)
    (minIndexable : Bool) : CollectorM (Option Expr) := do
  let p := e.abstract (← read).xs
  unless p.hasLooseBVars do
    trace[grind.debug.ematch.pattern] "skip, does not contain pattern variables"
    return none
  -- Normalization state before normalizing `e`
  let stateBefore ← getThe NormalizePattern.State
  let failed : CollectorM (Option Expr) := do
    set stateBefore
    return none
  -- Returns the number of new variables with respect to `saved`
  let getNumNewBVars : NormalizePattern.M Nat := do
    return sizeOfDiff (← get).bvarsFound stateBefore.bvarsFound
  try
    let p ← NormalizePattern.normalizePattern p
    let numNewBVars ← getNumNewBVars
    if numNewBVars == 0 then
      trace[grind.debug.ematch.pattern] "skip, no new variables covered"
      return (← failed)
    if minIndexable then
      let stateAfter ← getThe NormalizePattern.State
      /-
      Checks whether one of `e`s children subsumes it. We say a child `c` subsumes `e`
      1- `e` and `c` have the same new pattern variables. We say a pattern variable is new if it is not in `stateOld.bvarsFound`.
      2- `c` is not a support argument. See `NormalizePattern.getPatternSupportMask` for definition.
      3- `c` is not an offset pattern.
      4- `c` is not a bound variable.
      5- `c` is also a candidate.
      -/
      for arg in e.getAppArgs, argKind in argKinds do
        unless argKind.isSupport do
        unless arg.isFVar do
        unless isOffsetPattern? arg |>.isSome do
        if (← isPatternFnCandidate arg.getAppFn) then
          let pArg := arg.abstract (← read).xs
          set stateBefore
          discard <|  NormalizePattern.normalizePattern pArg
          let numArgNewBVars ← getNumNewBVars
          if numArgNewBVars == numNewBVars then
            trace[grind.debug.ematch.pattern] "skip, subsumed by argument"
            return (← failed)
      set stateAfter
    return some p
  catch ex =>
    trace[grind.debug.ematch.pattern] "skip, exception during normalization{indentD ex.toMessageData}"
    failed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean#L1111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654387b687c2b34418a7dd62aa266d893b498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
