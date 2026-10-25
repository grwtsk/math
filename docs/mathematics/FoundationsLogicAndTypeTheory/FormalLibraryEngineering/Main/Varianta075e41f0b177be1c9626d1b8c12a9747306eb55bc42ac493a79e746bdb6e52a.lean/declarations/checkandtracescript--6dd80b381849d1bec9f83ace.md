# checkAndTraceScript

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6b4f2c4d3abd1bbe73727c6bb51efa4978caf93598e55bceaebc47a79bf7836",
  "kind": "def",
  "lexical_name": "checkAndTraceScript",
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
  "slug": "checkandtracescript--6dd80b381849d1bec9f83ace",
  "source": {
    "blob": "f81a81da774f08e4d2d01e61836f43656e4c2e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta075e41f0b177be1c9626d1b8c12a9747306eb55bc42ac493a79e746bdb6e52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6dd80b381849d1bec9f83ace801b76273c7ed0a710711c1566b0c3bf436c61a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta075e41f0b177be1c9626d1b8c12a9747306eb55bc42ac493a79e746bdb6e52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6b4f2c4d3abd1bbe73727c6bb51efa4978caf93598e55bceaebc47a79bf7836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkAndTraceScript (uscript : UScript)
    (sscript? : Option (TSyntax ``tacticSeq × ScriptGenerated)) (preState : Meta.SavedState)
    (goal : MVarId) (options : Aesop.Options') (expectCompleteProof : Bool)
    (tacticName : String) :
    m Unit := do
  if let some (script, scriptGenerated) := sscript? then
    recordScriptGenerated scriptGenerated
    if options.traceScript then
      addTryThisTacticSeqSuggestion (← getRef) script
    checkRenderedScriptIfEnabled script preState goal
      (expectCompleteProof := expectCompleteProof)
  else
    if options.traceScript then
      let tacticSeq ← uscript.renderTacticSeq preState goal
      addTryThisTacticSeqSuggestion (← getRef) tacticSeq
    if ← Check.script.isEnabled then
      throwError "{Check.script.name}: structuring the script failed"
    else if options.traceScript then
      logWarning m!"{tacticName}: structuring the script failed. Reporting unstructured script."

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta075e41f0b177be1c9626d1b8c12a9747306eb55bc42ac493a79e746bdb6e52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta075e41f0b177be1c9626d1b8c12a9747306eb55bc42ac493a79e746bdb6e52a.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81a81da774f08e4d2d01e61836f43656e4c2e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
