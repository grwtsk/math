# acyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08d2f90a703c776d88308c038644247c3a9d810f6704d75a3859d4da9383d50d",
  "kind": "def",
  "lexical_name": "acyclic",
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
  "slug": "acyclic--ec8dfb6c5f6d76b92e1acb0a",
  "source": {
    "blob": "bef21decaef1dbd1ded16bee72cc06e8969c893b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Acyclic/Variante30820e3571ac8cfc4663078d01a4d73ee2849b0a49354f340ec66bb5cf44d46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec8dfb6c5f6d76b92e1acb0a570df2d67f06362d8360f80c8d96fbe2b393b2f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Acyclic/Variante30820e3571ac8cfc4663078d01a4d73ee2849b0a49354f340ec66bb5cf44d46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08d2f90a703c776d88308c038644247c3a9d810f6704d75a3859d4da9383d50d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def acyclic (mvarId : MVarId) (h : Expr) : MetaM Bool := mvarId.withContext do
  let type ← whnfD (← inferType h)
  trace[Meta.Tactic.acyclic] "type: {type}"
  let some (_, lhs, rhs) := type.eq? | return false
  if (← isTarget lhs rhs) then
    go h lhs rhs
  else if (← isTarget rhs lhs) then
    go (← mkEqSymm h) rhs lhs
  else
    return false
where
  go (h lhs rhs : Expr) : MetaM Bool := do
    try
      let sizeOf_lhs ← mkAppM ``sizeOf #[lhs]
      let sizeOf_rhs ← mkAppM ``sizeOf #[rhs]
      let sizeOfEq ← mkLT sizeOf_lhs sizeOf_rhs
      let hlt ← mkFreshExprSyntheticOpaqueMVar sizeOfEq
      -- TODO: we only need the `sizeOf` simp theorems
      let ctx ← Simp.mkContext
         (config := { arith := true })
         (simpTheorems := #[ (← getSimpTheorems) ])
      match (← simpTarget hlt.mvarId! ctx {}).1 with
      | some _ => return false
      | none   =>
        let heq ← mkCongrArg sizeOf_lhs.appFn! (← mkEqSymm h)
        let hlt_self ← mkAppM ``Nat.lt_of_lt_of_eq #[hlt, heq]
        let hlt_irrelf ← mkAppM ``Nat.lt_irrefl #[sizeOf_lhs]
        mvarId.assign (← mkFalseElim (← mvarId.getType) (mkApp hlt_irrelf hlt_self))
        trace[Meta.Tactic.acyclic] "succeeded"
        return true
    catch ex =>
      trace[Meta.Tactic.acyclic] "failed with\n{ex.toMessageData}"
      return false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Acyclic/Variante30820e3571ac8cfc4663078d01a4d73ee2849b0a49354f340ec66bb5cf44d46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Acyclic/Variante30820e3571ac8cfc4663078d01a4d73ee2849b0a49354f340ec66bb5cf44d46.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bef21decaef1dbd1ded16bee72cc06e8969c893b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
