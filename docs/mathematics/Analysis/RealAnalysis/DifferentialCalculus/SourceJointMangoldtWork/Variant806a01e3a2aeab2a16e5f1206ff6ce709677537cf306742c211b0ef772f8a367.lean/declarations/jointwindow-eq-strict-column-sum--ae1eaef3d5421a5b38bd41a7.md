# jointWindow_eq_strict_column_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea3eab73f1a086b824331038b13b55449b3308ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/806a01e3a2aeab2a16e5f1206ff6ce709677537cf306742c211b0ef772f8a367.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc3c2b39-6f5e-3da7-8ed4-4a94ae2a798e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e5b9a32-ee76-fe02-04d3-b199cc0ca93c",
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
  "slug": "jointwindow-eq-strict-column-sum--ae1eaef3d5421a5b38bd41a7",
  "source": {
    "blob": "ea3eab73f1a086b824331038b13b55449b3308ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant806a01e3a2aeab2a16e5f1206ff6ce709677537cf306742c211b0ef772f8a367.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae1eaef3d5421a5b38bd41a75946b640d341a374e6d3462ac1a8694823f672c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant806a01e3a2aeab2a16e5f1206ff6ce709677537cf306742c211b0ef772f8a367.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e5b9a32-ee76-fe02-04d3-b199cc0ca93c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–191.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant806a01e3a2aeab2a16e5f1206ff6ce709677537cf306742c211b0ef772f8a367.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceJointMangoldtWork/Variant806a01e3a2aeab2a16e5f1206ff6ce709677537cf306742c211b0ef772f8a367.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea3eab73f1a086b824331038b13b55449b3308ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
