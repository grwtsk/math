# mkNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e30c848ae6d8de0fd26603d806c2a305446dc6b3700946155ffb7f98b9ad23f6",
  "kind": "def",
  "lexical_name": "mkNode",
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
  "slug": "mknode--af7506217fcfabf4bafb4430",
  "source": {
    "blob": "17752c2e0822b1773d8ec93a26234685793bdb82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af7506217fcfabf4bafb4430ab1d51685f408153cdf046e27166539deee58a42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e30c848ae6d8de0fd26603d806c2a305446dc6b3700946155ffb7f98b9ad23f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkNode (e : Expr) : OrderM NodeId := do
  if let some nodeId := (← getStruct).nodeMap.find? { expr := e } then
    return nodeId
  let nodeId : NodeId := (← getStruct).nodes.size
  trace[grind.order.internalize.term] "{e} ↦ #{nodeId}"
  modifyStruct fun s => { s with
    nodes   := s.nodes.push e
    nodeMap := s.nodeMap.insert { expr := e } nodeId
    sources := s.sources.push {}
    targets := s.targets.push {}
    proofs  := s.proofs.push {}
  }
  setStructId e
  /-
  **Note**: not all node expressions have been internalized because this solver
  creates auxiliary terms.
  -/
  if (← alreadyInternalized e) then
    orderExt.markTerm e
  if let some e' ← getOriginal? e then
    orderExt.markTerm e'
  return nodeId
where
  getOriginal? (e : Expr) : GoalM (Option Expr) := do
    if let some (e', _) := (← get').termMapInv.find? { expr := e } then
      return some e'
    let_expr NatCast.natCast α _ a := e | return none
    if (← alreadyInternalized a) then
      updateTermMap a e (← mkEqRefl e) α
      return some a
    else
      return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantd5bc851781fe826123e12554ff289c1573024a51f2bcb31f2c77f3372e0a943a.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17752c2e0822b1773d8ec93a26234685793bdb82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
