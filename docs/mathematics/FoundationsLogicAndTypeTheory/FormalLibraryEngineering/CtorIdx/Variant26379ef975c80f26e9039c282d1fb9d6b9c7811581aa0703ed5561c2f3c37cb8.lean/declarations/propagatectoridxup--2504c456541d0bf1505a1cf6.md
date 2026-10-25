# propagateCtorIdxUp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bdc90c1b2494666a203efbe3c9bbe5746bd6dd120e0861619d617c3de0ff920",
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
  "slug": "propagatectoridxup--2504c456541d0bf1505a1cf6",
  "source": {
    "blob": "318e3b364c9d9dddf30a5b25ebea2e7abcc11927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variant26379ef975c80f26e9039c282d1fb9d6b9c7811581aa0703ed5561c2f3c37cb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2504c456541d0bf1505a1cf6e77b4e1080d3541e09b54a4063acf90f7923dff0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variant26379ef975c80f26e9039c282d1fb9d6b9c7811581aa0703ed5561c2f3c37cb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bdc90c1b2494666a203efbe3c9bbe5746bd6dd120e0861619d617c3de0ff920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–56.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variant26379ef975c80f26e9039c282d1fb9d6b9c7811581aa0703ed5561c2f3c37cb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorIdx/Variant26379ef975c80f26e9039c282d1fb9d6b9c7811581aa0703ed5561c2f3c37cb8.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `318e3b364c9d9dddf30a5b25ebea2e7abcc11927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
