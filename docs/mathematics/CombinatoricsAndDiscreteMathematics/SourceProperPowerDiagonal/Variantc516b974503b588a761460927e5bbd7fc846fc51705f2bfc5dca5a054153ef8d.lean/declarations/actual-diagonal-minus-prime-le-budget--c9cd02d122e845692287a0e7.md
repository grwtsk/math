# actual_diagonal_minus_prime_le_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2c6d7b8df6b7a4c63e325f78e5ff0b61536cf17",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7df026b7-ac5c-2ec5-a654-45c25140bcea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64d172fa-f997-2426-27ff-c1f81d6e2f4e",
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
  "slug": "actual-diagonal-minus-prime-le-budget--c9cd02d122e845692287a0e7",
  "source": {
    "blob": "a2c6d7b8df6b7a4c63e325f78e5ff0b61536cf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9cd02d122e845692287a0e73db56b3bd1d8d23ba9547cb6dbe9702a56077e80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64d172fa-f997-2426-27ff-c1f81d6e2f4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–98.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceProperPowerDiagonal/Variantc516b974503b588a761460927e5bbd7fc846fc51705f2bfc5dca5a054153ef8d.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2c6d7b8df6b7a4c63e325f78e5ff0b61536cf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
