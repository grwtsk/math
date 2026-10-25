# Decl.analyzePropagatedBorrows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01e5d896e0c3f0e78abaeccbc1f42061a5f4c2f94b9b96ce49d647450c931383",
  "kind": "def",
  "lexical_name": "Decl.analyzePropagatedBorrows",
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
  "slug": "decl-analyzepropagatedborrows--1c09ae7841b1aaf72c2717e7",
  "source": {
    "blob": "9af93bf85ab307d9f03bbeb829ac55f08c033a09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c09ae7841b1aaf72c2717e75c974481fea1122fb8ce11a8e22299b9d18a0966",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01e5d896e0c3f0e78abaeccbc1f42061a5f4c2f94b9b96ce49d647450c931383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def Decl.analyzePropagatedBorrows (decl : Decl .impure) :
    CompilerM (Std.HashMap FVarId Ownedness) := do
  let (_, { values, .. }) ← go |>.run { values := {}, modified := false }
  return values
where
  @[inline]
  getOwnedness (fvarId : FVarId) : InferM Ownedness := do
    return (← get).values.getD fvarId .bot

  @[inline]
  join (fvarId : FVarId) (v : Ownedness) : InferM Unit := do
    modify fun s =>
      let old := s.values.getD fvarId .bot
      let new := old.join v
      if old == new then
        s
      else
        { s with values := s.values.insert fvarId new, modified := true }

  getParams (f : Name) : InferM (Array (Param .impure)) := do
    let some sig ← getImpureSignature? f | unreachable!
    return sig.params

  go : InferM Unit := do
    initializeDecl
    loop

  initializeDecl : InferM Unit := do
    match decl.value with
    | .code .. =>
      for p in decl.params do
        let init := if p.borrow then .borrow else .top
        modify fun s => { s with values := s.values.insert p.fvarId init }
    | _ => return ()

  loop : InferM Unit := do
    modify fun s => { s with modified := false }
    match decl.value with
    | .code code => collectCode code
    | _ => pure ()
    if (← get).modified then loop

  collectCode (code : Code .impure) : InferM Unit := do
    match code with
    | .jp decl k =>
      for p in decl.params do
        unless (← get).values.contains p.fvarId do
          let init := if p.borrow then .borrow else .bot
          modify fun s => { s with values := s.values.insert p.fvarId init }
      collectCode k
      collectCode decl.value
    | .let decl k =>
      collectLetValue decl.fvarId decl.value
      collectCode k
    | .jmp jpId args =>
      let some decl ← findFunDecl? (pu := .impure) jpId | unreachable!
      for arg in args, p in decl.params do
        if let .fvar arg := arg then
          let argValue ← getOwnedness arg
          join p.fvarId argValue
    | .cases cs => cs.alts.forM (·.forCodeM collectCode)
    | .uset _ _ _ k _ | .sset _ _ _ _ _ k _ => collectCode k
    | .return .. | .unreach .. => return ()
    | .inc .. | .dec .. | .setTag .. | .oset .. | .del .. => unreachable!

  collectLetValue (z : FVarId) (v : LetValue .impure) : InferM Unit := do
    match v with
    | .oproj _ parent _ =>
      let parentVal ← getOwnedness parent
      join z parentVal
    -- Keep in sync with ExplicitRC, InferBorrow
    | .fap ``Array.getInternal args =>
      if let .fvar parent := args[1]! then
        let parentVal ← getOwnedness parent
        join z parentVal
    | .fap ``Array.get!Internal args =>
      if let .fvar parent := args[1]! then
        let parentVal ← getOwnedness parent
        join z parentVal
      if let .fvar parent := args[2]! then
        let parentVal ← getOwnedness parent
        join z parentVal
    | .fap ``Array.uget args =>
      if let .fvar parent := args[1]! then
        let parentVal ← getOwnedness parent
        join z parentVal
    | .fap _ args =>
      let value := if args.isEmpty then .borrow else .own
      join z value
    | .ctor i _ =>
      let value := if i.isScalar then .borrow else .own
      join z value
    | .fvar .. | .pap .. | .sproj .. | .uproj .. | .erased .. | .lit .. =>
      join z .own
    | _ => unreachable!


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateBorrow/Variantccd80dacbe2e2ab5a6d7f96d4abf8d8ee3849caef7e103ee40aa49d5e67d7270.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9af93bf85ab307d9f03bbeb829ac55f08c033a09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
