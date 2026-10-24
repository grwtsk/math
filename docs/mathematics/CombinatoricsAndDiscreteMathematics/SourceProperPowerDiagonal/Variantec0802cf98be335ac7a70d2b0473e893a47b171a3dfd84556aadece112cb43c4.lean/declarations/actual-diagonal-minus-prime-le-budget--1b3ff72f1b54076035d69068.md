# actual_diagonal_minus_prime_le_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c12c0bf-9fd7-1433-51dc-cd74e2011342",
  "kind": "theorem",
  "lexical_name": "actual_diagonal_minus_prime_le_budget",
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
  "slug": "actual-diagonal-minus-prime-le-budget--1b3ff72f1b54076035d69068",
  "source": {
    "blob": "d0af7cd80483f3615a3a0e27fb7e2cc000c5f61c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b3ff72f1b54076035d690685e82e7338dadb307c78cb51f319938939483735d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c12c0bf-9fd7-1433-51dc-cd74e2011342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_diagonal_minus_prime_le_budget (A : ℝ) (hA : 1 ≤ A) :
    |typeTwoDiagonal A - retainedPrimeDiagonal A| ≤ powerTailBudget (vaughanCutoff A) := by
  have hU := vaughanCutoff_pos A hA
  have hsub : Ioc (vaughanCutoff A) (sourceKernelCutoff A) ⊆ Ioc 0 (sourceKernelCutoff A) := by
    intro m hm
    exact Finset.mem_Ioc.mpr ⟨lt_of_le_of_lt (Nat.zero_le _) (Finset.mem_Ioc.mp hm).1,
      (Finset.mem_Ioc.mp hm).2⟩
  have hf (m : ℕ) : 0 ≤ (if vaughanCutoff A < m.minFac then
      properPowerCoefficient m / (m : ℝ) else 0) := by
    split_ifs
    · exact div_nonneg (properPowerCoefficient_nonneg m) (by positivity)
    · rfl
  have hmass := Finset.sum_le_sum_of_subset_of_nonneg hsub (fun m _ _ => hf m)
  rw [← inventoryPrimeDiagonal_eq_retainedPrimeDiagonal A hA,
    typeTwoDiagonal_eq_longBase_sum A hA, inventoryPrimeDiagonal, Finset.sum_filter, Finset.sum_filter]
  have heq : (-∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
      if vaughanCutoff A < m.minFac then
        vonMangoldt m / (m : ℝ) * sourceCorrelation explicitSecondDerivative A (2 * Real.log m) else 0) -
      (-∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) =
      -(∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        ((if vaughanCutoff A < m.minFac then
          vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
        (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0))) := by
    rw [Finset.sum_sub_distrib]
    unfold diagonalCorrelation
    ring
  rw [heq, abs_neg]
  calc
    _ ≤ ∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        |(if vaughanCutoff A < m.minFac then
          vonMangoldt m / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0) -
        (if m.Prime then Real.log (m : ℝ) / (m : ℝ) * diagonalCorrelation A (Real.log m) else 0)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        if vaughanCutoff A < m.minFac then properPowerCoefficient m / (m : ℝ) else 0 :=
      Finset.sum_le_sum fun m hm => diagonal_coefficient_error_le_tail A hA _ m (Finset.mem_Ioc.mp hm).1
    _ ≤ tailProperMass (vaughanCutoff A) (sourceKernelCutoff A) := hmass
    _ ≤ _ := tailProperMass_le_budget _ _ hU

/-- This removes the large-base proper-power remainder premise at every real tail scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantec0802cf98be335ac7a70d2b0473e893a47b171a3dfd84556aadece112cb43c4.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0af7cd80483f3615a3a0e27fb7e2cc000c5f61c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
