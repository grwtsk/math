# checkAndAddSplitCandidate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baf9a705fe681f4d118d17335ec83f6f258729675c3065c52977dc54c01ebd8d",
  "kind": "def",
  "lexical_name": "checkAndAddSplitCandidate",
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
  "slug": "checkandaddsplitcandidate--b74df6023c5d8d3d3b4eb14e",
  "source": {
    "blob": "33164ab9d00bfdda88417ea42e8846b49b9d596d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b74df6023c5d8d3d3b4eb14e0b35679f80f4cda5e852f5297c4e21ea131ea7ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baf9a705fe681f4d118d17335ec83f6f258729675c3065c52977dc54c01ebd8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkAndAddSplitCandidate (e : Expr) : GoalM Unit := do
  match h : e with
  | .app .. =>
    if (← getConfig).splitIte && (isIte e || isDIte e) then
      addDefaultSplitCandidate e
      return ()
    if isMorallyIff e then
      addDefaultSplitCandidate e
      return ()
    if (← getConfig).splitMatch then
      if (← isMatcherApp e) then
        if let .reduced _ ← reduceMatcher? e then
          -- When instantiating `match`-equations, we add `match`-applications that can be reduced,
          -- and consequently don't need to be split.
          return ()
        else
          addDefaultSplitCandidate e
          return ()
    let .const declName _  := e.getAppFn | return ()
      if forbiddenSplitTypes.contains declName then
        return ()
      unless (← isInductivePredicate declName) do
        return ()
      if (← isSplit declName) then
        addDefaultSplitCandidate e
      else if (← getConfig).splitIndPred then
        addDefaultSplitCandidate e
  | .fvar .. =>
    let .const declName _ := (← whnf (← inferType e)).getAppFn | return ()
    if (← isSplit declName) then
      addDefaultSplitCandidate e
  | .forallE _ d _ _ =>
    let currSplitSource := (← readThe Context).splitSource
    if (← getConfig).splitImp then
      if (← isProp d) then
        addSplitCandidate (.imp e (h ▸ rfl) currSplitSource)
    else if (← Arith.isRelevantPred d) then
      -- TODO: should we keep lookahead after we implement non-chronological backtracking?
      if (← getConfig).lookahead then
        addLookaheadCandidate (.imp e (h ▸ rfl) currSplitSource)
      -- We used to add the `split` only if `lookahead := false`, but it was counterintuitive
      -- to make `grind` "stronger" by disabling a feature.
      addSplitCandidate (.imp e (h ▸ rfl) currSplitSource)
  | _ => pure ()

/--
If `e` is a `cast`-like term (e.g., `cast h a`), add `e ≍ a` to the to-do list.
It could be an E-matching theorem, but we want to ensure it is always applied since
we want to rely on the fact that `cast h a` and `a` are in the same equivalence class.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33164ab9d00bfdda88417ea42e8846b49b9d596d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
