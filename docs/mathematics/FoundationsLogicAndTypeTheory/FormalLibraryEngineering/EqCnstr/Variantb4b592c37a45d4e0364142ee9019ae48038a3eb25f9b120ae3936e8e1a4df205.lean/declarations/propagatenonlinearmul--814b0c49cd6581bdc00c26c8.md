# propagateNonlinearMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a14c7eae8d76fa4eb8ed814c417ed886454a1be5a22db4879ef74faa1806045",
  "kind": "def",
  "lexical_name": "propagateNonlinearMul",
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
  "slug": "propagatenonlinearmul--814b0c49cd6581bdc00c26c8",
  "source": {
    "blob": "bfc33f2c395a87402e7796b548588f6a687c8303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 202,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:814b0c49cd6581bdc00c26c8c33786b3a7ff6181eb32fd1aa22c2c17ea877f3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a14c7eae8d76fa4eb8ed814c417ed886454a1be5a22db4879ef74faa1806045`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def propagateNonlinearMul (x : Var) : GoalM Bool := do
  let e ← getVar x
  let (_, { a?, k, cs, n }) ← go e |>.run {}
  if k == 0 || n == 0 then
    let c := { p := .add 1 x (.num (-k)), h := .mul none cs : EqCnstr }
    c.assert
    return true
  else if n > 1 then
    return false
  else
    let some a := a? | unreachable!
    -- x = k*a
    let y ← mkVar a
    let c := { p := .add 1 x (.add (-k) y (.num 0)), h := .mul a? cs : EqCnstr }
    c.assert
    return true
where
  goVar (e : Expr) : StateT PropagateMul.State GoalM Unit := do
    if let some (k', c) ← isExprEqConst? e then
      modify fun { a?, k, cs, n } => { a?, k := k*k', cs := cs.push (e, k', c), n }
    else if (← get).n == 0 then
      modify fun { k, cs, .. } => { a? := some e, k, cs, n := 1 }
    else
      modify fun { k, cs, a?, n } => { a?, k, cs, n := n + 1 }

  go (e : Expr) : StateT PropagateMul.State GoalM Unit := do
    let_expr HMul.hMul _ _ _ i a b := e | goVar e
    if (← Structural.isInstHMulInt i) then
      go a; go b
    else
      goVar e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqCnstr/Variantb4b592c37a45d4e0364142ee9019ae48038a3eb25f9b120ae3936e8e1a4df205.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc33f2c395a87402e7796b548588f6a687c8303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
