# checkRenderedScriptIfEnabled

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f9d1cc6d05a948645198a5cee9aa23cfd321c5b1fd041115bfff27d60bf86b8",
  "kind": "def",
  "lexical_name": "checkRenderedScriptIfEnabled",
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
  "slug": "checkrenderedscriptifenabled--fffa870253a65cc490f5c4b7",
  "source": {
    "blob": "2d38906461def3ef093e037739a357b182ce3471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fffa870253a65cc490f5c4b71928dd778160eac6f70b8479d44cb54792baae8b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f9d1cc6d05a948645198a5cee9aa23cfd321c5b1fd041115bfff27d60bf86b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkRenderedScriptIfEnabled (script : TSyntax ``tacticSeq)
    (preState : Meta.SavedState) (goal : MVarId) (expectCompleteProof : Bool) :
    MetaM Unit := do
  if ! (← Check.script.isEnabled) then
    return
  let go : TacticM Unit := do
    setGoals [goal]
    evalTactic script
    if expectCompleteProof && ! (← getUnsolvedGoals).isEmpty then
      throwError "script executed successfully but did not solve the main goal"
  try
    show MetaM Unit from withoutModifyingState do
      preState.restore
      go.run { elaborator := .anonymous, recover := false }
        |>.run' { goals := [goal] }
        |>.run'
  catch e => throwError
    "{Check.script.name}: error while executing generated script:{indentD e.toMessageData}"

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Check/Variant411252b0d77ea0088b0c49ea73720ce2abe70d3987ca46341577ff610c66e90b.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d38906461def3ef093e037739a357b182ce3471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
