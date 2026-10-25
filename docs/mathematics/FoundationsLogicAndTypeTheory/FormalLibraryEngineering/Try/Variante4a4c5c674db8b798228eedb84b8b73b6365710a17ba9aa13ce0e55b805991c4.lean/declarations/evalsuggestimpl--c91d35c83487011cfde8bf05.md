# evalSuggestImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18e1ab15a3f3834a12f32ab9916f65b1120f9dd4904045cb50dd787290881c24",
  "kind": "def",
  "lexical_name": "evalSuggestImpl",
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
  "slug": "evalsuggestimpl--c91d35c83487011cfde8bf05",
  "source": {
    "blob": "7d5de50f96ef6c968206149dcfb89e64150fe400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 880,
    "line": 838,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c91d35c83487011cfde8bf053fbe1d2fa939dcfcc15c128cdd029449fc37ea4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18e1ab15a3f3834a12f32ab9916f65b1120f9dd4904045cb50dd787290881c24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 838–880.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def evalSuggestImpl : TryTactic := evalSuggestCore
where
  evalSuggestCore (tac : TSyntax `tactic) : TryTacticM (TSyntax `tactic) := do
    trace[try.debug] "{tac}"
    match (← getEvalFns tac.raw.getKind) with
    | [] =>
      -- No registered handler: run atomically. Atomic execution may leave goals open, so
      -- enforce the terminal-mode invariant here.
      let r ← withOriginalHeartbeats (evalSuggestAtomic tac)
      checkTerminalGoals
      return r
    | evalFns => eval tac (← Tactic.saveState) evalFns #[]

  throwExs (tac : TSyntax `tactic) (failures : Array EvalTacticFailure) : TryTacticM (TSyntax `tactic) := do
    if h : 0 < failures.size  then
      let fail := failures[failures.size - 1]
      fail.state.restore (restoreInfo := true)
      throw fail.exception
    else
      throwErrorAt tac "unexpected syntax {indentD tac}"

  eval (tac : TSyntax `tactic) (s : SavedState) (evalFns : List _) (failures : Array EvalTacticFailure) : TryTacticM (TSyntax `tactic) := do
    match evalFns with
    | [] => throwExs tac failures
    | evalFn::evalFns =>
      try
        withTheReader Tactic.Context ({ · with elaborator := evalFn.declName }) do
          evalFn.value tac
      catch ex => match ex with
      | .error .. =>
        let failures := failures.push ⟨ex, ← Tactic.saveState⟩
        s.restore (restoreInfo := true); eval tac s evalFns failures
      | .internal id _ =>
        if id == unsupportedSyntaxExceptionId then
          s.restore (restoreInfo := true); eval tac s evalFns failures
        else if id == abortTacticExceptionId then
          let failures := failures.push ⟨ex, ← Tactic.saveState⟩
          s.restore (restoreInfo := true); eval tac s evalFns failures
        else
          throw ex

/-! `evalAndSuggest` frontend -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean#L838).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d5de50f96ef6c968206149dcfb89e64150fe400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
