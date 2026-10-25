# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6f23e4ea3559b2dcb3cc1eaae13b9f036275d0cc44bb4035bb130434ad0fb82",
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
  "slug": "example--a2c76d42a1bf869ef92765b3",
  "source": {
    "blob": "eb6fdf1548d180a4c2b9bea01a0acf9f0419b77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant8e0c18e5f4e2e7231a562c93e0980d4ffadc781c3202708b2c0996910ad229f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2c76d42a1bf869ef92765b32bdf55442d656f85a2ea050080f12084c307b4a7",
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

Occurrence: `declaration:d6f23e4ea3559b2dcb3cc1eaae13b9f036275d0cc44bb4035bb130434ad0fb82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : let x := id 0; x = x := by
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
  rfl

end success

section failure

/--
error: no progress made on
x : Bool
h : x = true
⊢ x = true
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant8e0c18e5f4e2e7231a562c93e0980d4ffadc781c3202708b2c0996910ad229f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FailIfNoProgress/Variant8e0c18e5f4e2e7231a562c93e0980d4ffadc781c3202708b2c0996910ad229f5.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb6fdf1548d180a4c2b9bea01a0acf9f0419b77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
