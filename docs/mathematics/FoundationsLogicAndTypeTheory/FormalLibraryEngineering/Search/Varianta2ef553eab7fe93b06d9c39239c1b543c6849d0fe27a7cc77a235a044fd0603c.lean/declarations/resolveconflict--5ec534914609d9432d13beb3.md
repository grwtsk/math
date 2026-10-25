# resolveConflict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48d184d5cb8492f4e3ce13aaa02868524578e84a30fc2d855e58953243e0129c",
  "kind": "def",
  "lexical_name": "resolveConflict",
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
  "slug": "resolveconflict--5ec534914609d9432d13beb3",
  "source": {
    "blob": "8c050938a5134c7c12942150d1c4136f35332e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 478,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ec534914609d9432d13beb30368a1bd5a83fddcc83fa380937ac1c27c0b2d61",
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

Occurrence: `declaration:48d184d5cb8492f4e3ce13aaa02868524578e84a30fc2d855e58953243e0129c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveConflict (h : UnsatProof) : SearchM Unit := do
  trace[grind.debug.lia.search.backtrack] "resolve conflict, decision stack: {(← get).cases.toList.map fun c => c.fvarId.name}"
  let decVars := h.collectDecVars.run (← get).decVars
  trace[grind.debug.lia.search.backtrack] "dec vars: {decVars.toList.map (·.name)}"
  if decVars.isEmpty then
    trace[grind.debug.lia.search.backtrack] "close goal: {← h.pp}"
    closeGoal (← h.toExprProof)
    return ()
  let c ← findCase decVars
  modify' fun _  => c.saved
  trace[grind.debug.lia.search.backtrack] "backtracking {c.fvarId.name}"
  let decVars := decVars.erase c.fvarId
  match c.kind with
  | .diseq c₁ =>
    let decVars := decVars.toArray
    let p' := c₁.p.mul (-1) |>.addConst 1
    let c' := { p := p', h := .ofDiseqSplit c₁ c.fvarId h decVars : LeCnstr }
    trace[grind.debug.lia.search.backtrack] "resolved diseq split: {← c'.pp}"
    c'.assert
  | .cooper pred hs decVars' =>
    let decVars' := decVars.merge decVars'
    let n := pred.numCases
    let hs := hs.push (c.fvarId, h)
    trace[grind.debug.lia.search.backtrack] "cooper #{hs.size + 1}, {← pred.pp}, {hs.map fun p => p.1.name}"
    let s ← if hs.size + 1 < n then
      let fvarId ← mkCase (.cooper pred hs decVars')
      pure { pred, k := n - hs.size - 1, h := .dec fvarId : CooperSplit }
    else
      let decVars' := decVars'.toArray
      trace[grind.debug.lia.search.backtrack] "cooper last case, {← pred.pp}, dec vars: {decVars'.map (·.name)}"
      pure { pred, k := 0, h := .last hs decVars' : CooperSplit }
    s.assert

/-- Search for an assignment/model for the linear constraints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c050938a5134c7c12942150d1c4136f35332e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
