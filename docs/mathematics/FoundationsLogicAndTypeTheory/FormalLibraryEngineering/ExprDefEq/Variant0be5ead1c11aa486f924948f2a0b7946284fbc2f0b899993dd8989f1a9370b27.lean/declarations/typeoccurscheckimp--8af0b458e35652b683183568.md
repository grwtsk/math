# typeOccursCheckImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02c798691098b2b87134628585ab525e88347793a72d814fb27ccab3f15c26af",
  "kind": "def",
  "lexical_name": "typeOccursCheckImp",
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
  "slug": "typeoccurscheckimp--8af0b458e35652b683183568",
  "source": {
    "blob": "e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1138,
    "line": 1089,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8af0b458e35652b683183568096c4d701c2671413cea7f4e30160fd5f754f225",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02c798691098b2b87134628585ab525e88347793a72d814fb27ccab3f15c26af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1089–1138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private unsafe def typeOccursCheckImp (mctx : MetavarContext) (mvarId : MVarId) (v : Expr) : Bool :=
  if v.hasExprMVar then
    visit v |>.run' mkPtrSet
  else
    true
where
  alreadyVisited (e : Expr) : StateM (PtrSet Expr) Bool := do
    if (← get).contains e then
      return true
    else
      modify fun s => s.insert e
      return false
  occursCheck (type : Expr) : Bool :=
    let go : StateM MetavarContext Bool := do
      Lean.occursCheck mvarId type
    -- Remark: it is ok to discard the "updated" `MetavarContext` because
    -- this function assumes all assigned metavariables have already been
    -- instantiated.
    go.run' mctx
  visitMVar (mvarId' : MVarId) : Bool :=
    if let some mvarDecl := mctx.findDecl? mvarId' then
      occursCheck mvarDecl.type
    else
      false
  visit (e : Expr) : StateM (PtrSet Expr) Bool := do
    if !e.hasExprMVar then
      return true
    else if (← alreadyVisited e) then
      return true
    else match e with
      | .mdata _ b       => visit b
      | .proj _ _ s      => visit s
      | .app f a         => visit f <&&> visit a
      | .lam _ d b _     => visit d <&&> visit b
      | .forallE _ d b _ => visit d <&&> visit b
      | .letE _ t v b _  => visit t <&&> visit v <&&> visit b
      | .mvar mvarId'    => return visitMVar mvarId'
      | .bvar .. | .sort .. | .const .. | .fvar ..
      | .lit .. => return true

/--
Check whether there are invalid occurrences of `mvarId` in the type of other metavariables in `v`.
For example, suppose we have
```
?m_1 : Nat
?m_2 : Fin ?m_1
```
The assignment `?m_1 := (?m_2).1` should not be accepted.
See issue #4405 for additional examples.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprDefEq/Variant0be5ead1c11aa486f924948f2a0b7946284fbc2f0b899993dd8989f1a9370b27.lean#L1089).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9f4ab278fb0aaa00932b1b6c8aaced78f8475cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
