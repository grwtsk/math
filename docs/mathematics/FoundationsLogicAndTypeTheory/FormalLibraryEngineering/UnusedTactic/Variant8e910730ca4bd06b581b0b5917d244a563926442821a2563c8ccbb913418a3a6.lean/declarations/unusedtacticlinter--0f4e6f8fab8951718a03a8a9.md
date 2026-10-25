# unusedTacticLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e88d80f39780b51f744c92f4cfa782016afb358a9a57ce4cf75d34011fe7bbd5",
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
  "slug": "unusedtacticlinter--0f4e6f8fab8951718a03a8a9",
  "source": {
    "blob": "f4337e28c94157254c4de265deff795cd24e9a02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant8e910730ca4bd06b581b0b5917d244a563926442821a2563c8ccbb913418a3a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f4e6f8fab8951718a03a8a9418008c847251fb8bb911bc91adde4f89990425e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant8e910730ca4bd06b581b0b5917d244a563926442821a2563c8ccbb913418a3a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e88d80f39780b51f744c92f4cfa782016afb358a9a57ce4cf75d34011fe7bbd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unusedTacticLinter : Linter where run := withSetOptionIn fun stx => do
  unless getLinterValue linter.unusedTactic (← getLinterOptions) && (← getInfoState).enabled do
    return
  if (← get).messages.hasErrors then
    return
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
    eraseUsedTactics exceptions trees
  let (_, map) ← go.run {}
  let unused := map.toArray
  let key (r : Lean.Syntax.Range) := (r.start.byteIdx, (-r.stop.byteIdx : Int))
  let mut last : Lean.Syntax.Range := ⟨0, 0⟩
  for (r, stx) in let _ := @lexOrd; let _ := @ltOfOrd.{0}; unused.qsort (key ·.1 < key ·.1) do
    if stx.getKind ∈ [``Batteries.Tactic.unreachable, ``Batteries.Tactic.unreachableConv] then
      continue
    if last.start ≤ r.start && r.stop ≤ last.stop then continue
    Linter.logLint linter.unusedTactic stx m!"Unused tactic linter: `{stx}` does nothing"
    last := r

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant8e910730ca4bd06b581b0b5917d244a563926442821a2563c8ccbb913418a3a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnusedTactic/Variant8e910730ca4bd06b581b0b5917d244a563926442821a2563c8ccbb913418a3a6.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4337e28c94157254c4de265deff795cd24e9a02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
