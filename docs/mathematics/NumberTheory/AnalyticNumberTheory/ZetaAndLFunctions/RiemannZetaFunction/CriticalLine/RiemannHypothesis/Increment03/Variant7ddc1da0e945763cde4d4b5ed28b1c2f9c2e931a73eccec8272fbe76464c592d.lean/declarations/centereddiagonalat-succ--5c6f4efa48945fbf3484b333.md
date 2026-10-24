# centeredDiagonalAt_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb87ab77-0cd9-ef84-df49-8385ed9c03fc",
  "kind": "theorem",
  "lexical_name": "centeredDiagonalAt_succ",
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
  "slug": "centereddiagonalat-succ--5c6f4efa48945fbf3484b333",
  "source": {
    "blob": "2a160cf1d4ca2621b7cd95d2dd15f42de19df15c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 342,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment03/Variant7ddc1da0e945763cde4d4b5ed28b1c2f9c2e931a73eccec8272fbe76464c592d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c6f4efa48945fbf3484b33399520f77d4e95ede5d9c04e65b1c8a138aff0327",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment03/Variant7ddc1da0e945763cde4d4b5ed28b1c2f9c2e931a73eccec8272fbe76464c592d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb87ab77-0cd9-ef84-df49-8385ed9c03fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredDiagonalAt_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    centeredDiagonalAt A (U + 1) N - centeredDiagonalAt A U N =
      (moebius (U + 1) : ℝ) *
        (diagonal (Finset.Ioc (U + 1) N) (sourceKernel A) (fun _ ↦ 1) /
            (U + 1 : ℕ) -
          diagonal (Finset.Ioc (U + 1) N) (sourceKernel A)
            (fun n ↦ if U + 1 ∣ n then 1 else 0)) -
      sourceKernel A (U + 1) (U + 1) * centeredBeta U (U + 1) := by
  classical
  let S := Finset.Ioc (U + 1) N
  have hk : U + 1 ∉ S := by simp [S]
  have hc : diagonal S (sourceKernel A) (centeredBeta (U + 1)) =
      diagonal S (sourceKernel A) (centeredBeta U) +
        (moebius (U + 1) : ℝ) *
          (diagonal S (sourceKernel A) (fun _ ↦ 1) / (U + 1 : ℕ) -
            diagonal S (sourceKernel A) (fun n ↦ if U + 1 ∣ n then 1 else 0)) := by
    calc
      _ = diagonal S (sourceKernel A) (fun n ↦ centeredBeta U n +
          (moebius (U + 1) : ℝ) *
            ((1 : ℝ) / (U + 1 : ℕ) - if U + 1 ∣ n then 1 else 0)) := by
        unfold diagonal
        apply Finset.sum_congr rfl
        intro n hn
        rw [centeredBeta_succ U n (by have := (Finset.mem_Ioc.mp hn).1; omega)]
      _ = _ := by
        rw [diagonal_row_add, diagonal_row_smul]
        have he : (fun n : ℕ ↦ (1 : ℝ) / (U + 1 : ℕ) -
            if U + 1 ∣ n then 1 else 0) =
            (fun n ↦ (1 / (U + 1 : ℕ)) * 1 +
              (-1 : ℝ) * (if U + 1 ∣ n then 1 else 0)) := by funext n; ring
        rw [he, diagonal_row_add, diagonal_row_smul, diagonal_row_smul]
        ring
  unfold centeredDiagonalAt
  rw [hc, longInventory_succ U N hUN, diagonal_insert S (sourceKernel A) _ _ hk]
  unfold S
  ring

/-- The full rectangle update retains both axes and the removed corner before deletion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment03/Variant7ddc1da0e945763cde4d4b5ed28b1c2f9c2e931a73eccec8272fbe76464c592d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment03/Variant7ddc1da0e945763cde4d4b5ed28b1c2f9c2e931a73eccec8272fbe76464c592d.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a160cf1d4ca2621b7cd95d2dd15f42de19df15c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
