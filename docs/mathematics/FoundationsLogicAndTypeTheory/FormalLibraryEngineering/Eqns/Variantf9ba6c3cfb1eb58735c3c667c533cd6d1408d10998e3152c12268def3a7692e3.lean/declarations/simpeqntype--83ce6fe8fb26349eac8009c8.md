# simpEqnType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54761db1edb46195930e19e81e526d2a6dcf1d575ff9a16ffbc479c7532db09b",
  "kind": "def",
  "lexical_name": "simpEqnType",
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
  "slug": "simpeqntype--83ce6fe8fb26349eac8009c8",
  "source": {
    "blob": "4b9b90ec88ea2d6f3cb663a78815dcbc7162e80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83ce6fe8fb26349eac8009c8de445f9d8fe5f9837fc0aabb2d8362c5640515cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54761db1edb46195930e19e81e526d2a6dcf1d575ff9a16ffbc479c7532db09b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simpEqnType (eqnType : Expr) : MetaM Expr := do
  forallTelescopeReducing (← instantiateMVars eqnType) fun ys type => do
    let proofVars := collect type
    trace[Elab.definition] "simpEqnType type: {type}"
    let mut type ← Match.unfoldNamedPattern type
    let mut eliminated : FVarIdSet := {}
    for y in ys.reverse do
      trace[Elab.definition] ">> simpEqnType: {← inferType y}, {type}"
      if proofVars.contains y.fvarId! then
        let some (_, Expr.fvar fvarId, rhs) ← matchEq? (← inferType y) | throwError "unexpected hypothesis in alternative{indentExpr eqnType}"
        eliminated := eliminated.insert fvarId
        type := type.replaceFVarId fvarId rhs
      else if eliminated.contains y.fvarId! then
        if (← dependsOn type y.fvarId!) then
          type ← mkForallFVars #[y] type
      else
        if let some (_, lhs, rhs) ← matchEq? (← inferType y) then
          if (← isDefEq lhs rhs) then
            if !(← dependsOn type y.fvarId!) then
              continue
            else if !(← lhsDependsOn type y.fvarId!) then
              -- Since the `lhs` of the `type` does not depend on `y`, we replace it with `Eq.refl` in the `rhs`
              type := type.replaceFVar y (← mkEqRefl lhs)
              continue
        type ← mkForallFVars #[y] type
    return type
where
  -- Collect eq proof vars used in `namedPatterns`
  collect (e : Expr) : FVarIdSet :=
    let go (e : Expr) (ω) : ST ω FVarIdSet := do
      let ref ← ST.mkRef {}
      e.forEachWhere Match.isNamedPattern fun e => do
        let some e := Match.isNamedPattern? e | unreachable!
        let arg := e.appArg!.consumeMData
        if arg.isFVar then
          ST.Prim.Ref.modify ref (·.insert arg.fvarId!)
      ST.Prim.Ref.get ref
    runST (go e)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variantf9ba6c3cfb1eb58735c3c667c533cd6d1408d10998e3152c12268def3a7692e3.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b9b90ec88ea2d6f3cb663a78815dcbc7162e80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
