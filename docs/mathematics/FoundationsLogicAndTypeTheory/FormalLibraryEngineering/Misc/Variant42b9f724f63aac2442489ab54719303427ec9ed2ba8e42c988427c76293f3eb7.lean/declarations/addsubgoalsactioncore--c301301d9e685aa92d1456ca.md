# addSubgoalsActionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:103f9e58dbd39eb6c151c6f22a9d4d18316220d0e3a2c3c3febd72d3c2799bca",
  "kind": "def",
  "lexical_name": "addSubgoalsActionCore",
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
  "slug": "addsubgoalsactioncore--c301301d9e685aa92d1456ca",
  "source": {
    "blob": "8c27fb1a6197ad7f4f21a3c41d8dabea27b7af08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 432,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c301301d9e685aa92d1456ca6185ead2d3949c7d33acf897b783dd34e4b46b15",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:103f9e58dbd39eb6c151c6f22a9d4d18316220d0e3a2c3c3febd72d3c2799bca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addSubgoalsActionCore (params : Lsp.CodeActionParams)
  (i : Nat) (stk : Syntax.Stack) (goals : List MVarId) : RequestM (Array LazyCodeAction) := do
  -- If there are zero goals remaining, no need to do anything
  -- If there is one goal remaining, the user can just keep typing and subgoals are not helpful
  unless goals.length > 1 do return #[]
  let seq := stk.head!.1
  let nargs := (seq.getNumArgs + 1) / 2
  unless i == nargs do -- only trigger at the end of a block
    -- or if there is only a `done` or `sorry` terminator
    unless i + 1 == nargs && [
        ``Parser.Tactic.done, ``Parser.Tactic.tacticSorry, ``Parser.Tactic.tacticAdmit
      ].contains seq[2*i].getKind do
      return #[]
  let some startPos := seq[0].getPos? true | return #[]
  let doc ← readDoc
  let eager := { title := "Add subgoals", kind? := "quickfix" }
  pure #[{
    eager
    lazy? := some do
      let indent := "\n".pushn ' ' (doc.meta.text.toPosition startPos).column
      let mut (range, newText) := (default, "")
      if let some tac := seq.getArgs[2*i]? then
        let some range2 := tac.getRange? true | return eager
        range := range2
      else
        let trimmed := seq.modifyArgs (·[:2*i])
        let some tail := trimmed.getTailPos? true | return eager
        (range, newText) := (⟨tail, tail⟩, indent)
        let cursor := doc.meta.text.lspPosToUtf8Pos params.range.end
        if range.stop ≤ cursor && cursor.1 ≤ range.stop.1 + trimmed.getTrailingSize then
          range := { range with stop := cursor }
      newText := newText ++ "· done"
      for _ in goals.tail! do
        newText := newText ++ indent ++ "· done"
      pure { eager with
        edit? := some <|.ofTextEdit doc.versionedIdentifier {
          range := doc.meta.text.utf8RangeToLspRange range
          newText
        }
      }
  }]

@[inherit_doc addSubgoalsActionCore, tactic_code_action]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variant42b9f724f63aac2442489ab54719303427ec9ed2ba8e42c988427c76293f3eb7.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c27fb1a6197ad7f4f21a3c41d8dabea27b7af08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
