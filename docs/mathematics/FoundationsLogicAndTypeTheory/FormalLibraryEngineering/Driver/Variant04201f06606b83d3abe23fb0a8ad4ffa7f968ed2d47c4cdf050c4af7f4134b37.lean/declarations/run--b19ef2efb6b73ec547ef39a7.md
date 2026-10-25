# run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dae1d25303413b70bdeb25047586df6d332d254cececa32a6d0c9b0075d8761c",
  "kind": "def",
  "lexical_name": "run",
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
  "slug": "run--b19ef2efb6b73ec547ef39a7",
  "source": {
    "blob": "f40d2df51a1f70abf8806cffeb4182a7e1338a28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant04201f06606b83d3abe23fb0a8ad4ffa7f968ed2d47c4cdf050c4af7f4134b37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b19ef2efb6b73ec547ef39a771659f78eef5bfca7aef7d3932a2467b474d3bb0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant04201f06606b83d3abe23fb0a8ad4ffa7f968ed2d47c4cdf050c4af7f4134b37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dae1d25303413b70bdeb25047586df6d332d254cececa32a6d0c9b0075d8761c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def run (goal : Grind.Goal) (ctx : Context) (scope : VCGen.Scope)
    (stepLimit? : Option Nat := none) (frameDB : FrameDB := {}) :
    Grind.GrindM Result := do
  let initState : State :=
    { fuel := match stepLimit? with | some n => .limited n | none => .unlimited, frameDB }
  -- VCGen temporarily violates the `SymM` folded-projections invariant: `reduceHead?`
  -- exposes kernel projections in intermediate terms and restores the invariant in its
  -- final result, so the `shareCommon` kernel-projection check is disabled.
  let ((), state) ← Sym.withoutFoldProjsCheck <| StateRefT'.run (ReaderT.run (work scope goal) ctx) initState
  _ ← state.invariants.mapIdxM fun idx mv => do
    mv.setTag (Name.mkSimple ("inv" ++ toString (idx + 1)))
  _ ← state.vcs.mapIdxM fun idx g => do
    g.mvarId.setTag (Name.mkSimple ("vc" ++ toString (idx + 1)) ++ (← g.mvarId.getTag).eraseMacroScopes)
  let vcs ← state.vcs.filterM (not <$> ·.mvarId.isAssigned)
  let unmatchedFrames := state.frameDB.entries.filterMap fun e =>
    if e.retired then none else some e.frameStx
  return {
    invariants := state.invariants,
    vcs,
    inlineHandledInvariants := state.inlineHandledInvariants,
    unmatchedFrames }

end VCGen

end Lean.Elab.Tactic.Do.Internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant04201f06606b83d3abe23fb0a8ad4ffa7f968ed2d47c4cdf050c4af7f4134b37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Driver/Variant04201f06606b83d3abe23fb0a8ad4ffa7f968ed2d47c4cdf050c4af7f4134b37.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f40d2df51a1f70abf8806cffeb4182a7e1338a28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
