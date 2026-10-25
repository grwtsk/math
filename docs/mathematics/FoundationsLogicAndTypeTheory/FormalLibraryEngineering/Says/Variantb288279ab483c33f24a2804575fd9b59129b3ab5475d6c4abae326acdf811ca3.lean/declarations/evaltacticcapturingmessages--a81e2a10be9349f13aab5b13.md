# evalTacticCapturingMessages

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:576231276863778f492d6fcb23f5e6198387e704c06a9301f6fa1db2863cf387",
  "kind": "def",
  "lexical_name": "evalTacticCapturingMessages",
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
  "slug": "evaltacticcapturingmessages--a81e2a10be9349f13aab5b13",
  "source": {
    "blob": "800ac2cdfa1c75d1071c4591c72daa79e95ac954",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a81e2a10be9349f13aab5b13a6e8e9aa32be60d993ccfc6ebace3d10cc4aed81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:576231276863778f492d6fcb23f5e6198387e704c06a9301f6fa1db2863cf387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalTacticCapturingMessages (tac : TSyntax `tactic) (only : Message → Bool := fun _ => true) :
    TacticM (List Message) := do
  let mut msgs ← modifyGetThe Core.State fun st => (st.messages, { st with messages := {} })
  try
    evalTactic tac
    let (capture, leave) := (← getThe Core.State).messages.toList.partition only
    msgs := leave.foldl (·.add) msgs
    return capture
  catch e =>
    msgs := msgs ++ (← getThe Core.State).messages
    throw e
  finally
    modifyThe Core.State fun st => { st with messages := msgs }

/--
Run `evalTactic`, capturing any new info messages.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Says/Variantb288279ab483c33f24a2804575fd9b59129b3ab5475d6c4abae326acdf811ca3.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `800ac2cdfa1c75d1071c4591c72daa79e95ac954` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
