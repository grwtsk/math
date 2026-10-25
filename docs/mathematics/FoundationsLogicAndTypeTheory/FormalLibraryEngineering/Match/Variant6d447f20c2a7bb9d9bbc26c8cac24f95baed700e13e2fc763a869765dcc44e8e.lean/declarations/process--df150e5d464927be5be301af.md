# process

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c20760cc83366eef2cd9182c50b8bc1b9a586385a93e55ebbba52ae6bb17dbf",
  "kind": "def",
  "lexical_name": "process",
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
  "slug": "process--df150e5d464927be5be301af",
  "source": {
    "blob": "b3f746082ba1cc8331c685092032854f255b087f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1060,
    "line": 960,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df150e5d464927be5be301af262df5eab1f8dbea904b2b5d2476e73f8dd4e481",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c20760cc83366eef2cd9182c50b8bc1b9a586385a93e55ebbba52ae6bb17dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 960–1060.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def process (p : Problem) : StateRefT State MetaM Unit := do
  traceState p
  if isDone p then
    traceStep ("leaf")
    processLeaf p
    return

  if (← isExFalsoTransition p) then
    traceStep ("ex falso")
    let p ← processExFalso p
    process p
    return

  if hasIndependentPatterns p then
    traceStep ("processing independent prefixes of patterns")
    let p ← processIndependentPatterns p
    process p
    return

  if isFirstVarDoneTransition p then
    traceStep ("first var done")
    let p := processFirstVarDone p
    process p
    return

  if backward.match.rowMajor.get (← getOptions) then
    match firstRefutablePattern p with
    | some i =>
      if i > 0 then
        traceStep ("move var to front")
        process (moveToFront p i)
        return
    | none =>
      if let alt::(overlapped@(_::_)) := p.alts then
        traceStep ("drop all but first alt")
        -- all patterns in first alternative are irrefutable, we can drop all other alts
        let p := { p with alts := [alt] }
        for otherAlt in overlapped do
          modify fun s => { s with overlaps := s.overlaps.insert alt.idx otherAlt.idx }
        process p
        return

  if (← isNatValueTransition p) then
    traceStep ("nat value to constructor")
    process (← expandNatValuePattern p)
    return

  if (← isIntValueTransition p) then
    traceStep ("int value to constructor")
    process (← expandIntValuePattern p)
    return

  if (← isFinValueTransition p) then
    traceStep ("fin value to constructor")
    process (← expandFinValuePattern p)
    return

  if (← isBitVecValueTransition p) then
    traceStep ("bitvec value to constructor")
    process (← expandBitVecValuePattern p)
    return

  if !isNextVar p then
    traceStep ("non variable")
    let p ← processNonVariable p
    process p
    return

  if (← isConstructorTransition p) then
    let ps ← processConstructor p
    tracedForM ps process
    return

  if p.alts.isEmpty then
    -- Note that for inductive types, `isConstructorTransition` does something on empty matches
    -- For all others, drop the variable here
    traceStep ("empty match transition")
    let p := { p with vars := p.vars.tail! }
    process p
    return

  if isValueTransition p then
    let ps ← processValue p
    tracedForM ps process
    return

  if isArrayLitTransition p then
    let ps ← processArrayLit p
    tracedForM ps process
    return

  if (← hasNatValPattern p) then
    -- This branch is reachable when `p`, for example, is just values without an else-alternative.
    -- We added it just to get better error messages.
    traceStep ("nat value to constructor")
    process (← expandNatValuePattern p)
    return

  checkNextPatternTypes p
  throwNonSupported p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant6d447f20c2a7bb9d9bbc26c8cac24f95baed700e13e2fc763a869765dcc44e8e.lean#L960).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3f746082ba1cc8331c685092032854f255b087f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
