# assignUnassignedLevelMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b9f53081f6027d5ae5a70eb97cd30c050217a1e81b5f26bd02b27f8745963db",
  "kind": "def",
  "lexical_name": "assignUnassignedLevelMVars",
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
  "slug": "assignunassignedlevelmvars--49fa94140e215cbf4981f93d",
  "source": {
    "blob": "e4b44c9d3be89b0d60e18832499bb47a33fc7dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 442,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49fa94140e215cbf4981f93de6c299a04abff378a8de5c9393d988309775d5bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b9f53081f6027d5ae5a70eb97cd30c050217a1e81b5f26bd02b27f8745963db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def assignUnassignedLevelMVars (us : Array LMVarId) (proof : Expr) (prop : Expr) : GoalM (Array (Expr × Expr)) := do
  let us := us.map mkLevelMVar
  let cs ← collectConstsWithLevelMVars prop
  let mut candidates : Array (Expr × Array Expr) := #[]
  for c in cs do
    let declName := c.constName!
    if let some apps := (← getThe Goal).appMap.find? (.const declName) then
      let consts : Std.HashSet Expr := Std.HashSet.ofList <| apps.map Expr.getAppFn
      candidates := candidates.push (c, consts.toArray)
  candidates := candidates.qsort fun (c₁, cs₁) (c₂, cs₂) =>
    if cs₁.size == cs₂.size then c₁.quickLt c₂ else cs₁.size < cs₂.size
  let rec search (us : Array Level) (i : Nat) : StateRefT (Array (Expr × Expr)) MetaM Unit := do
    checkSystem "grind"
    if h : i < candidates.size then
      let (c, cs) := candidates[i]
      for c' in cs do
        let saved ← getMCtx
        try
          if (← isDefEq c c') then
            -- update pending universe metavariables
            let us ← us.filterMapM fun u => do
              let u ← instantiateLevelMVars u
              if (← hasAssignableLevelMVar u) then
                return some u
              else
                return none
            if us.isEmpty then
              -- all universe metavariables have been assigned
              let prop ← instantiateMVars prop
              let proof ← instantiateMVars proof
              modify (·.push (proof, prop))
              return () -- Found instantiation
            search us (i+1)
        finally
          setMCtx saved
    else
      return ()
  let (_ , s) ← search us 0 |>.run #[]
  return s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatch/Variant5470e79a5fd568493a54d3d63b8903fc7e64cbb3ae4e95399eee7662aa7806cb.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b44c9d3be89b0d60e18832499bb47a33fc7dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
