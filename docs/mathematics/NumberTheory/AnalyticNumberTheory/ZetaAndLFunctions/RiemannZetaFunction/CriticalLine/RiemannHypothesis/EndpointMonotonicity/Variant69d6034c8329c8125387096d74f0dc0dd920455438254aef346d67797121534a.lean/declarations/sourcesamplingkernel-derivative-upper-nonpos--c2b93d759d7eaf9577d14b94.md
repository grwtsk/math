# sourceSamplingKernel_derivative_upper_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88daa8b5b5e7a93bb619ea63c88701e6228cd89a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af61bb8d-accf-7cf1-f707-ef06dd054a79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32e6e19f-bfb4-25fa-8952-33d80a56b6d9",
  "kind": "theorem",
  "lexical_name": "sourceSamplingKernel_derivative_upper_nonpos",
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
  "slug": "sourcesamplingkernel-derivative-upper-nonpos--c2b93d759d7eaf9577d14b94",
  "source": {
    "blob": "88daa8b5b5e7a93bb619ea63c88701e6228cd89a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2b93d759d7eaf9577d14b94e73aaff77a48c6c5137c401a6e7bb97f82170f0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32e6e19f-bfb4-25fa-8952-33d80a56b6d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceSamplingKernel_derivative_upper_nonpos (A q : ℝ) (hA : 3 ≤ A)
    (hq : Real.exp (2 * A) / 4 ≤ q) :
    deriv (SourceSampling.sourceSamplingKernel A) q ≤ 0 := by
  have hq0 : 0 < q := (div_pos (Real.exp_pos _) (by norm_num : (0 : ℝ) < 4)).trans_le hq
  rw [SourceSamplingDerivative.sourceSamplingKernel_deriv A q (by linarith) hq0]
  apply mul_nonpos_of_nonneg_of_nonpos (by positivity)
  apply Finset.sum_nonpos
  intro k hk
  have hk1 := ((SourceSampling.mem_samplingIndices_iff A q k hq0).mp hk).1
  by_cases hkone : k = 1
  · simp [hkone]
  have hk2 : (2 : ℝ) ≤ k := by exact_mod_cast (show 2 ≤ k by omega)
  have hcoef : 0 ≤ Real.log (k : ℝ) / Real.sqrt (q * (k : ℝ)) := by
    exact div_nonneg (Real.log_nonneg (by linarith)) (Real.sqrt_nonneg _)
  apply mul_nonpos_of_nonneg_of_nonpos hcoef
  apply correlationDifference_endpoint_nonpos A _ hA
  have hprod : Real.exp (2 * A) / 2 ≤ q * (k : ℝ) := by nlinarith
  have hl : 2 * A - Real.log 2 ≤ Real.log (q * (k : ℝ)) := by
    have hh := Real.log_le_log (div_pos (Real.exp_pos _) (by norm_num : (0 : ℝ) < 2)) hprod
    simpa only [Real.log_div (Real.exp_ne_zero _) (by norm_num : (2 : ℝ) ≠ 0),
      Real.log_exp] using hh
  have hlog : Real.log 2 < 3 / 4 := by
    have he : (2 : ℝ) < Real.exp (3 / 4) := by
      have hseries := Real.quadratic_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 3 / 4)
      norm_num at hseries
      linarith
    exact (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 2)).mpr he
  linarith

end
end EndpointMonotonicityScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EndpointMonotonicity/Variant69d6034c8329c8125387096d74f0dc0dd920455438254aef346d67797121534a.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88daa8b5b5e7a93bb619ea63c88701e6228cd89a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
