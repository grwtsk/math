# shortPlainSource_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1b67b7aad44d81910a75cca43636e9d79411eb9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25f11741-14b0-338f-cafe-3de5024c461e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2ce7ec1-60ee-86c7-f755-fc50efafee28",
  "kind": "theorem",
  "lexical_name": "shortPlainSource_abs_le",
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
  "slug": "shortplainsource-abs-le--0cbe954f1526aef417ecbd2e",
  "source": {
    "blob": "f1b67b7aad44d81910a75cca43636e9d79411eb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 236,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cbe954f1526aef417ecbd2e2c1593bb70f8f25fd8d721f7c106fa14bd7aca2e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2ce7ec1-60ee-86c7-f755-fc50efafee28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shortPlainSource_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |shortPlainSource A| ≤ 12*(Real.log 4+4)*A^2 + 40*(Real.log 4+4)*A := by
  have hA0 : 0 < A := by linarith
  have hc : 0 ≤ 3+10/A := by positivity
  have hk : 0 ≤ Real.log 4+4 := by positivity
  have hterm (d m : ℕ) (hd : 1 ≤ d) (hm : 1 ≤ m) :
      |realMoebius d * vonMangoldt m * sourcePlainKernel A ((d*m : ℕ) : ℝ)| ≤
        (3+10/A) * (1/Real.sqrt d) * (vonMangoldt m / Real.sqrt m) := by
    have hdm : (1 : ℝ) ≤ ((d*m : ℕ) : ℝ) := by exact_mod_cast (Nat.mul_pos hd hm)
    rw [abs_mul, abs_mul, abs_of_nonneg vonMangoldt_nonneg]
    calc
      _ ≤ 1 * vonMangoldt m * ((3+10/A) / Real.sqrt ((d*m : ℕ) : ℝ)) := by
        apply mul_le_mul
        · exact mul_le_mul_of_nonneg_right
            (EstimateMovingFrontBound.realMoebius_abs_le_one d) vonMangoldt_nonneg
        · exact sourcePlainKernel_abs_le A _ hA hdm
        · exact abs_nonneg _
        · positivity
      _ = _ := by rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg d)]; ring
  have hds : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1/Real.sqrt d) ≤ 2*A :=
    (EstimateMovingFrontBound.sum_reciprocal_sqrt_le _).trans
      (mul_le_mul_of_nonneg_left (sqrt_vaughanCutoff_le A hA) (by norm_num))
  have hms : (∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m / Real.sqrt m) ≤
      2*(Real.log 4+4)*A :=
    (EstimateVaughanBounds.sum_vonMangoldt_div_sqrt_le _).trans
      (mul_le_mul_of_nonneg_left (sqrt_vaughanCutoff_le A hA) (by positivity))
  unfold shortPlainSource
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          |realMoebius d * vonMangoldt m * sourcePlainKernel A ((d*m : ℕ) : ℝ)| := by
      exact (Finset.abs_sum_le_sum_abs _ _).trans
        (Finset.sum_le_sum (fun d _ ↦ Finset.abs_sum_le_sum_abs _ _))
    _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          (3+10/A)*(1/Real.sqrt d)*(vonMangoldt m / Real.sqrt m) := by
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro m hm
      exact hterm d m (Finset.mem_Icc.mp hd).1 (Finset.mem_Icc.mp hm).1
    _ = (3+10/A) * (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), 1/Real.sqrt d) *
        (∑ m ∈ Finset.Icc 1 (vaughanCutoff A), vonMangoldt m / Real.sqrt m) := by
      simp only [Finset.mul_sum, Finset.sum_mul]
      rw [Finset.sum_comm]
    _ ≤ (3+10/A) * (2*A) * (2*(Real.log 4+4)*A) := by gcongr
    _ = _ := by field_simp; ring

/-- Unconditional removal of every short-factor Vaughan term, through all real scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc06a6534710f8067a3a820bc14180b5f2afb58aa2b2db39256038ab93192b08f.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1b67b7aad44d81910a75cca43636e9d79411eb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
