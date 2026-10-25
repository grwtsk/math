# expandIfThenElse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca81c4789080f98d7a3fa3216c8c48879ebb7d70a58c164b87519631ab391c3e",
  "kind": "def",
  "lexical_name": "expandIfThenElse",
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
  "slug": "expandifthenelse--69f8993f63b68c11c4bab715",
  "source": {
    "blob": "eb4d93a03baa00c25cc250ae55a2e62b40530cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticsExtra/Variant1f028ce33f212c80897ef51b591953a5cc404b2b16c0f31bd99fdf4f249ff241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69f8993f63b68c11c4bab7156ac2a4b49f24db5e718e323b1b8f8cbfcd8577f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticsExtra/Variant1f028ce33f212c80897ef51b591953a5cc404b2b16c0f31bd99fdf4f249ff241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca81c4789080f98d7a3fa3216c8c48879ebb7d70a58c164b87519631ab391c3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private meta def expandIfThenElse
    (ifTk thenTk elseTk pos neg : Syntax)
    (mkIf : Term → Term → MacroM Term) : MacroM (TSyntax `tactic) := do
  let mkCase tk holeOrTacticSeq mkName : MacroM (Term × Array (TSyntax `tactic)) := do
    if holeOrTacticSeq.isOfKind `Lean.Parser.Term.syntheticHole then
      pure (⟨holeOrTacticSeq⟩, #[])
    else if holeOrTacticSeq.isOfKind `Lean.Parser.Term.hole then
      pure (← mkName, #[])
    else if tk.isMissing then
      pure (← `(sorry), #[])
    else
      let hole ← withFreshMacroScope mkName
      let holeId : Ident := ⟨hole.raw[1]⟩
      let tacticSeq : TSyntax `Lean.Parser.Tactic.tacticSeq := ⟨holeOrTacticSeq⟩
      -- Use `missing` for ref to ensure that the source range is the same as `holeOrTacticSeq`'s.
      let tacticSeq : TSyntax `Lean.Parser.Tactic.tacticSeq ← MonadRef.withRef .missing `(tacticSeq|
        with_annotate_state $tk skip
        ($tacticSeq))
      let case ← withRef tk <| `(tactic| case $holeId:ident =>%$tk $tacticSeq:tacticSeq)
      pure (hole, #[case])
  let (posHole, posCase) ← mkCase thenTk pos `(?pos)
  let (negHole, negCase) ← mkCase elseTk neg `(?neg)
  `(tactic| ((open Classical in refine%$ifTk $(← mkIf posHole negHole)); $[$(posCase ++ negCase)]*))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticsExtra/Variant1f028ce33f212c80897ef51b591953a5cc404b2b16c0f31bd99fdf4f249ff241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticsExtra/Variant1f028ce33f212c80897ef51b591953a5cc404b2b16c0f31bd99fdf4f249ff241.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb4d93a03baa00c25cc250ae55a2e62b40530cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
