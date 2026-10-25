# rewriteRulesPass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e02872df67734ad3ce19f97fb3bca8b9742b40d8d53659f2180afe3abbdfd740",
  "kind": "def",
  "lexical_name": "rewriteRulesPass",
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
  "slug": "rewriterulespass--5bccd0f04647115d19986af8",
  "source": {
    "blob": "878ddfd7b82d8fc008c03d80bc1636a1127f660d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant77de55af3e91e164f2a5bd238a4eb41434b524a87f92f1effe23d16e1c24bfd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bccd0f04647115d19986af80083b24d77b79ae91f72bd168a96b60c65aa90ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant77de55af3e91e164f2a5bd238a4eb41434b524a87f92f1effe23d16e1c24bfd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e02872df67734ad3ce19f97fb3bca8b9742b40d8d53659f2180afe3abbdfd740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def rewriteRulesPass : Pass where
  name := `rewriteRules
  run' goal := do
    let bvThms ← bvNormalizeExt.getTheorems
    let bvSimprocs ← bvNormalizeSimprocExt.getSimprocs
    let sevalThms ← getSEvalTheorems
    let sevalSimprocs ← Simp.getSEvalSimprocs
    let cfg ← PreProcessM.getConfig

    let simpCtx ← Simp.mkContext
      (config := {
        failIfUnchanged := false,
        zetaDelta := true,
        implicitDefEqProofs := false, -- leanprover/lean4/pull/7509
        maxSteps := cfg.maxSteps,
        instances := true
      })
      (simpTheorems := #[bvThms, sevalThms])
      (congrTheorems := (← getSimpCongrTheorems))

    let hyps ← getHyps goal
    if hyps.isEmpty then
      return goal
    else
      let ⟨result?, _⟩ ← simpGoal goal
        (ctx := simpCtx)
        (simprocs := #[bvSimprocs, sevalSimprocs])
        (fvarIdsToSimp := hyps)

      let some (_, newGoal) := result? | return none
      newGoal.withContext do
        (← getPropHyps).forM PreProcessM.rewriteFinished
      return newGoal
where
  getHyps (goal : MVarId) : PreProcessM (Array FVarId) := do
    goal.withContext do
      let hyps ← getPropHyps
      let filter hyp := do
        return !(← PreProcessM.checkRewritten hyp)
      hyps.filterM filter


end Normalize
end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant77de55af3e91e164f2a5bd238a4eb41434b524a87f92f1effe23d16e1c24bfd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant77de55af3e91e164f2a5bd238a4eb41434b524a87f92f1effe23d16e1c24bfd0.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `878ddfd7b82d8fc008c03d80bc1636a1127f660d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
