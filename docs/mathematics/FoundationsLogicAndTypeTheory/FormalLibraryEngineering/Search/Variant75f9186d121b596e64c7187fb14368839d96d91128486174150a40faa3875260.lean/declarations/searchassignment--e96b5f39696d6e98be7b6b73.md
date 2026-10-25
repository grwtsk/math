# searchAssignment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d248938e56a82418b8071d30303e62b99ca5a2b42333ec0da4021e620f7419d",
  "kind": "def",
  "lexical_name": "searchAssignment",
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
  "slug": "searchassignment--e96b5f39696d6e98be7b6b73",
  "source": {
    "blob": "406b2fd17976e810aa68e4962d194e597daaf13f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 567,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e96b5f39696d6e98be7b6b73ecf459dbe9318f97b329fd9f0ae68ebe59b36027",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d248938e56a82418b8071d30303e62b99ca5a2b42333ec0da4021e620f7419d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def searchAssignment : GoalM Unit := do
  let precise ← searchQLiaAssignment
  if (← isInconsistent) then return ()
  if !(← getConfig).qlia && !precise then
    -- Search for a new model using `.int` mode.
    trace[grind.debug.lia.search] "restart using Cooper resolution"
    modify' fun s => { s with assignment := {} }
    searchLiaAssignment
    trace[grind.debug.lia.search] "after search int model, inconsistent: {← isInconsistent}"
    if (← isInconsistent) then return ()
  -- If the search was interrupted (`liaSteps` threshold), the assignment is partial.
  unless (← hasAssignment) do return ()
  -- TODO: constructing a model is only worth if `grind` will **not** continue searching.
  assignElimVars

/--
Returns `true` if work/progress has been done.
There are two kinds of progress:
- An assignment for satisfying constraints was constructed.
- An inconsistency was detected.

The result is `false` if module already has a satisfying assignment.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant75f9186d121b596e64c7187fb14368839d96d91128486174150a40faa3875260.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `406b2fd17976e810aa68e4962d194e597daaf13f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
