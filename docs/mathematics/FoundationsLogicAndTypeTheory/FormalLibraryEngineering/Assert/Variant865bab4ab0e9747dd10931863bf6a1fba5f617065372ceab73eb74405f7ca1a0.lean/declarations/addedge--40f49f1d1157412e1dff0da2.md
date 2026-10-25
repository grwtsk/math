# addEdge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e3c1d30faf6380e56f0e3291979c8175ff57538447e5a775c9e78f62e526854",
  "kind": "def",
  "lexical_name": "addEdge",
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
  "slug": "addedge--40f49f1d1157412e1dff0da2",
  "source": {
    "blob": "6fa365256ec5393e9e5fb507f4d59c842f974b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 275,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40f49f1d1157412e1dff0da242b05f60f1ece9121127fa6230e44b1744cf913f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e3c1d30faf6380e56f0e3291979c8175ff57538447e5a775c9e78f62e526854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def addEdge (u : NodeId) (v : NodeId) (k : Weight) (h : Expr) : OrderM Unit := do
  if (← isInconsistent) then return ()
  if u == v then
    if k.isNeg then
      closeGoal (← mkSelfUnsatProof (← getExpr u) k h)
    return ()
  trace[grind.debug.order.add_edge] "{← getExpr u}, {← getExpr v}, {k}"
  if let some k' ← getDist? v u then
    if (k + k').isNeg then
      setUnsat u v k h k'
      return ()
  if (← isShorter u v k) then
    setDist u v k
    setProof u v { w := u, k, proof := h }
    checkToPropagate u v k
    update
    propagatePending
where
  update : OrderM Unit := do
    forEachTargetOf v fun j k₂ => do
      /- Check whether new path: `u -(k)-> v -(k₂)-> j` is shorter -/
      updateIfShorter u j (k+k₂) v
    forEachSourceOf u fun i k₁ => do
      /- Check whether new path: `i -(k₁)-> u -(k)-> v` is shorter -/
      updateIfShorter i v (k₁+k) u
      forEachTargetOf v fun j k₂ => do
        /- Check whether new path: `i -(k₁)-> u -(k)-> v -(k₂) -> j` is shorter -/
        updateIfShorter i j (k₁+k+k₂) v

/--
Asserts constraint `c` associated with `e` where `he : e = True`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa365256ec5393e9e5fb507f4d59c842f974b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
