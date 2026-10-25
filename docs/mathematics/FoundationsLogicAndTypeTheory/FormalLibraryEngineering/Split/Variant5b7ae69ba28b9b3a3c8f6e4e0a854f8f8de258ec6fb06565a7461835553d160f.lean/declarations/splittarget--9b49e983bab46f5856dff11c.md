# splitTarget?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:131e422049ce3aea28043346355f8981544d3861390305df3624c828f712edb2",
  "kind": "def",
  "lexical_name": "splitTarget?",
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
  "slug": "splittarget--9b49e983bab46f5856dff11c",
  "source": {
    "blob": "926a29ced11c22889cd09f9306b3e4f9a7fe054d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b49e983bab46f5856dff11c397506910637b98a1293873eeb9652ff5c0d7959",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:131e422049ce3aea28043346355f8981544d3861390305df3624c828f712edb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def splitTarget? (mvarId : MVarId) (splitIte := true) (useNewSemantics := false) : MetaM (Option (List MVarId)) := commitWhenSome? do mvarId.withContext do
  let target ← instantiateMVars (← mvarId.getType)
  let rec go (badCases : ExprSet) : MetaM (Option (List MVarId)) := do
    if let some e ← findSplit? target (if splitIte then .both else .match) badCases then
      if e.isIte || e.isDIte then
        return (← splitIfTarget? mvarId (useNewSemantics := useNewSemantics)).map fun (s₁, s₂) => [s₁.mvarId, s₂.mvarId]
      else
        try
          splitMatch mvarId e
        catch ex =>
          if isDiscrGenException ex then
            trace[split.failure] mkDiscrGenErrorMsg e
          else
            trace[split.failure] "`split` tactic failed at{indentExpr e}\n{ex.toMessageData}"
          go (badCases.insert e)
    else
      trace[split.debug] "did not find term to split\n{MessageData.ofGoal mvarId}"
      return none
  go {}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Split/Variant5b7ae69ba28b9b3a3c8f6e4e0a854f8f8de258ec6fb06565a7461835553d160f.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `926a29ced11c22889cd09f9306b3e4f9a7fe054d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
