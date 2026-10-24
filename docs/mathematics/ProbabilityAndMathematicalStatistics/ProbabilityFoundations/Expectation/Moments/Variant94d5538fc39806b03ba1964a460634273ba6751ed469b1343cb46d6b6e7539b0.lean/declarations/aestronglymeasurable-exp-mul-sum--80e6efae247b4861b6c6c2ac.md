# aestronglyMeasurable_exp_mul_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4ab2b01-07ff-e8d0-f295-7a2d01990202",
  "kind": "theorem",
  "lexical_name": "aestronglyMeasurable_exp_mul_sum",
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
  "slug": "aestronglymeasurable-exp-mul-sum--80e6efae247b4861b6c6c2ac",
  "source": {
    "blob": "bfba042214f23c4bd8832590455bad1f95489b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 271,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80e6efae247b4861b6c6c2ac0c12699f9b1206cf63121ff9d1ca8d39908d6271",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4ab2b01-07ff-e8d0-f295-7a2d01990202`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aestronglyMeasurable_exp_mul_sum {X : ι → Ω → ℝ} {s : Finset ι}
    (h_int : ∀ i ∈ s, AEStronglyMeasurable (fun ω => exp (t * X i ω)) μ) :
    AEStronglyMeasurable (fun ω => exp (t * (∑ i in s, X i) ω)) μ := by
  classical
  induction' s using Finset.induction_on with i s hi_notin_s h_rec h_int
  · simp only [Pi.zero_apply, sum_apply, sum_empty, mul_zero, exp_zero]
    exact aestronglyMeasurable_const
  · have : ∀ i : ι, i ∈ s → AEStronglyMeasurable (fun ω : Ω => exp (t * X i ω)) μ := fun i hi =>
      h_int i (mem_insert_of_mem hi)
    specialize h_rec this
    rw [sum_insert hi_notin_s]
    apply aestronglyMeasurable_exp_mul_add (h_int i (mem_insert_self _ _)) h_rec
#align probability_theory.ae_strongly_measurable_exp_mul_sum ProbabilityTheory.aestronglyMeasurable_exp_mul_sum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfba042214f23c4bd8832590455bad1f95489b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
