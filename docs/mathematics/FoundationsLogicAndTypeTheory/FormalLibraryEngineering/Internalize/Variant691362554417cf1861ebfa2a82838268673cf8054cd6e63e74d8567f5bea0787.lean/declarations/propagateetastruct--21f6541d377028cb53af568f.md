# propagateEtaStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ba95020e1accd265111710e6d343d88d4314037e4eb716577251636328e0061",
  "kind": "def",
  "lexical_name": "propagateEtaStruct",
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
  "slug": "propagateetastruct--21f6541d377028cb53af568f",
  "source": {
    "blob": "33164ab9d00bfdda88417ea42e8846b49b9d596d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21f6541d377028cb53af568f635bd0b96605670d9de18e49821a8efd9b41ab79",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ba95020e1accd265111710e6d343d88d4314037e4eb716577251636328e0061`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def propagateEtaStruct (a : Expr) (generation : Nat) : GoalM Unit := do
  unless (← getConfig).etaStruct do return ()
  let aType ← whnf (← inferType a)
  matchConstNonRecStructure aType.getAppFn (fun _ => return ()) fun inductVal us ctorVal => do
    unless a.isAppOf ctorVal.name do
      -- TODO: remove ctorVal.numFields after update stage0
      if (← isExtTheorem inductVal.name) || ctorVal.numFields == 0 then
        let params := aType.getAppArgs[*...inductVal.numParams]
        let mut ctorApp := mkAppN (mkConst ctorVal.name us) params
        for j in *...ctorVal.numFields do
          let mut proj ← mkProjFn ctorVal us params j a
          if (← isProof proj) then
            proj ← markProof proj
          ctorApp := mkApp ctorApp proj
        ctorApp ← preprocessLight ctorApp
        internalize ctorApp generation
        let u ← getLevel aType
        let expectedProp := mkApp3 (mkConst ``Eq [u]) aType a ctorApp
        pushEq a ctorApp <| mkExpectedPropHint (mkApp2 (mkConst ``Eq.refl [u]) aType a) expectedProp

/-- Returns `true` if we can ignore `ext` for functions occurring as arguments of a `declName`-application. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33164ab9d00bfdda88417ea42e8846b49b9d596d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
