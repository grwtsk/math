# mergeStructureResolutionOrders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db6f639e9cea760a93261f2de4e84e2e90558e3ebcf990e54e12ae36201616e0",
  "kind": "def",
  "lexical_name": "mergeStructureResolutionOrders",
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
  "slug": "mergestructureresolutionorders--1fa9ddbbb724d5c4ebcd90b2",
  "source": {
    "blob": "abd489a9ac6813ceaa5176d860866eb94f5fd566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 470,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fa9ddbbb724d5c4ebcd90b225710d996a7d34b0b0ca3c89a5841184c2538efe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db6f639e9cea760a93261f2de4e84e2e90558e3ebcf990e54e12ae36201616e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mergeStructureResolutionOrders [Monad m] [MonadEnv m]
    (structName : Name) (parentNames : Array Name) (relaxed : Bool) : m StructureResolutionOrderResult := do
  -- Don't be strict about parents: if they were supposed to be checked, they were already checked.
  let parentResOrders ← parentNames.mapM fun parentName => return (← computeStructureResolutionOrder parentName true).resolutionOrder

  -- `resOrders` contains the resolution orders to merge.
  -- The parent list is inserted as a pseudo resolution order to ensure immediate parents come out in order,
  -- and it is added first to be the primary ordering constraint when there are ordering errors.
  let mut resOrders := parentResOrders.insertIdx 0 parentNames |>.filter (!·.isEmpty)

  let mut resOrder : Array Name := #[structName]
  let mut defects : Array StructureResolutionOrderConflict := #[]
  -- Every iteration of the loop, the sum of the sizes of the arrays in `resOrders` decreases by at least one,
  -- so it terminates.
  while !resOrders.isEmpty do
    let (good, name) ← selectParent resOrders

    unless good || relaxed do
      let conflicts := resOrders |>.filter (·[1...*].any (· == name)) |>.map (·[0]!) |>.qsort Name.lt |>.eraseReps
      defects := defects.push {
        isDirectParent := parentNames.contains name
        badParent := name
        conflicts := conflicts.map fun c => (parentNames.contains c, c)
      }

    resOrder := resOrder.push name
    resOrders := resOrders
      |>.map (fun resOrder => resOrder.filter (· != name))
      |>.filter (!·.isEmpty)

  return { resolutionOrder := resOrder, conflicts := defects }
where
  selectParent (resOrders : Array (Array Name)) : m (Bool × Name) := do
    -- Assumption: every resOrder is nonempty.
    -- `n'` is for relaxation, to stop paying attention to end of `resOrders` when finding a good parent.
    for n' in *...resOrders.size do
      let hi := resOrders.size - n'
      for i in *...hi do
        let parent := resOrders[i]![0]!
        let consistent resOrder := resOrder[1...*].all (· != parent)
        if resOrders[*...<i].all consistent && resOrders[i<...hi].all consistent then
          return (n' == 0, parent)
    -- unreachable, but correct default:
    return (false, resOrders[0]![0]!)

end

/--
Gets the resolution order for a structure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant44b024e19f003030355a3d044e8256fb72e87bb418f9f7cd1a3463f315525f08.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd489a9ac6813ceaa5176d860866eb94f5fd566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
