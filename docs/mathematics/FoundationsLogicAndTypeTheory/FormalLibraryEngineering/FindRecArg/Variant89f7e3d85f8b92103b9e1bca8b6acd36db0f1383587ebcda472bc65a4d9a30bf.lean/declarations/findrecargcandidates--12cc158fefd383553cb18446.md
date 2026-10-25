# findRecArgCandidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb2a8c95be7d1de44d3799f17ad2bc4ea59a99b9240a0342a530d0986463f224",
  "kind": "def",
  "lexical_name": "findRecArgCandidates",
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
  "slug": "findrecargcandidates--12cc158fefd383553cb18446",
  "source": {
    "blob": "c85ae05060d8eb075af235554f65dafdfc6e0a69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12cc158fefd383553cb18446b842333c9c71357d1a24747a527e9210b875b545",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb2a8c95be7d1de44d3799f17ad2bc4ea59a99b9240a0342a530d0986463f224`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findRecArgCandidates (fnNames : Array Name) (fixedParamPerms : FixedParamPerms) (xs : Array Expr)
    (values : Array Expr) (termMeasure?s : Array (Option TerminationMeasure)) :
    MetaM RecArgCandidates := do
  let mut report := m!""
  let mut candidates := #[]
  -- Gather information on all possible recursive arguments
  let mut recArgInfoss := #[]
  for fnName in fnNames, value in values, termMeasure? in termMeasure?s, fixedParamPerm in fixedParamPerms.perms do
    let (recArgInfos, thisReport) ← getRecArgInfos fnName fixedParamPerm xs value termMeasure?
    report := report ++ thisReport
    recArgInfoss := recArgInfoss.push recArgInfos
  -- Put non-indices first
  recArgInfoss := recArgInfoss.map nonIndicesFirst
  trace[Elab.definition.structural] "recArgInfos:{indentD (.joinSep (recArgInfoss.flatten.toList.map (repr ·)) Format.line)}"
  -- Inductive groups to consider
  let groups ← inductiveGroups recArgInfoss.flatten
  trace[Elab.definition.structural] "inductive groups: {groups}"
  if groups.isEmpty then
    report := report ++ "no parameters suitable for structural recursion"
  -- Consider each group
  for group in groups do
    -- Select those RecArgInfos that are compatible with this inductive group
    let mut recArgInfoss' := #[]
    for value in values, recArgInfos in recArgInfoss do
      recArgInfoss' := recArgInfoss'.push (← argsInGroup group xs value recArgInfos)
    if let some idx := recArgInfoss'.findIdx? (·.isEmpty) then
      report := report ++ m!"Skipping arguments of type {group}, as {fnNames[idx]!} has no compatible argument.\n"
      continue
    if let some combs := allCombinations recArgInfoss' then
      for comb in combs do
        candidates := candidates.push { group, comb }
    else
      report := report ++ m!"Too many possible combinations of parameters of type {group} (or " ++
        m!"please indicate the recursive argument explicitly using `termination_by structural`).\n"
  return { candidates, report }

/--
Try each candidate argument combination for structural recursion.
Uses `commitIfNoEx` to backtrack on failure.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindRecArg/Variant89f7e3d85f8b92103b9e1bca8b6acd36db0f1383587ebcda472bc65a4d9a30bf.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c85ae05060d8eb075af235554f65dafdfc6e0a69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
