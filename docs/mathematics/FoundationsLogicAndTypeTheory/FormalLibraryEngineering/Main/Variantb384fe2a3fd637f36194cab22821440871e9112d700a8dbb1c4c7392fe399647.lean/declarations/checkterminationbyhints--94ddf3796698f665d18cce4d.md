# checkTerminationByHints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7deb9f125c34347487083a78402591b608a049af958f3e09beae79d5ecfca117",
  "kind": "def",
  "lexical_name": "checkTerminationByHints",
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
  "slug": "checkterminationbyhints--94ddf3796698f665d18cce4d",
  "source": {
    "blob": "3d2169aeae3d4d29e04ba9421ec3b7f95ee799e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94ddf3796698f665d18cce4dbf55370bb78338cd645a1b325dee580f7abf0d7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7deb9f125c34347487083a78402591b608a049af958f3e09beae79d5ecfca117`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkTerminationByHints (preDefs : Array PreDefinition) : CoreM Unit := do
  let some preDefWith := preDefs.find? (·.termination.isNotNone) | return
  let preDefsWithout := preDefs.filter (·.termination.terminationBy?.isNone)
  let structural :=
    preDefWith.termination.terminationBy? matches some {structural := true, ..}
  -- Information whether the current one is partial, inductive or coinductive
  let partialFixpoint := preDefWith.termination.partialFixpoint?.any fun x => isPartialFixpoint x.fixpointType
  let inductiveFixpoint := preDefWith.termination.partialFixpoint?.any fun x => isInductiveFixpoint x.fixpointType
  let coinductiveFixpoint := preDefWith.termination.partialFixpoint?.any fun x => isCoinductiveFixpoint x.fixpointType
  for preDef in preDefs do
    -- if some has at termination by clause
    if let .some termBy := preDef.termination.terminationBy? then
      -- but something in the clique is partial/inductive/coinductive, then we report error
      if let .some partialFixpointStx := preDef.termination.partialFixpoint? then
        match partialFixpointStx.fixpointType with
        | .partialFixpoint => throwErrorAt partialFixpointStx.ref m!"conflicting annotations: this function cannot \
          be both terminating and a partial fixpoint"
        | .inductiveFixpoint => throwErrorAt partialFixpointStx.ref m!"conflicting annotations: this function cannot \
          be both terminating and an inductive fixpoint"
        | .coinductiveFixpoint => throwErrorAt partialFixpointStx.ref m!"conflicting annotations: this function cannot \
          be both terminating and a coinductive fixpoint"

      -- if has no annotations
      if !structural && !partialFixpoint && !inductiveFixpoint && !coinductiveFixpoint && !preDefsWithout.isEmpty then
        let m := MessageData.andList (preDefsWithout.toList.map (m!"{·.declName}"))
        let doOrDoes := if preDefsWithout.size = 1 then "does" else "do"
        logErrorAt termBy.ref m!"incomplete set of termination hints:\n\
          This function is mutually recursive with {m}, which {doOrDoes} not have \
          a termination hint.\n\
          The present clause is ignored."

      if structural && !termBy.structural then
        throwErrorAt termBy.ref m!"Incompatible termination hint; this function is mutually \
          recursive with {preDefWith.declName}, which is marked as `termination_by \
          structural` so this one also needs to be marked `structural`."
      if !structural && termBy.structural then
        throwErrorAt termBy.ref m!"Incompatible termination hint; this function is mutually \
          recursive with {preDefWith.declName}, which is not marked as `structural` \
         so this one cannot be `structural` either."
      if termBy.structural then
        if let .some decr := preDef.termination.decreasingBy? then
          logErrorAt decr.ref m!"Incompatible termination hint; this function is marked as \
            structurally recursive, so no explicit termination proof is needed."

    -- If one is partial, but others are not
    if partialFixpoint && !preDef.termination.partialFixpoint?.any fun x => isPartialFixpoint x.fixpointType then
      throwErrorAt preDef.ref m!"Incompatible termination hint; this function is mutually \
        recursive with {preDefWith.declName}, which is marked as \
        `partial_fixpoint` so this one also needs to be marked \
        `partial_fixpoint`."

    -- If one is least, but others are not
    if inductiveFixpoint && !preDef.termination.partialFixpoint?.any fun x => isLatticeTheoretic x.fixpointType then
      throwErrorAt preDef.ref m!"Incompatible termination hint; this function is mutually \
        recursive with {preDefWith.declName}, which is marked as
        `inductive_fixpoint` so this one also needs to be marked \
        `inductive_fixpoint` or `coinductive_fixpoint`."

    -- If one is greatest, but others are not
    if coinductiveFixpoint && !preDef.termination.partialFixpoint?.any fun x => isLatticeTheoretic x.fixpointType then
      throwErrorAt preDef.ref m!"Incompatible termination hint; this function is mutually \
        recursive with {preDefWith.declName}, which is marked as \
        `coinductive_fixpoint` so this one also needs to be marked \
        `inductive_fixpoint` or `coinductive_fixpoint`."

    -- checking for unnecessary `decreasing_by` clause
    if preDef.termination.partialFixpoint?.any fun x => isPartialFixpoint x.fixpointType then
        if let .some decr := preDef.termination.decreasingBy? then
          logErrorAt decr.ref m!"Invalid `decreasing_by`; this function is marked as \
            partial_fixpoint, so no explicit termination proof is needed."

    if preDef.termination.partialFixpoint?.any fun x => isInductiveFixpoint x.fixpointType then
      if let .some decr := preDef.termination.decreasingBy? then
        logErrorAt decr.ref m!"Invalid `decreasing_by`; this function is marked as \
          inductive_fixpoint, so no explicit termination proof is needed."

    if preDef.termination.partialFixpoint?.any fun x => isInductiveFixpoint x.fixpointType then
      if let .some decr := preDef.termination.decreasingBy? then
        logErrorAt decr.ref m!"Invalid `decreasing_by`; this function is marked as \
          coinductive_fixpoint, so no explicit termination proof is needed."

    -- if the selected one is not marked as partial fixpoint
    if !partialFixpoint then
      if let some stx := preDef.termination.partialFixpoint? then
        if isPartialFixpoint stx.fixpointType then
          throwErrorAt stx.ref m!"Incompatible termination hint; this function is mutually \
            recursive with {preDefWith.declName}, which is not also marked as \
            `partial_fixpoint`, so this one cannot be either."

    -- if the selected one is not marked as partial fixpoint
    unless inductiveFixpoint || coinductiveFixpoint do
      if let some stx := preDef.termination.partialFixpoint? then
        if isLatticeTheoretic stx.fixpointType then
          throwErrorAt stx.ref m!"Incompatible termination hint; this function is mutually \
            recursive with {preDefWith.declName}, which is not also marked as \
            `inductive_fixpoint` or `coinductive_fixpoint`, so this one cannot be either."

/--
Elaborates the `TerminationHint` in the clique to `TerminationMeasures`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb384fe2a3fd637f36194cab22821440871e9112d700a8dbb1c4c7392fe399647.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d2169aeae3d4d29e04ba9421ec3b7f95ee799e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
