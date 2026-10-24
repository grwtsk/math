# diag_estimate_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db2e3d52969f93d93f479a49e8e0c273da06f899",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 520,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc6dcd31-a2f1-e408-b3ee-8c8773dd9969",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08344531-9185-b7a0-82f1-7072490d38ca",
  "kind": "lemma",
  "lexical_name": "diag_estimate_chi",
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
  "slug": "diag-estimate-chi--66275e1e050ba37df67b1371",
  "source": {
    "blob": "db2e3d52969f93d93f479a49e8e0c273da06f899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 520,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66275e1e050ba37df67b1371a5deb7e93b174d21b76c69a0ac54028c9ebc9374",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08344531-9185-b7a0-82f1-7072490d38ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma diag_estimate_chi (hT : 0 ≤ T) (hΦ : Continuous Φ) (hΦ2 : Integrable fun x => Φ x ^ 2)
    (hΦabs : Integrable fun x => Φ x ^ 2 * |x|) {g : ℝ → ℝ}
    (hFT : ∀ y, ∫ x, Φ x ^ 2 * Real.cos (x * y) = 2 * π * g y) (hc1 : ∀ n, ‖c n‖ ≤ 1) (X : ℝ) :
    |(1 / (2 * π ^ 2)) * (∑ n ∈ primeRange X, (acoef n * ‖c n‖) ^ 2 * Aminus Φ T (Real.log n) (Real.log n))
        - T / π * ∑ n ∈ primeRange X, acoef n ^ 2 * ‖c n‖ ^ 2 * g (Real.log n)|
      ≤ (1 / (2 * π ^ 2)) * (∑ n ∈ primeRange X, acoef n ^ 2) * ∫ x, Φ x ^ 2 * |x| := by
  have hπ : (0:ℝ) < π := Real.pi_pos
  have e : (1 / (2 * π ^ 2)) * (∑ n ∈ primeRange X, (acoef n * ‖c n‖) ^ 2 * Aminus Φ T (Real.log n) (Real.log n))
        - T / π * ∑ n ∈ primeRange X, acoef n ^ 2 * ‖c n‖ ^ 2 * g (Real.log n)
      = (1 / (2 * π ^ 2)) * ∑ n ∈ primeRange X, (acoef n * ‖c n‖) ^ 2 *
          (Aminus Φ T (Real.log n) (Real.log n) - T * ∫ x, Φ x ^ 2 * Real.cos (x * Real.log n)) := by
    simp_rw [hFT]
    rw [Finset.mul_sum, Finset.mul_sum, Finset.mul_sum, ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [mul_pow]
    field_simp
  rw [e, abs_mul, abs_of_pos (by positivity), mul_assoc]
  refine mul_le_mul_of_nonneg_left ?_ (by positivity)
  calc |∑ n ∈ primeRange X, (acoef n * ‖c n‖) ^ 2 *
          (Aminus Φ T (Real.log n) (Real.log n) - T * ∫ x, Φ x ^ 2 * Real.cos (x * Real.log n))|
      ≤ ∑ n ∈ primeRange X, |(acoef n * ‖c n‖) ^ 2 *
          (Aminus Φ T (Real.log n) (Real.log n) - T * ∫ x, Φ x ^ 2 * Real.cos (x * Real.log n))| :=
        Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ primeRange X, acoef n ^ 2 * ∫ x, Φ x ^ 2 * |x| := by
        refine Finset.sum_le_sum fun n _ => ?_
        rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
        calc (acoef n * ‖c n‖) ^ 2 *
              |Aminus Φ T (Real.log n) (Real.log n) - T * ∫ x, Φ x ^ 2 * Real.cos (x * Real.log n)|
            ≤ acoef n ^ 2 * |Aminus Φ T (Real.log n) (Real.log n)
                - T * ∫ x, Φ x ^ 2 * Real.cos (x * Real.log n)| := by
              apply mul_le_mul_of_nonneg_right _ (abs_nonneg _)
              rw [mul_pow]
              calc acoef n ^ 2 * ‖c n‖ ^ 2 ≤ acoef n ^ 2 * 1 ^ 2 := by
                    apply mul_le_mul_of_nonneg_left _ (sq_nonneg _)
                    exact pow_le_pow_left₀ (norm_nonneg _) (hc1 n) 2
                _ = acoef n ^ 2 := by ring
          _ ≤ acoef n ^ 2 * ∫ x, Φ x ^ 2 * |x| :=
              mul_le_mul_of_nonneg_left (abs_Aminus_diag_sub_le hT hΦ hΦ2 hΦabs _) (sq_nonneg _)
    _ = (∑ n ∈ primeRange X, acoef n ^ 2) * ∫ x, Φ x ^ 2 * |x| := by rw [Finset.sum_mul]

/-- 𝒪₂ for P_{X,c} (mirror of O2_estimate; weights ≤ 1, phase-free bound). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PPChi/Variant10c523dae5e95dddaf24ddfa2fe02fd36b32d8cc6671c0c13788d66e46ca23a0.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db2e3d52969f93d93f479a49e8e0c273da06f899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
