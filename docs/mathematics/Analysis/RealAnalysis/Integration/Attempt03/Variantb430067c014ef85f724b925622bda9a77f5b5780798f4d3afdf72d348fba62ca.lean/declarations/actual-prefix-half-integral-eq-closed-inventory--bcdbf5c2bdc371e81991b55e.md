# actual_prefix_half_integral_eq_closed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:666ef666-812f-ab8f-5125-e6ad2bf6e861",
  "kind": "theorem",
  "lexical_name": "actual_prefix_half_integral_eq_closed_inventory",
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
  "slug": "actual-prefix-half-integral-eq-closed-inventory--bcdbf5c2bdc371e81991b55e",
  "source": {
    "blob": "6f4ac7fa3a44e1925da306a40c2ccc1b67afb35d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantb430067c014ef85f724b925622bda9a77f5b5780798f4d3afdf72d348fba62ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcdbf5c2bdc371e81991b55ed06a653ae4327ebc6c02bb2ccf5d9663f681de9f",
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

Occurrence: `result:666ef666-812f-ab8f-5125-e6ad2bf6e861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prefix_half_integral_eq_closed_inventory {A s : ℝ} (hA : 1 ≤ A)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    (∫ v in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..s,
      actualLogColumnPrefix A v * Real.exp (-v / 2)) =
      2 * (closedCenteredHalfInventory (vaughanCutoff A) (Nat.floor (Real.exp s)) -
        (∑ n ∈ Finset.Ioc (vaughanCutoff A) (Nat.floor (Real.exp s)),
          centeredBeta (vaughanCutoff A) n) / Real.sqrt (Real.exp s)) := by
  let U := vaughanCutoff A
  let M := Nat.floor (Real.exp s)
  have hu : ((U + 1 : ℕ) : ℝ) ≤ Real.exp s := by
    calc
      _ = Real.exp (Real.log ((U + 1 : ℕ) : ℝ)) := (Real.exp_log (by positivity)).symm
      _ ≤ _ := Real.exp_le_exp.mpr hs
  have hM : U + 1 ≤ M := Nat.le_floor hu
  have hU : 1 ≤ U := vaughanCutoff_pos A hA
  have hM1 : 1 ≤ M := by omega
  have hM0 : 0 < (M : ℝ) := by exact_mod_cast (by omega : 0 < M)
  have hMf : (M : ℝ) ≤ Real.exp s := Nat.floor_le (Real.exp_pos s).le
  have hs0 : Real.log (M : ℝ) ≤ s := by
    simpa only [Real.log_exp] using Real.log_le_log hM0 hMf
  have hs1 : s < Real.log ((M : ℝ) + 1) := by
    simpa only [Real.log_exp] using Real.log_lt_log (Real.exp_pos s)
      (Nat.lt_floor_add_one (Real.exp s))
  have hi := actualLogColumnPrefix_mul_intervalIntegrable A (M + 1) (by omega)
    (fun v : ℝ => Real.exp (-v / 2)) (by fun_prop)
  have hlog : Real.log ((U + 1 : ℕ) : ℝ) ≤ Real.log (M : ℝ) :=
    Real.log_le_log (by positivity) (by exact_mod_cast hM)
  have hsle : s ≤ Real.log ((M + 1 : ℕ) : ℝ) := by
    simpa only [Nat.cast_add, Nat.cast_one] using hs1.le
  have him := actualLogColumnPrefix_mul_intervalIntegrable A M hM
    (fun v : ℝ => Real.exp (-v / 2)) (by fun_prop)
  have hic : IntervalIntegrable (fun v => actualLogColumnPrefix A v * Real.exp (-v / 2))
      volume (Real.log (M : ℝ)) s := by
    apply hi.mono_set
    rw [uIcc_of_le (hlog.trans (hs0.trans hsle)), uIcc_of_le hs0]
    exact Icc_subset_Icc hlog hsle
  rw [← intervalIntegral.integral_add_adjacent_intervals him hic,
    integer_prefix_integral A M hM, partial_cell_integral A M s hM1 hs0 hs1]
  have hUM : U ≤ M - 1 := by omega
  have hMM : M - 1 + 1 = M := by omega
  have hsum := Finset.sum_Ioc_succ_top hUM (f := fun n => centeredBeta U n)
  have hhalf := Finset.sum_Ioc_succ_top hUM
    (f := fun n => centeredBeta U n / Real.sqrt (n : ℝ))
  rw [hMM] at hsum hhalf
  have hexp : Real.exp (-s / 2) = 1 / Real.sqrt (Real.exp s) := by
    rw [show -s / 2 = -(s / 2) by ring, Real.exp_neg, Real.exp_half, one_div]
  change _ = 2 * ((∑ n ∈ Finset.Ioc U M, centeredBeta U n / Real.sqrt (n : ℝ)) - _)
  simp only [closedCenteredHalfInventory]
  dsimp [U] at hsum hhalf ⊢
  rw [hsum, hhalf, hexp]
  ring


/-- Closed actual centered prefixes retain the original plus unit and quotient floors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variantb430067c014ef85f724b925622bda9a77f5b5780798f4d3afdf72d348fba62ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantb430067c014ef85f724b925622bda9a77f5b5780798f4d3afdf72d348fba62ca.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f4ac7fa3a44e1925da306a40c2ccc1b67afb35d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
