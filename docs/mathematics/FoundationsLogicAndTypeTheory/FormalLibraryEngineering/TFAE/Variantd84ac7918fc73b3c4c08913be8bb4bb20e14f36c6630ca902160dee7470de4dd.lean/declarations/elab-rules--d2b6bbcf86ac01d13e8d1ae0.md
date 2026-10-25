# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97e38277963346bb94e54939507d9d59b521f7574c0d107031e2488802dea4ef",
  "kind": "elab_rules",
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
  "slug": "elab-rules--d2b6bbcf86ac01d13e8d1ae0",
  "source": {
    "blob": "9755fa2ce543d1c9ad31196d4687ee52043a181a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 303,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2b6bbcf86ac01d13e8d1ae02c8ce616563e7e7d2983f4e6d01fd5c53a0594be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97e38277963346bb94e54939507d9d59b521f7574c0d107031e2488802dea4ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| tfae_finish) => do
  let goal ← getMainGoal
  goal.withContext do
    let (tfaeListQ, tfaeList) ← getTFAEList (← goal.getType)
    closeMainGoal `tfae_finish <|← AtomM.run .reducible do
      let is ← tfaeList.mapM (fun e ↦ Prod.fst <$> AtomM.addAtom e)
      let mut hyps := #[]
      for hyp in ← getLocalHyps do
        let ty ← whnfR <|← instantiateMVars <|← inferType hyp
        if let (``Iff, #[p1, p2]) := ty.getAppFnArgs then
          let (q1, _) ← AtomM.addAtom p1
          let (q2, _) ← AtomM.addAtom p2
          hyps := hyps.push (q1, q2, ← mkAppM ``Iff.mp #[hyp])
          hyps := hyps.push (q2, q1, ← mkAppM ``Iff.mpr #[hyp])
        else if ty.isArrow then
          let (q1, _) ← AtomM.addAtom ty.bindingDomain!
          let (q2, _) ← AtomM.addAtom ty.bindingBody!
          hyps := hyps.push (q1, q2, hyp)
      proveTFAE hyps (← get).atoms is tfaeListQ

end Mathlib.Tactic.TFAE

/-!

# Deprecated "Goal-style" `tfae_have`

This syntax and its implementation, which behaves like "Mathlib `have`" is deprecated; we preserve
it here to provide graceful deprecation behavior.

-/

/-- Re-enables "goal-style" syntax for `tfae_have` when `true`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantd84ac7918fc73b3c4c08913be8bb4bb20e14f36c6630ca902160dee7470de4dd.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9755fa2ce543d1c9ad31196d4687ee52043a181a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
