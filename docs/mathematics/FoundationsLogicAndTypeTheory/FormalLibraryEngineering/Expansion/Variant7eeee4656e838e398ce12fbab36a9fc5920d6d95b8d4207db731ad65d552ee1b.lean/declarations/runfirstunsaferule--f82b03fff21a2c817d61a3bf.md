# runFirstUnsafeRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a981d9220c5d60a3e2928d3aa29b2b3be12b7d5022b4df91a366aa6900e7ef5",
  "kind": "def",
  "lexical_name": "runFirstUnsafeRule",
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
  "slug": "runfirstunsaferule--f82b03fff21a2c817d61a3bf",
  "source": {
    "blob": "5a1b369f88854e94992493beda067e09f4dd347f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant7eeee4656e838e398ce12fbab36a9fc5920d6d95b8d4207db731ad65d552ee1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f82b03fff21a2c817d61a3bf080bf44290e58e73b705fe4d6ed662037393109c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant7eeee4656e838e398ce12fbab36a9fc5920d6d95b8d4207db731ad65d552ee1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a981d9220c5d60a3e2928d3aa29b2b3be12b7d5022b4df91a366aa6900e7ef5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def runFirstUnsafeRule (postponedSafeRules : Array PostponedSafeRule)
    (parentRef : GoalRef) : SearchM Q RuleResult := do
  parentRef.updateForwardState .unsafe
  let queue ← selectUnsafeRules postponedSafeRules parentRef
  let (remainingQueue, result) ← loop queue
  parentRef.modify λ g => g.setUnsafeQueue remainingQueue
  if remainingQueue.isEmpty then
    let parent ← parentRef.get
    if ← pure (! parent.state.isProven) <&&> parent.isUnprovableNoCache then
      parentRef.markUnprovable
  return result
  where
    loop (queue : UnsafeQueue) : SearchM Q (UnsafeQueue × RuleResult) := do
      let (some (r, queue)) := Subarray.popHead? queue
        | return (queue, RuleResult.failed)
      match r with
      | .unsafeRule r =>
        let result ← runUnsafeRule parentRef r
        match result with
        | .proved .. => return (queue, result)
        | .succeeded .. => return (queue, result)
        | .failed => loop queue
      | .postponedSafeRule r =>
        return (queue, ← applyPostponedSafeRule r parentRef)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant7eeee4656e838e398ce12fbab36a9fc5920d6d95b8d4207db731ad65d552ee1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant7eeee4656e838e398ce12fbab36a9fc5920d6d95b8d4207db731ad65d552ee1b.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a1b369f88854e94992493beda067e09f4dd347f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
