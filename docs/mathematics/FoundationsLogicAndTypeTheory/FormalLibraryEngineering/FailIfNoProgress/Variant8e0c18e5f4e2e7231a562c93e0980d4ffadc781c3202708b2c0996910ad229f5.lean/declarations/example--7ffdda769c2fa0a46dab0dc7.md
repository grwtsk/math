# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64ef3935a8b76de6c0a1eb0251f79c972e891f775d69c662012183c2f88df5c5",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--7ffdda769c2fa0a46dab0dc7",
  "source": {
    "blob": "eb6fdf1548d180a4c2b9bea01a0acf9f0419b77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant8e0c18e5f4e2e7231a562c93e0980d4ffadc781c3202708b2c0996910ad229f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ffdda769c2fa0a46dab0dc7b4cfa45ce709013d25a6a011327e77f96963e97a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant8e0c18e5f4e2e7231a562c93e0980d4ffadc781c3202708b2c0996910ad229f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64ef3935a8b76de6c0a1eb0251f79c972e891f775d69c662012183c2f88df5c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : let x := (fun x => x) Nat.zero; x = x := by
  intro x
  fail_if_no_progress
    -- Reduce the value of `x` to `Nat.zero`
    run_tac do
      let g ← getMainGoal
      let decl ← g.getDecl
      let some d := decl.lctx.findFromUserName? `x | throwError "no x"
      let lctx := decl.lctx.modifyLocalDecl d.fvarId fun d =>
        d.setValue (.const ``Nat.zero [])
      let g' ← Meta.mkFreshExprMVarAt lctx decl.localInstances decl.type
      g.assign g'
      replaceMainGoal [g'.mvarId!]
    guard_hyp x : Nat :=ₛ Nat.zero

end failure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant8e0c18e5f4e2e7231a562c93e0980d4ffadc781c3202708b2c0996910ad229f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant8e0c18e5f4e2e7231a562c93e0980d4ffadc781c3202708b2c0996910ad229f5.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb6fdf1548d180a4c2b9bea01a0acf9f0419b77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
