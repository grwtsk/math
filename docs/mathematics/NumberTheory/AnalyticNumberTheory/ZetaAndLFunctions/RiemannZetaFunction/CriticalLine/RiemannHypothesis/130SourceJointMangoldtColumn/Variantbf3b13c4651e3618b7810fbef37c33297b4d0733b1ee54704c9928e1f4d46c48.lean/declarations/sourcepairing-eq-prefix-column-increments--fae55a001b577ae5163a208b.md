# sourcePairing_eq_prefix_column_increments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "999731dae046c743e2224259714c6f91b8159fa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cebf414b-add1-3291-1b1e-4f2ccf62c16c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df79928c-2384-6940-c7c5-04ac89a8c8c7",
  "kind": "theorem",
  "lexical_name": "sourcePairing_eq_prefix_column_increments",
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
  "slug": "sourcepairing-eq-prefix-column-increments--fae55a001b577ae5163a208b",
  "source": {
    "blob": "999731dae046c743e2224259714c6f91b8159fa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/130SourceJointMangoldtColumn/Variantbf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fae55a001b577ae5163a208bd6dc0700b5f45481a0594de38da94ddcdff9aed8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/130SourceJointMangoldtColumn/Variantbf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df79928c-2384-6940-c7c5-04ac89a8c8c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sourcePairing_eq_prefix_column_increments (A : ℝ) (hA : 1 ≤ A) :
    sourceHankelPairing A =
      ∑ k ∈ Finset.Ico (vaughanCutoff A + 1) (sourceKernelCutoff A),
        centeredLongPrefix A k * (mangoldtColumn A k - mangoldtColumn A (k + 1)) := by
  classical
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let b : ℕ → ℝ := fun n => if U < n then centeredBeta U n else 0
  let B := centeredLongPrefix A
  let R := mangoldtColumn A
  have hUN : U ≤ N := vaughanCutoff_le_sourceKernelCutoff A hA
  change sourceHankelPairing A =
    ∑ k ∈ Finset.Ico (U + 1) N, B k * (R k - R (k + 1))
  by_cases he : N = U
  · have hI : longInventory A = ∅ := by
      change Finset.Ioc U N = ∅
      rw [he]
      simp
    have hJ : Finset.Ico (U + 1) N = ∅ := Finset.Ico_eq_empty (by omega)
    rw [sourceHankelPairing_eq_centeredRectangle A hA]
    simp only [centeredRectangle, hI, hJ, Finset.sum_empty]
  have hlt : U < N := by omega
  have hprefix (k : ℕ) : (∑ n ∈ Finset.range (k + 1), b n) = B k := by
    have hsub : Finset.Ioc U k ⊆ Finset.range (k + 1) := by
      intro n hn
      have hnk := (Finset.mem_Ioc.mp hn).2
      exact Finset.mem_range.mpr (by omega)
    calc
      _ = ∑ n ∈ Finset.Ioc U k, b n := by
        symm
        apply Finset.sum_subset hsub
        intro n hn hnot
        have hnk : n ≤ k := by have := Finset.mem_range.mp hn; omega
        have hnU : ¬ U < n := by
          intro h
          exact hnot (Finset.mem_Ioc.mpr ⟨h, hnk⟩)
        simp only [b, if_neg hnU]
      _ = B k := by
        apply Finset.sum_congr rfl
        intro n hn
        simp only [b, if_pos (Finset.mem_Ioc.mp hn).1]
        rfl
  have hBU : B U = 0 := by simp [B, centeredLongPrefix, U]
  have hRN : R N = 0 := mangoldtColumn_upper_zero A hA
  have hinterval : Finset.Ioc U (N - 1) = Finset.Ico (U + 1) N := by
    ext k
    simp only [Finset.mem_Ioc, Finset.mem_Ico]
    omega
  have hparts := Finset.sum_Ioc_by_parts R b hlt
  simp only [smul_eq_mul] at hparts
  simp_rw [hprefix] at hparts
  rw [hRN, hBU, zero_mul, mul_zero, sub_zero, zero_sub, hinterval] at hparts
  calc
    sourceHankelPairing A = ∑ n ∈ Finset.Ioc U N, centeredBeta U n * R n := by
      rw [sourceHankelPairing_eq_centeredRectangle A hA]
      unfold centeredRectangle
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n _
      change (∑ m ∈ longInventory A,
        vonMangoldt m * centeredBeta U n * sourcePlainWeight A ((m * n : ℕ) : ℝ)) =
          centeredBeta U n *
            ∑ m ∈ longInventory A, vonMangoldt m * sourcePlainWeight A ((m * n : ℕ) : ℝ)
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      ring
    _ = ∑ n ∈ Finset.Ioc U N, R n * b n := by
      apply Finset.sum_congr rfl
      intro n hn
      simp only [b, if_pos (Finset.mem_Ioc.mp hn).1]
      ring
    _ = -∑ k ∈ Finset.Ico (U + 1) N, (R (k + 1) - R k) * B k := hparts
    _ = _ := by
      rw [← Finset.sum_neg_distrib]
      apply Finset.sum_congr rfl
      intro k _
      ring

/-- Exact column Abel identity for the unchanged actual two-state inner product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/130SourceJointMangoldtColumn/Variantbf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/130SourceJointMangoldtColumn/Variantbf3b13c4651e3618b7810fbef37c33297b4d0733b1ee54704c9928e1f4d46c48.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `999731dae046c743e2224259714c6f91b8159fa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
