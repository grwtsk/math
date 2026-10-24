# finite_signed_column_work_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf3873d3f476a29786c1fa6c69417754f43e94e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 514,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cca74cdb-3acf-d6b5-2204-f8cf7ed3c43e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4c63a85-cfed-86b8-7027-66a55564674c",
  "kind": "theorem",
  "lexical_name": "finite_signed_column_work_factorization",
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
  "slug": "finite-signed-column-work-factorization--a3e7954f9814a18935c6118a",
  "source": {
    "blob": "fbf3873d3f476a29786c1fa6c69417754f43e94e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 514,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3e7954f9814a18935c6118a8f961c0907d47a64a2520ef4f9e342ecd700e298",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4c63a85-cfed-86b8-7027-66a55564674c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_signed_column_work_factorization
    {A l b : ℝ} (hA : 0 < A) (hlb : l ≤ b) (s : Finset ℕ) (B : ℕ → ℝ)
    (hpos : ∀ k ∈ s, 0 < (k : ℝ)) :
    (∫ t in l..b, mangoldtLogError t *
      (∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
        sourceColumnTimeDeriv A t ((k : ℝ) + 1)))) =
      (∫ v : ℝ, profileX (deriv (normalizedTest explicitSecondDerivative A)) l b v *
        (∑ k ∈ s, B k * profileYCell
          (deriv (normalizedTest explicitSecondDerivative A)) (k : ℝ) v)) +
        (1 / 4 : ℝ) * (∫ v : ℝ,
          profileX (normalizedTest explicitSecondDerivative A) l b v *
            (∑ k ∈ s, B k * profileYCell
              (normalizedTest explicitSecondDerivative A) (k : ℝ) v)) := by
  have he : (fun t : ℝ => mangoldtLogError t *
      (∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
        sourceColumnTimeDeriv A t ((k : ℝ) + 1)))) =
      (fun t : ℝ => ∑ k ∈ s, B k * (mangoldtLogError t *
        (sourceColumnTimeDeriv A t (k : ℝ) -
          sourceColumnTimeDeriv A t ((k : ℝ) + 1)))) := by
    funext t
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  rw [he, intervalIntegral.integral_finsetSum (fun k hk =>
    (error_column_difference_intervalIntegrable hA hlb (hpos k hk)).const_mul (B k))]
  simp_rw [intervalIntegral.integral_const_mul]
  calc
    _ = ∑ k ∈ s, B k *
        ((∫ v : ℝ, profileX (deriv (normalizedTest explicitSecondDerivative A)) l b v *
          profileYCell (deriv (normalizedTest explicitSecondDerivative A)) (k : ℝ) v) +
          (1 / 4 : ℝ) * (∫ v : ℝ,
            profileX (normalizedTest explicitSecondDerivative A) l b v *
              profileYCell (normalizedTest explicitSecondDerivative A) (k : ℝ) v)) := by
      apply Finset.sum_congr rfl
      intro k hk
      rw [error_column_difference_integral_eq_profile_cells hA hlb (hpos k hk)]
    _ = _ := by
      rw [finite_profile_product_integral _
        ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num)) hlb
        (deriv_source_tsupport_subset hA) s B hpos,
        finite_profile_product_integral _ (normalizedTest_contDiff A hA).continuous hlb
        (source_tsupport_subset hA) s B hpos]
      simp_rw [mul_add, Finset.sum_add_distrib]
      rw [Finset.mul_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro k _
      ring

/-- The signed original error work is a plus pairing of two independent actual source rows.
X1 and Y1 are directly integrated first derivatives, not derivative aliases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantc303b59b94fd736d72e8ac5ccab533b95f531e11d1370ae65822396aa12c6715.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf3873d3f476a29786c1fa6c69417754f43e94e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
