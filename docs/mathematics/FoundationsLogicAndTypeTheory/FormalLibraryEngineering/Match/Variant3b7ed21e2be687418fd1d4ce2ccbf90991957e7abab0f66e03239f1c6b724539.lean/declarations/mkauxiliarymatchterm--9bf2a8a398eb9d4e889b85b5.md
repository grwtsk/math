# mkAuxiliaryMatchTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0de058f3dbc23971e718d209f4d9dd3f3391ffab386d571b362bb5a8b65b0e0f",
  "kind": "def",
  "lexical_name": "mkAuxiliaryMatchTerm",
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
  "slug": "mkauxiliarymatchterm--9bf2a8a398eb9d4e889b85b5",
  "source": {
    "blob": "b90443c3419121e51ff17eccf61f6f1727e06695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant3b7ed21e2be687418fd1d4ce2ccbf90991957e7abab0f66e03239f1c6b724539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bf2a8a398eb9d4e889b85b54566dd60b0e4d327b45ef6df29a198e9e95f3d0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant3b7ed21e2be687418fd1d4ce2ccbf90991957e7abab0f66e03239f1c6b724539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0de058f3dbc23971e718d209f4d9dd3f3391ffab386d571b362bb5a8b65b0e0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkAuxiliaryMatchTerm (parentTag : Name) (matchTac : Syntax) : MacroM (Term × Array Syntax) := do
  let matchAlts := matchTac[5]
  let alts      := matchAlts[0].getArgs
  let mut newAlts := #[]
  let mut nextIdx := 1
  let mut newCases := #[]
  for alt in alts do
    let alt := alt.setKind ``Parser.Term.matchAlt
    let holeOrTacticSeq := alt[3]
    -- must generate a separate mvar for each `| $patGroup | ... => ...` as they can have different local contexts
    for patGroup in alt[1].getSepArgs do
      let mut alt := alt.setArg 1 (mkNullNode #[patGroup])
      if holeOrTacticSeq.isOfKind ``Parser.Term.syntheticHole then
        pure ()
      else if holeOrTacticSeq.isOfKind ``Parser.Term.hole then
        let tag := if alts.size > 1 then parentTag ++ (`match).appendIndexAfter nextIdx else parentTag
        let holeName := mkIdentFrom holeOrTacticSeq tag
        let newHole ← `(?$holeName:ident)
        nextIdx := nextIdx + 1
        alt := alt.setArg 3 newHole
      else
        let newHole ← withFreshMacroScope `(?rhs)
        let newHoleId := newHole.raw[1]
        let newCase ← `(tactic|
          case $newHoleId:ident =>%$(alt[2])
            -- annotate `| ... =>` with state after `case`
            with_annotate_state $(mkNullNode #[alt[0], alt[2]]) skip
            $holeOrTacticSeq)
        newCases := newCases.push newCase
        alt := alt.setArg 3 newHole
      newAlts := newAlts.push alt
  let result  := matchTac.setKind ``Parser.Term.«match»
  let result  := result.setArg 5 (mkNode ``Parser.Term.matchAlts #[mkNullNode newAlts])
  return (result, newCases)

@[builtin_tactic Lean.Parser.Tactic.match]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant3b7ed21e2be687418fd1d4ce2ccbf90991957e7abab0f66e03239f1c6b724539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant3b7ed21e2be687418fd1d4ce2ccbf90991957e7abab0f66e03239f1c6b724539.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b90443c3419121e51ff17eccf61f6f1727e06695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
