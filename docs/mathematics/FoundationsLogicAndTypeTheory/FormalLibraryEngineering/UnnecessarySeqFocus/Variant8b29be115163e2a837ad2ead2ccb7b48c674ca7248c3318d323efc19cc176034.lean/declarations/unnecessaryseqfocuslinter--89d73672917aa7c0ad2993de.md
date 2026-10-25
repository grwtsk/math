# unnecessarySeqFocusLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c079c8a8f250a234bb7fc48561c13adb49de1699a28036566140aa7dd1633589",
  "kind": "def",
  "lexical_name": "unnecessarySeqFocusLinter",
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
  "slug": "unnecessaryseqfocuslinter--89d73672917aa7c0ad2993de",
  "source": {
    "blob": "f5ae8175c395067f3c1e0a9a96bf3e9240342ce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnnecessarySeqFocus/Variant8b29be115163e2a837ad2ead2ccb7b48c674ca7248c3318d323efc19cc176034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89d73672917aa7c0ad2993de5123e2e95eb5068d26720c92e1cb697d8875171a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnnecessarySeqFocus/Variant8b29be115163e2a837ad2ead2ccb7b48c674ca7248c3318d323efc19cc176034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c079c8a8f250a234bb7fc48561c13adb49de1699a28036566140aa7dd1633589`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unnecessarySeqFocusLinter : Linter where run := withSetOptionIn fun stx => do
  unless getLinterUnnecessarySeqFocus (← getLinterOptions) && (← getInfoState).enabled do
    return
  if (← get).messages.hasErrors then
    return
  let trees ← getInfoTrees
  let env ← getEnv
  let go {ω} : M ω Unit := do
    getTactics stx
    markUsedTacticsList env trees
  let (_, map) := runST fun _ => go.run {}
  let unused := map.fold (init := #[]) fun acc r { stx, used } =>
    if used then acc.push (stx[1].getRange?.getD r, stx[1]) else acc
  let key (r : Lean.Syntax.Range) := (r.start.byteIdx, (-r.stop.byteIdx : Int))
  let mut last : Lean.Syntax.Range := ⟨0, 0⟩
  for (r, stx) in let _ := @lexOrd; let _ := @ltOfOrd.{0}; unused.qsort (key ·.1 < key ·.1) do
    if last.start ≤ r.start && r.stop ≤ last.stop then continue
    logLint linter.unnecessarySeqFocus stx
      "Used `tac1 <;> tac2` where `(tac1; tac2)` would suffice"
    last := r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnnecessarySeqFocus/Variant8b29be115163e2a837ad2ead2ccb7b48c674ca7248c3318d323efc19cc176034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnnecessarySeqFocus/Variant8b29be115163e2a837ad2ead2ccb7b48c674ca7248c3318d323efc19cc176034.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ae8175c395067f3c1e0a9a96bf3e9240342ce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
