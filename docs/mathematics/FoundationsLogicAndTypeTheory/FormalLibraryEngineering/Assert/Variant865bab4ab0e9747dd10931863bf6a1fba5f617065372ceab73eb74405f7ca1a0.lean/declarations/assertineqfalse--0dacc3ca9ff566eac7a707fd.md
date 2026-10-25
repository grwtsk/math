# assertIneqFalse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee204208b219b9b0dc34a730ad58608bae241b44e08110ab8b2871ba33994337",
  "kind": "def",
  "lexical_name": "assertIneqFalse",
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
  "slug": "assertineqfalse--0dacc3ca9ff566eac7a707fd",
  "source": {
    "blob": "6fa365256ec5393e9e5fb507f4d59c842f974b0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 319,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dacc3ca9ff566eac7a707fd9f38fe07cd6b28c5cbeb4027e7c069e95115700c",
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

Occurrence: `declaration:ee204208b219b9b0dc34a730ad58608bae241b44e08110ab8b2871ba33994337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assertIneqFalse (c : Cnstr NodeId) (e : Expr) (he : Expr) : OrderM Unit := do
  unless (← isLinearPreorder) do return ()
  trace[grind.order.assert] "¬ {← c.pp}"
  let h ←  if let some h := c.h? then
    pure <| mkApp4 (mkConst ``Grind.Order.eq_mp_not) e c.e h (mkOfEqFalseCore e he)
  else
    pure <| mkOfEqFalseCore e he
  if (← isRing) then
    let declName := if c.kind matches .lt then
      ``Grind.Order.le_of_not_lt_k
    else
      ``Grind.Order.lt_of_not_le_k
    let h' ← mkLinearOrdRingPrefix declName
    let mut k' := -c.k
    let mut h := mkApp6 h' (← getExpr c.u) (← getExpr c.v) (toExpr c.k) (toExpr k') eagerReflBoolTrue h
    let mut strict := c.kind matches .le
    if (← isInt) && strict then
      h := mkApp6 (mkConst ``Grind.Order.int_lt) (← getExpr c.v) (← getExpr c.u) (toExpr k') (toExpr (k'-1)) eagerReflBoolTrue h
      k'     := k' - 1
      strict := !strict
    addEdge c.v c.u { k := k', strict } h
  else if c.kind matches .lt then
    let h' ← mkLeLtLinearPrefix ``Grind.Order.le_of_not_lt
    let h := mkApp3 h' (← getExpr c.u) (← getExpr c.v) h
    addEdge c.v c.u { strict := false } h
  else if (← hasLt) then
    let h' ← mkLeLtLinearPrefix ``Grind.Order.lt_of_not_le
    let h := mkApp3 h' (← getExpr c.u) (← getExpr c.v) h
    addEdge c.v c.u { strict := true } h
  else
    let h' ← mkLeLinearPrefix ``Grind.Order.le_of_not_le
    let h := mkApp3 h' (← getExpr c.u) (← getExpr c.v) h
    addEdge c.v c.u { strict := false } h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Assert/Variant865bab4ab0e9747dd10931863bf6a1fba5f617065372ceab73eb74405f7ca1a0.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fa365256ec5393e9e5fb507f4d59c842f974b0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
