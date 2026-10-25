# resume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3994405eaf2d7b5888e63af6159ddbc9b78a8cb81c8ffb87d16503f0028db576",
  "kind": "def",
  "lexical_name": "resume",
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
  "slug": "resume--7d2b399be272c88dbb3c4bbc",
  "source": {
    "blob": "e608408e1c1d850abed1de7230db8288ff187fd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 659,
    "line": 643,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d2b399be272c88dbb3c4bbc9befb854cb82b5a6590fb85e717f6436428758a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3994405eaf2d7b5888e63af6159ddbc9b78a8cb81c8ffb87d16503f0028db576`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resume : SynthM Unit := do
  let (cNode, answer) ← getNextToResume
  match cNode.subgoals with
  | []         => panic! "resume found no remaining subgoals"
  | mvar::rest =>
    match (← tryAnswer cNode.mctx mvar answer) with
    | none      => return ()
    | some mctx =>
      withMCtx mctx do
      let goal    ← inferType cNode.mvar
      let subgoal ← inferType mvar
      withTraceNode `Meta.synthInstance.resume
        (fun _ => withMCtx cNode.mctx do
          return m!"propagating {← instantiateMVars answer.resultType} to subgoal {← instantiateMVars subgoal} of {← instantiateMVars goal}") do
      trace[Meta.synthInstance.resume] "size: {cNode.size + answer.size}"
      consume { key := cNode.key, mvar := cNode.mvar, subgoals := rest, mctx, size := cNode.size + answer.size }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e608408e1c1d850abed1de7230db8288ff187fd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
