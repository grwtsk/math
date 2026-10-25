# expandIfThenElse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abaeb59c33ad8a81a7a60ee8364a57d7ea8deeb96158dacd55c776bedeb62da7",
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
  "slug": "expandifthenelse--2b73e0f8f6a2b58c727db452",
  "source": {
    "blob": "91568ad24260855f7cd608921279594e4ca2a7c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticsExtra/Variantab37f8066e7a2eec53ed9573eb3c9dcae6f6b9d8cbb20820f3fc7c3233d2e2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b73e0f8f6a2b58c727db452af56d3f9e7d3b51aca45146f9e0a43c88d1d8838",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticsExtra/Variantab37f8066e7a2eec53ed9573eb3c9dcae6f6b9d8cbb20820f3fc7c3233d2e2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abaeb59c33ad8a81a7a60ee8364a57d7ea8deeb96158dacd55c776bedeb62da7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–51.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticsExtra/Variantab37f8066e7a2eec53ed9573eb3c9dcae6f6b9d8cbb20820f3fc7c3233d2e2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticsExtra/Variantab37f8066e7a2eec53ed9573eb3c9dcae6f6b9d8cbb20820f3fc7c3233d2e2eb.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91568ad24260855f7cd608921279594e4ca2a7c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
