# unusedTacticLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:742329e154a6c4c9f2b9dc442fe411edf1c12fdf89789304057925250605c9a0",
  "kind": "def",
  "lexical_name": "unusedTacticLinter",
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
  "slug": "unusedtacticlinter--176d67eaa0da9432c30115c4",
  "source": {
    "blob": "32680b1216e1250efa1a7dec1bc99a1ae856e42f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant30fceb1dab4b2f7b0707c33ee8c0c66e628509b7ae026bbbf6fe54e246942e27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:176d67eaa0da9432c30115c4ccca0d4d426598403647502c5107579d3bbf0b61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant30fceb1dab4b2f7b0707c33ee8c0c66e628509b7ae026bbbf6fe54e246942e27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:742329e154a6c4c9f2b9dc442fe411edf1c12fdf89789304057925250605c9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unusedTacticLinter : Linter where run := withSetOptionIn fun stx => do
  unless Linter.getLinterValue linter.unusedTactic (← getOptions) && (← getInfoState).enabled do
    return
  if (← get).messages.hasErrors then
    return
  if stx.isOfKind ``Mathlib.Linter.UnusedTactic.«command#show_kind_» then return
  let env ← getEnv
  let cats := (Parser.parserExtension.getState env).categories
  -- These lookups may fail when the linter is run in a fresh, empty environment
  let some tactics := Parser.ParserCategory.kinds <$> cats.find? `tactic
    | return
  let some convs := Parser.ParserCategory.kinds <$> cats.find? `conv
    | return
  let trees ← getInfoTrees
  let exceptions := (← allowedRef.get).union <| allowedUnusedTacticExt.getState env
  let go : M Unit := do
    getTactics (← ignoreTacticKindsRef.get) (fun k => tactics.contains k || convs.contains k) stx
    eraseUsedTacticsList exceptions trees
  let (_, map) ← go.run {}
  let unused := map.toArray
  let key (r : String.Range) := (r.start.byteIdx, (-r.stop.byteIdx : Int))
  let mut last : String.Range := ⟨0, 0⟩
  for (r, stx) in let _ := @lexOrd; let _ := @ltOfOrd.{0}; unused.qsort (key ·.1 < key ·.1) do
    if stx.getKind ∈ [``Batteries.Tactic.unreachable, ``Batteries.Tactic.unreachableConv] then
      continue
    if last.start ≤ r.start && r.stop ≤ last.stop then continue
    Linter.logLint linter.unusedTactic stx m!"'{stx}' tactic does nothing"
    last := r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant30fceb1dab4b2f7b0707c33ee8c0c66e628509b7ae026bbbf6fe54e246942e27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant30fceb1dab4b2f7b0707c33ee8c0c66e628509b7ae026bbbf6fe54e246942e27.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32680b1216e1250efa1a7dec1bc99a1ae856e42f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
