# jointWindow_eq_strict_column_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af8667d5-74db-7363-e2fb-9de39ec0760e",
  "kind": "theorem",
  "lexical_name": "jointWindow_eq_strict_column_sum",
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
  "slug": "jointwindow-eq-strict-column-sum--b6f39adfff215826b0c592c3",
  "source": {
    "blob": "2550ae973f60e84a90581258d54841866dc9d5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6f39adfff215826b0c592c3935da556803f216d401c664f4aabf72a9b40e304",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af8667d5-74db-7363-e2fb-9de39ec0760e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem jointWindow_eq_strict_column_sum (A : ℝ) (hA : 1 ≤ A) :
    mangoldtLogWindow (Real.log (vaughanCutoff A : ℝ))
        (Real.log (sourceKernelCutoff A : ℝ)) (actualJointMangoldtTest A) =
      ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
        (sourceKernelCutoff A / (vaughanCutoff A + 1)),
        centeredPrefix A k * (column A k - column A (k + 1)) := by
  classical
  rcases log_cutoff_bounds A hA with ⟨hl, hlb⟩
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (vaughanCutoff A : ℝ) := by exact_mod_cast (by omega : 0 < vaughanCutoff A)
  have hN0 : 0 < (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast (by omega : 0 < sourceKernelCutoff A)
  rw [mangoldtLogWindow_eq_interval_sum _ _ hl hlb,
    Real.exp_log hU0, Real.exp_log hN0]
  simp only [Nat.floor_natCast]
  change (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ) *
      (∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
        (sourceKernelCutoff A / (vaughanCutoff A + 1)),
        centeredPrefix A k *
          (columnTest A k (Real.log (m : ℝ)) -
            columnTest A (k + 1) (Real.log (m : ℝ))))) = _
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k hk
  have hk0 : 0 < k := by have := (Finset.mem_Ico.mp hk).1; omega
  change (∑ m ∈ longInventory A, vonMangoldt m / (m : ℝ) *
      (centeredPrefix A k *
        (columnTest A k (Real.log (m : ℝ)) -
          columnTest A (k + 1) (Real.log (m : ℝ))))) =
    centeredPrefix A k *
      ((∑ m ∈ longInventory A,
        vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)) -
        (∑ m ∈ longInventory A,
          vonMangoldt m * sourcePlainWeight A ((m * (k + 1) : ℕ) : ℝ)))
  rw [← Finset.sum_sub_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  have hm0 : 0 < m := by have := (Finset.mem_Ioc.mp hm).1; omega
  rw [show vonMangoldt m / (m : ℝ) *
      (centeredPrefix A k *
        (columnTest A k (Real.log (m : ℝ)) -
          columnTest A (k + 1) (Real.log (m : ℝ)))) =
    centeredPrefix A k *
      (vonMangoldt m / (m : ℝ) * columnTest A k (Real.log (m : ℝ)) -
        vonMangoldt m / (m : ℝ) * columnTest A (k + 1) (Real.log (m : ℝ))) by ring]
  rw [weighted_columnTest_at_natural A m k hm0 hk0,
    weighted_columnTest_at_natural A m (k + 1) hm0 (by omega)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variante504d6c4b2c51be1aa6201dae63c940455d03b0854e4e966a158d82ceeb3e4f2.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2550ae973f60e84a90581258d54841866dc9d5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
