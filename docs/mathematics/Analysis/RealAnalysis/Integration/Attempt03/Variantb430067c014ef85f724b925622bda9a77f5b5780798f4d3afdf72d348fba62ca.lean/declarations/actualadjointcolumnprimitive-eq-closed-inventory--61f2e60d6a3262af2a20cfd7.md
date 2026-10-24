# actualAdjointColumnPrimitive_eq_closed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f72ab46-12aa-8d4e-fa23-b031f159c2b4",
  "kind": "theorem",
  "lexical_name": "actualAdjointColumnPrimitive_eq_closed_inventory",
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
  "slug": "actualadjointcolumnprimitive-eq-closed-inventory--61f2e60d6a3262af2a20cfd7",
  "source": {
    "blob": "6f4ac7fa3a44e1925da306a40c2ccc1b67afb35d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 215,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantb430067c014ef85f724b925622bda9a77f5b5780798f4d3afdf72d348fba62ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61f2e60d6a3262af2a20cfd786fa0fe61116836e1d835b16f7e3c8b75608da9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variantb430067c014ef85f724b925622bda9a77f5b5780798f4d3afdf72d348fba62ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f72ab46-12aa-8d4e-fa23-b031f159c2b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointColumnPrimitive_eq_closed_inventory {A s : ℝ} (hA : 1 ≤ A)
    (hs0 : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s)
    (hs1 : s ≤ actualColumnUpper A) :
    actualAdjointColumnPrimitive A s =
      2 * Real.sqrt (Real.exp s) *
        closedCenteredHalfInventory (vaughanCutoff A) (Nat.floor (Real.exp s)) -
      2 * (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor (Real.exp s)),
        centeredBeta (vaughanCutoff A) n) +
      2 * Real.sqrt (Real.exp s) *
        (actualCenteredColumnTerminalTrace A - actualCenteredColumnHalfInventory A) := by
  let K := sourceKernelCutoff A / (vaughanCutoff A + 1)
  have hK : vaughanCutoff A + 1 ≤ K := actual_column_window_nonempty hA
  have hi := actualLogColumnPrefix_mul_intervalIntegrable A K hK
    (fun v : ℝ => Real.exp (-v / 2)) (by fun_prop)
  have his : IntervalIntegrable (fun v => actualLogColumnPrefix A v * Real.exp (-v / 2))
      volume (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) s := by
    apply hi.mono_set
    rw [uIcc_of_le (column_upper_order hA), uIcc_of_le hs0]
    exact Icc_subset_Icc_left hs1
  have hc : (∫ v in actualColumnUpper A..
      Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ),
      actualLogColumnPrefix A v * Real.exp (-v / 2)) =
      -2 * (actualCenteredColumnHalfInventory A - actualCenteredColumnTerminalTrace A) := by
    rw [intervalIntegral.integral_symm]
    simpa only [actualColumnUpper, actualCenteredColumnHalfInventory,
      actualCenteredColumnTerminalTrace, closedCenteredHalfInventory] using
      congrArg Neg.neg (integer_prefix_integral A K hK)
  have hadd := intervalIntegral.integral_add_adjacent_intervals hi.symm his
  have hp := actual_prefix_half_integral_eq_closed_inventory hA hs0
  unfold actualAdjointColumnPrimitive
  have hcomm : (fun v : ℝ => Real.exp (-v / 2) * actualLogColumnPrefix A v) =
      (fun v : ℝ => actualLogColumnPrefix A v * Real.exp (-v / 2)) := by
    funext v
    ring
  rw [hcomm, ← hadd, hc, hp, Real.exp_half]
  have hz : Real.sqrt (Real.exp s) ≠ 0 := (Real.sqrt_pos.2 (Real.exp_pos s)).ne'
  field_simp
  ring

/-- The actual adjusted adjoint keeps its centered beta inventory and finite upper defect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variantb430067c014ef85f724b925622bda9a77f5b5780798f4d3afdf72d348fba62ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantb430067c014ef85f724b925622bda9a77f5b5780798f4d3afdf72d348fba62ca.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f4ac7fa3a44e1925da306a40c2ccc1b67afb35d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
