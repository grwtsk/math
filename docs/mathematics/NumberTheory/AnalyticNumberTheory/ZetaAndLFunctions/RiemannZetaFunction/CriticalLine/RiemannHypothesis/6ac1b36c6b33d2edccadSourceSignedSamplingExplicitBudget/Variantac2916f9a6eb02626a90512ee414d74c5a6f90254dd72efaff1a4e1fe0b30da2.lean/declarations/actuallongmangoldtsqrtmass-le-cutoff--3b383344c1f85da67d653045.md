# actualLongMangoldtSqrtMass_le_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:666cbecd-6d4e-6877-fe7d-f51df3878e13",
  "kind": "theorem",
  "lexical_name": "actualLongMangoldtSqrtMass_le_cutoff",
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
  "slug": "actuallongmangoldtsqrtmass-le-cutoff--3b383344c1f85da67d653045",
  "source": {
    "blob": "7fe4c2b7919e6a62dedce9aee756b6eacf10e05d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b383344c1f85da67d653045b277cadbf59b605ee22a9d8ab638c55855b8d383",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:666cbecd-6d4e-6877-fe7d-f51df3878e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLongMangoldtSqrtMass_le_cutoff (A : ℝ) (hA : 1 ≤ A) :
    (∑ m ∈ longInventory A, vonMangoldt m / Real.sqrt (m : ℝ)) ≤
      Real.sqrt (sourceKernelCutoff A : ℝ) *
        (Real.log (sourceKernelCutoff A : ℝ) + Real.log 4 + 4 + Real.log 2) := by
  let N := sourceKernelCutoff A
  have hN : 1 ≤ N := (vaughanCutoff_pos A hA).trans
    (vaughanCutoff_le_sourceKernelCutoff A hA)
  have hN0 : 0 < (N : ℝ) := by exact_mod_cast (by omega : 0 < N)
  have hlog : 0 ≤ Real.log (N : ℝ) := Real.log_nonneg (by exact_mod_cast hN)
  have he := mangoldtLogError_abs_le (Real.log (N : ℝ)) hlog
  simp only [mangoldtLogError, mangoldtLogPrefix, Real.exp_log hN0,
    Nat.floor_natCast] at he
  have hpref : weightedMangoldt N ≤ Real.log (N : ℝ) + Real.log 4 + 4 + Real.log 2 := by
    have hu := (abs_le.mp he).2
    linarith
  have hsub : (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ)) ≤ weightedMangoldt N := by
    unfold weightedMangoldt
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro m hm
      have hb := Finset.mem_Ioc.mp hm
      exact Finset.mem_Ioc.mpr ⟨(Nat.zero_le _).trans_lt hb.1, hb.2⟩
    · intro m _ _
      exact div_nonneg vonMangoldt_nonneg (Nat.cast_nonneg _)
  calc
    _ ≤ ∑ m ∈ longInventory A,
        Real.sqrt (N : ℝ) * (vonMangoldt m / (m : ℝ)) := by
      apply Finset.sum_le_sum
      intro m hm
      have hm0 : 0 < (m : ℝ) := by exact_mod_cast longInventory_pos A hm
      have hmn : (m : ℝ) ≤ N := by exact_mod_cast (Finset.mem_Ioc.mp hm).2
      have heq : vonMangoldt m / Real.sqrt (m : ℝ) =
          Real.sqrt (m : ℝ) * (vonMangoldt m / (m : ℝ)) := by
        rw [show Real.sqrt (m : ℝ) * (vonMangoldt m / (m : ℝ)) =
          vonMangoldt m * (Real.sqrt (m : ℝ) / (m : ℝ)) by ring,
          Real.sqrt_div_self']
        ring
      rw [heq]
      exact mul_le_mul_of_nonneg_right (Real.sqrt_le_sqrt hmn)
        (div_nonneg vonMangoldt_nonneg hm0.le)
    _ = Real.sqrt (N : ℝ) * (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ)) := by
      rw [Finset.mul_sum]
    _ ≤ Real.sqrt (N : ℝ) * weightedMangoldt N :=
      mul_le_mul_of_nonneg_left hsub (Real.sqrt_nonneg _)
    _ ≤ _ := mul_le_mul_of_nonneg_left hpref (Real.sqrt_nonneg _)

/-- The unchanged upper floor cutoff gives an all-real explicit long-row budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ac1b36c6b33d2edccadSourceSignedSamplingExplicitBudget/Variantac2916f9a6eb02626a90512ee414d74c5a6f90254dd72efaff1a4e1fe0b30da2.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fe4c2b7919e6a62dedce9aee756b6eacf10e05d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
