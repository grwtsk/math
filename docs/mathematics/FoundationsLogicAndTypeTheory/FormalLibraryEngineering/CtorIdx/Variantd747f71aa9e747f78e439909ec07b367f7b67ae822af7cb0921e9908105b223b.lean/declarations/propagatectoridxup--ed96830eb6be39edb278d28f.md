# propagateCtorIdxUp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98bf1a42c56c1ef3fce8c556b6fbe7471fb11bca916e65bea76c407c3a47838e",
  "kind": "def",
  "lexical_name": "propagateCtorIdxUp",
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
  "slug": "propagatectoridxup--ed96830eb6be39edb278d28f",
  "source": {
    "blob": "59fad3d0328dd3e6d7a364f3f5d9c29ad7034cdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantd747f71aa9e747f78e439909ec07b367f7b67ae822af7cb0921e9908105b223b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed96830eb6be39edb278d28fedca9d3967512c87e6ff61463daf9c17c8304818",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantd747f71aa9e747f78e439909ec07b367f7b67ae822af7cb0921e9908105b223b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98bf1a42c56c1ef3fce8c556b6fbe7471fb11bca916e65bea76c407c3a47838e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def propagateCtorIdxUp (e : Expr) : GoalM Unit := e.withApp fun f xs => do
  let some fnName := f.constName? | return
  let some indInfo ← isCtorIdx? fnName | return
  unless xs.size == indInfo.numParams + indInfo.numIndices + 1 do return
  let a := xs.back!
  let aNode ← getRootENode a
  -- NB: This does not work for `Nat.ctorIdx`, as grind normalizes `Nat.succ` to `_ + k`.
  -- But we have `attribute [grind] Nat.ctorIdx` to handle that case.
  unless aNode.ctor do
    return
  let some conInfo ← isConstructorApp? aNode.self | return
  if aNode.heqProofs then
    unless (← hasSameType a aNode.self) do
      let b := aNode.self
      let gen := max (← getGeneration a) (← getGeneration b)
      -- Handle heterogeneous equality case
      -- We add a suitable invocation of the `.ctorIdx.hinj` theorem
      let aType ← whnfD (← inferType a)
      let bType ← whnfD (← inferType b)
      assert! aType.isAppOfArity indInfo.name (indInfo.numParams + indInfo.numIndices)
      -- both types should be headed by the same type former
      unless bType.isAppOfArity indInfo.name (indInfo.numParams + indInfo.numIndices) do return
      let us := aType.getAppFn.constLevels!
      let hinjName := mkCtorIdxHInjTheoremNameFor indInfo.name
      unless (← getEnv).containsOnBranch hinjName do
        let _ ← executeReservedNameAction hinjName
      let proof := mkConst hinjName us
      let proof := mkApp (mkAppN proof aType.getAppArgs) a
      let proof := mkApp (mkAppN proof bType.getAppArgs) b
      addNewRawFact proof (← inferType proof) gen (.inj (.decl hinjName)) .other
      return
  -- Homogeneous case
  let e' ← shareCommon (mkNatLit conInfo.cidx)
  internalize e' 0
  -- We used `mkExpectedPropHint` so that the inferred type of the proof matches the goal,
  -- to satisfy `debug.grind` checks
  pushEq e e' (mkExpectedPropHint (← mkCongrArg e.appFn! (← mkEqProof a aNode.self)) (← mkEq e e'))

end Lean.Meta.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantd747f71aa9e747f78e439909ec07b367f7b67ae822af7cb0921e9908105b223b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variantd747f71aa9e747f78e439909ec07b367f7b67ae822af7cb0921e9908105b223b.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59fad3d0328dd3e6d7a364f3f5d9c29ad7034cdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
