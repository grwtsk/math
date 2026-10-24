# centeredDiagonalAt_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b36c4d494fe5293e83afda3a1053376b434c005d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fef77b01d2df7b78f37fbc7bbcf44ca95ef5b9bf9d5b19237f9b5a4c310083a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f60bcd68-4039-9f01-b781-a191cce03294",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:442ec689-859e-75e3-b0bc-485688f9bb40",
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
  "slug": "centereddiagonalat-succ--394f684e23bf51b009289fdc",
  "source": {
    "blob": "b36c4d494fe5293e83afda3a1053376b434c005d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 334,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variant5fef77b01d2df7b78f37fbc7bbcf44ca95ef5b9bf9d5b19237f9b5a4c310083a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:394f684e23bf51b009289fdc9e1dce42c962924520976b7017b9240ca9196648",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variant5fef77b01d2df7b78f37fbc7bbcf44ca95ef5b9bf9d5b19237f9b5a4c310083a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:442ec689-859e-75e3-b0bc-485688f9bb40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–371.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variant5fef77b01d2df7b78f37fbc7bbcf44ca95ef5b9bf9d5b19237f9b5a4c310083a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment04/Variant5fef77b01d2df7b78f37fbc7bbcf44ca95ef5b9bf9d5b19237f9b5a4c310083a.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b36c4d494fe5293e83afda3a1053376b434c005d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
