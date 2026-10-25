# tacticCodeActionProvider

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:129e7328762e8c3668a29d8a74c7fb5d7611d5ecdd8c42620880ea2d9ddfae9e",
  "kind": "def",
  "lexical_name": "tacticCodeActionProvider",
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
  "slug": "tacticcodeactionprovider--dcd6a3b007ab4f4880f66404",
  "source": {
    "blob": "05fc1bf89f36776a75e61313ceafef493f4b1f75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta49b213c098ceaff81162549a30a4b3bb40c9d00d887c0c414c58abeb7aa3d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcd6a3b007ab4f4880f66404e7e20354aea6aba15c2c517c09333de35d6570dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta49b213c098ceaff81162549a30a4b3bb40c9d00d887c0c414c58abeb7aa3d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:129e7328762e8c3668a29d8a74c7fb5d7611d5ecdd8c42620880ea2d9ddfae9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[code_action_provider] def tacticCodeActionProvider : CodeActionProvider := fun params snap => do
  let doc ← readDoc
  let startPos := doc.meta.text.lspPosToUtf8Pos params.range.start
  let endPos := doc.meta.text.lspPosToUtf8Pos params.range.end
  let pointerCol :=
    if params.range.start.line == params.range.end.line then
      max params.range.start.character params.range.end.character
    else 0
  let some result := findTactic?
    (fun pos => (doc.meta.text.utf8PosToLspPos pos).character ≤ pointerCol)
    ⟨startPos, endPos⟩ snap.stx | return #[]
  let tgtTac := match result with
    | .tactic (tac :: _)
    | .tacticSeq _ _ (_ :: tac :: _) => tac.1
    | _ => unreachable!
  let tgtRange := tgtTac.getRange?.get!
  have info := findInfoTree? tgtTac.getKind tgtRange none snap.infoTree (canonicalOnly := true)
    fun _ info => info matches .ofTacticInfo _
  let some (ctx, node@(.node (.ofTacticInfo info) _)) := info | return #[]
  let mut out := #[]
  match result with
  | .tactic stk@((tac, _) :: _) => do
    let ctx := { ctx with mctx := info.mctxBefore }
    let actions := (tacticCodeActionExt.getState snap.env).2
    if let some arr := actions.onTactic.find? tac.getKind then
      for act in arr do
        try out := out ++ (← act params snap ctx stk node) catch _ => pure ()
    for act in actions.onAnyTactic do
      try out := out ++ (← act params snap ctx stk node) catch _ => pure ()
  | .tacticSeq _ i stk@((seq, _) :: _) =>
    let (ctx, goals) ← if 2*i < seq.getNumArgs then
      let stx := seq[2*i]
      let some stxRange := stx.getRange? | return #[]
      let some (ctx, .node (.ofTacticInfo info') _) :=
          findInfoTree? stx.getKind stxRange ctx node fun _ info => (info matches .ofTacticInfo _)
        | return #[]
      pure ({ ctx with mctx := info'.mctxBefore }, info'.goalsBefore)
    else
      pure ({ ctx with mctx := info.mctxAfter }, info.goalsAfter)
    for act in (tacticSeqCodeActionExt.getState snap.env).2 do
      try out := out ++ (← act params snap ctx i stk goals) catch _ => pure ()
  | _ => unreachable!
  pure out
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta49b213c098ceaff81162549a30a4b3bb40c9d00d887c0c414c58abeb7aa3d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Varianta49b213c098ceaff81162549a30a4b3bb40c9d00d887c0c414c58abeb7aa3d63.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05fc1bf89f36776a75e61313ceafef493f4b1f75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
