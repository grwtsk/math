# finalizeProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80f5392ad331a4356f792b91a1bbcd724acbb45d31fbaf8d385c2effa0788040",
  "kind": "def",
  "lexical_name": "finalizeProof",
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
  "slug": "finalizeproof--03f27112ef4c2d9b7f1efeb4",
  "source": {
    "blob": "12166cf0bf92c68b88685688094a2a0253b379a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03f27112ef4c2d9b7f1efeb4d5ec52a9433d32f58bc8a286fb07c8998934ffd3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80f5392ad331a4356f792b91a1bbcd724acbb45d31fbaf8d385c2effa0788040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finalizeProof : SearchM Q Unit := do
  (← getRootMVarId).withContext do
    extractProof
    let (some proof) ← getProof? | throwError
      "aesop: internal error: root goal is proven but its metavariable is not assigned"
    if (← instantiateMVars proof).hasExprMVar then
      let inner :=
        m!"Proof: {proof}\nUnassigned metavariables: {(← getMVarsNoDelayed proof).map (·.name)}"
      throwError "aesop: internal error: extracted proof has metavariables.{indentD inner}"
    withPPAnalyze do
      aesop_trace[proof] "Final proof:{indentExpr proof}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant3811babe0ccc03fc9eecc2b08ff9f0174a779524d5612635c73e7789c76e3ca1.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12166cf0bf92c68b88685688094a2a0253b379a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
