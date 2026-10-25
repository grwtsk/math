# elabNontriviality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:091ddebbf421ac9a49fe4d00082cb174641780752d88ff3c3a2484282bedb754",
  "kind": "def",
  "lexical_name": "elabNontriviality",
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
  "slug": "elabnontriviality--3457f611db0322510de51ade",
  "source": {
    "blob": "b82013ad9f41498e4c6367df285e0951e718fa79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 104,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3457f611db0322510de51ade489ffefbfe0dbcf780a1a50ac7d2317f030a194f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:091ddebbf421ac9a49fe4d00082cb174641780752d88ff3c3a2484282bedb754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[tactic nontriviality] def elabNontriviality : Tactic := fun stx => do
    let g ← getMainGoal
    let α ← match stx[1].getOptional? with
    | some e => Term.elabType e
    | none => (do
      let mut tgt ← withReducible g.getType'
      if let some tgt' := tgt.not? then tgt ← withReducible (whnf tgt')
      if let some (α, _) := tgt.eq? then return α
      if let some (α, _) := tgt.app4? ``LE.le then return α
      if let some (α, _) := tgt.app4? ``LT.lt then return α
      throwError "The goal is not an (in)equality, so you'll need to specify the desired \
        `Nontrivial α` instance by invoking `nontriviality α`.")
    let .sort u ← whnf (← inferType α) | unreachable!
    let some v := u.dec | throwError "not a type{indentExpr α}"
    let α : Q(Type v) := α
    let tac := do
      let ty := q(Nontrivial $α)
      let m ← mkFreshExprMVar (some ty)
      nontrivialityByAssumption m.mvarId!
      g.assert `inst ty m
    let g ← liftM <| tac <|> nontrivialityByElim α g stx[2][1].getSepArgs
    replaceMainGoal [(← g.intro1).2]

end Nontriviality

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5bfc787f491fdd0fab4e5bb4ec09bebe67c26d7cab5051e5e6e5cdaae38e7fd6.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b82013ad9f41498e4c6367df285e0951e718fa79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
