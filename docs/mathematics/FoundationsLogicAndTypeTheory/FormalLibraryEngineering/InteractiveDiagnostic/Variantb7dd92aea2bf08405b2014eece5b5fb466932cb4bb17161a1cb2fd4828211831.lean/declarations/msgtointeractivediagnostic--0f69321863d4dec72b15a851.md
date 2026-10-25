# msgToInteractiveDiagnostic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cebb0df0cece0e764d7a6bcb5ba7e5fdcfaaaae62199a6711ddbae7a3e600b7",
  "kind": "def",
  "lexical_name": "msgToInteractiveDiagnostic",
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
  "slug": "msgtointeractivediagnostic--0f69321863d4dec72b15a851",
  "source": {
    "blob": "6856437cf31cb3e2c1982ae83b8142b4cc4af33b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 231,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f69321863d4dec72b15a851a897680739686bfd76d1423922e50574a1e1bc88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cebb0df0cece0e764d7a6bcb5ba7e5fdcfaaaae62199a6711ddbae7a3e600b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def msgToInteractiveDiagnostic (text : FileMap) (m : Message) (hasWidgets : Bool) :
    BaseIO InteractiveDiagnostic := do
  let low : Lsp.Position := text.leanPosToLspPos m.pos
  let fullHigh := text.leanPosToLspPos <| m.endPos.getD m.pos
  let high : Lsp.Position := match m.endPos with
    | some endPos =>
      /-
        Truncate messages that are more than one line long.
        This is a workaround to avoid big blocks of "red squiggly lines" on VS Code. -/
      let endPos := if !m.keepFullRange && endPos.line > m.pos.line then { line := m.pos.line + 1, column := 0 } else endPos
      text.leanPosToLspPos endPos
    | none        => low
  let range : Range := ⟨low, high⟩
  let fullRange : Range := ⟨low, fullHigh⟩
  let severity? := some <| match m.severity with
    | .information => .information
    | .warning     => .warning
    | .error       => .error
  let isSilent? := if m.isSilent then some true else none
  let source? := some "Lean 4"
  let tags? :=
    if m.data.isDeprecationWarning then some #[.deprecated]
    else if m.data.isUnusedVariableWarning then some #[.unnecessary]
    else none
  let leanTags? :=
    if m.data.hasTag (· == `Tactic.unsolvedGoals) then some #[.unsolvedGoals]
    else if m.data.hasTag (· == `goalsAccomplished) then some #[.goalsAccomplished]
    else none
  let message := match (← msgToInteractive m.data hasWidgets |>.toBaseIO) with
    | .ok msg => msg
    | .error ex => TaggedText.text s!"[error when printing message: {ex.toString}]"
  let code? := (errorNameOfKind? m.kind).map (.string ·.toString)
  pure { range, fullRange? := some fullRange, severity?, source?, message, tags?, leanTags?, isSilent?, code? }

end Lean.Widget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InteractiveDiagnostic/Variantb7dd92aea2bf08405b2014eece5b5fb466932cb4bb17161a1cb2fd4828211831.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6856437cf31cb3e2c1982ae83b8142b4cc4af33b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
