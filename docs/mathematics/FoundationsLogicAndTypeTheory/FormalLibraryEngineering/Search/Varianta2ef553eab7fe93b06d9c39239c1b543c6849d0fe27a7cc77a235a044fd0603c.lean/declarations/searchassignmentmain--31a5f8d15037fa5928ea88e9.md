# searchAssignmentMain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38433b02f9b69385c6942317eaa359d641782b45def7ee4779817eabd81b4362",
  "kind": "def",
  "lexical_name": "searchAssignmentMain",
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
  "slug": "searchassignmentmain--31a5f8d15037fa5928ea88e9",
  "source": {
    "blob": "8c050938a5134c7c12942150d1c4136f35332e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 512,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31a5f8d15037fa5928ea88e9274aa43484f9573c6f218444edacbc901e672dc9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38433b02f9b69385c6942317eaa359d641782b45def7ee4779817eabd81b4362`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def searchAssignmentMain : SearchM Unit := do
  repeat
    trace[grind.debug.lia.search] "main loop"
    checkSystem "cutsat"
    if (← hasAssignment) then
      return ()
    if (← isInconsistent) then
      -- `grind` state is inconsistent
      return ()
    if let some c := (← get').conflict? then
      resolveConflict c
    else if (← checkMaxSteps) then
      -- Interrupt the search. Remark: we do not interrupt while a conflict is unresolved
      -- because the cutsat state would be left with a pending `conflict?`.
      trace[grind.debug.lia.search] "search interrupted, maximum number of steps reached"
      setImprecise
      return ()
    else
      let x : Var := (← get').assignment.size
      trace[grind.debug.lia.search] "next var: {← getVar x}, {x}, {(← get').assignment.toList}"
      processVar x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c050938a5134c7c12942150d1c4136f35332e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
