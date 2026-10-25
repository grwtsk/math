# shortCircuitPass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef02a387896d444b18a4140b233c9dd6dec85fa833a024d9dd6d3bebc0d9e3cd",
  "kind": "def",
  "lexical_name": "shortCircuitPass",
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
  "slug": "shortcircuitpass--78bf8c24caf57157289aa245",
  "source": {
    "blob": "21402e74b2fff63893719c24227d56f2d4000fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 27,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShortCircuit/Variantb8660efec9c336d4f5b336374cfe8a09cfc55539c018765af83c5d62c247b69e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78bf8c24caf57157289aa2454dc4fbca77e9e05de0c133be6e4602d64c2415cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShortCircuit/Variantb8660efec9c336d4f5b336374cfe8a09cfc55539c018765af83c5d62c247b69e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef02a387896d444b18a4140b233c9dd6dec85fa833a024d9dd6d3bebc0d9e3cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def shortCircuitPass : Pass where
  name := `shortCircuitPass
  run' goal := do
    goal.withContext do
      let mut theorems : SimpTheoremsArray := #[]
      theorems ← theorems.addTheorem
        (Lean.Meta.Origin.decl ``mul_beq_mul_short_circuit_left)
        (mkConst ``mul_beq_mul_short_circuit_left)
      theorems ← theorems.addTheorem
        (Lean.Meta.Origin.decl ``mul_beq_mul_short_circuit_right)
        (mkConst ``mul_beq_mul_short_circuit_right)

      let simpCtx ← Simp.mkContext
        (config := {
          failIfUnchanged := false,
          zetaDelta := true,
          singlePass := true,
          maxSteps := (← PreProcessM.getConfig).maxSteps
        })
        (simpTheorems := theorems)
        (congrTheorems := (← getSimpCongrTheorems))

      let hyps ← getPropHyps
      let ⟨result?, _⟩ ← simpGoal goal
        (ctx := simpCtx)
        (simprocs := #[])
        (fvarIdsToSimp := hyps)
      let some (_, newGoal) := result? | return none
      return newGoal

end Normalize
end Lean.Meta.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShortCircuit/Variantb8660efec9c336d4f5b336374cfe8a09cfc55539c018765af83c5d62c247b69e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ShortCircuit/Variantb8660efec9c336d4f5b336374cfe8a09cfc55539c018765af83c5d62c247b69e.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21402e74b2fff63893719c24227d56f2d4000fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
