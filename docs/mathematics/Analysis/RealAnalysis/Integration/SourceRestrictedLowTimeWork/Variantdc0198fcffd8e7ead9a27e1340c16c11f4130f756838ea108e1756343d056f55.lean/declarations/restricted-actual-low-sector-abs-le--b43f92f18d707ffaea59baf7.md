# restricted_actual_low_sector_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6a8b44b-a66b-aa20-d6ab-b689f894405f",
  "kind": "theorem",
  "lexical_name": "restricted_actual_low_sector_abs_le",
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
  "slug": "restricted-actual-low-sector-abs-le--b43f92f18d707ffaea59baf7",
  "source": {
    "blob": "ab4c31ad7b2f396f1646be7cfe1c025367b492ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 356,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdc0198fcffd8e7ead9a27e1340c16c11f4130f756838ea108e1756343d056f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b43f92f18d707ffaea59baf7f06d8db9c6d866ce99d4927c27c8f7708589f04b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdc0198fcffd8e7ead9a27e1340c16c11f4130f756838ea108e1756343d056f55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6a8b44b-a66b-aa20-d6ab-b689f894405f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restricted_actual_low_sector_abs_le
    (r : ℝ → ℝ) (hc : Continuous r) {A : ℝ} (hA : 1 ≤ A)
    (hs : tsupport r ⊆ Icc (-A) A) (S : Set ℝ) (H : ℝ) (hH : 0 ≤ H)
    (hpair : ∀ t u : ℝ, |∫ v in S, r (v - t) * r (v + Real.log u)| ≤ H) :
    |∫ v in S, actualLowTimeProfile r A v * actualReflectedProfile r A v| ≤
      2 * errorBudget * H := by
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  let s := Finset.Ico (U + 1) K
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let mass := ∫ t in Real.log (U : ℝ)..Real.log ((U + 1 : ℕ) : ℝ), Real.exp (t / 2)
  have hU : 1 ≤ U := by have := vaughanCutoff_pos A hA; dsimp only [U]; omega
  have hU0 : 0 < (U : ℝ) := by exact_mod_cast (by omega : 0 < U)
  have hla : Real.log (U : ℝ) ≤ Real.log ((U + 1 : ℕ) : ℝ) :=
    Real.log_le_log hU0 (by exact_mod_cast Nat.le_succ U)
  have hm : 0 ≤ mass := intervalIntegral.integral_nonneg_of_forall hla
    (fun t => (Real.exp_pos (t / 2)).le)
  have hCe : 0 ≤ errorBudget := mangoldt_error_budget_pos.le
  have hpos : ∀ k ∈ s, 0 < (k : ℝ) := by
    intro k hk
    exact_mod_cast (by have := (Finset.mem_Ico.mp hk).1; omega : 0 < k)
  change |∫ v in S, timeRow r (Real.log (U : ℝ))
    (Real.log ((U + 1 : ℕ) : ℝ)) v * (∑ k ∈ s, B k * cellRow r (k : ℝ) v)| ≤ _
  rw [finite_profile_restricted_integral r hc hla hs S s B hpos]
  calc
    _ ≤ ∑ k ∈ s, |B k| *
        |∫ v in S, timeRow r (Real.log (U : ℝ))
          (Real.log ((U + 1 : ℕ) : ℝ)) v * cellRow r (k : ℝ) v| := by
      simpa only [abs_mul] using Finset.abs_sum_le_sum_abs
        (fun k => B k * (∫ v in S, timeRow r (Real.log (U : ℝ))
          (Real.log ((U + 1 : ℕ) : ℝ)) v * cellRow r (k : ℝ) v)) s
    _ ≤ ∑ k ∈ s, |B k| * (errorBudget * H * mass * cellMass (k : ℝ)) := by
      apply Finset.sum_le_sum
      intro k hk
      exact mul_le_mul_of_nonneg_left
        (restricted_low_cell_abs_le r hc hs S U hU H hH hpair (hpos k hk)) (abs_nonneg _)
    _ = (errorBudget * H * mass) * ∑ k ∈ s, |B k| * cellMass (k : ℝ) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      ring
    _ ≤ (errorBudget * H * mass) * (2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ)) :=
      mul_le_mul_of_nonneg_left (centered_cell_mass_budget U K hU) (by positivity)
    _ = (errorBudget * H) *
        (mass * (2 * (U : ℝ) / Real.sqrt ((U + 1 : ℕ) : ℝ))) := by ring
    _ ≤ (errorBudget * H) * 2 :=
      mul_le_mul_of_nonneg_left (exponential_low_time_mass_prefix_budget U hU) (by positivity)
    _ = _ := by ring

/-- The ordinary source sector uses the existing normalization energy, on any region. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdc0198fcffd8e7ead9a27e1340c16c11f4130f756838ea108e1756343d056f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdc0198fcffd8e7ead9a27e1340c16c11f4130f756838ea108e1756343d056f55.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4c31ad7b2f396f1646be7cfe1c025367b492ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
