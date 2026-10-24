# iIndepFun.integrable_exp_mul_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca59de28-fbfc-e9e9-e71b-84b38d548b38",
  "kind": "theorem",
  "lexical_name": "iIndepFun.integrable_exp_mul_sum",
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
  "slug": "iindepfun-integrable-exp-mul-sum--74ac28ef0569f7af78dafdaf",
  "source": {
    "blob": "9a701e09e3611df6e6c139606cc62b2397d2c20a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 354,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74ac28ef0569f7af78dafdafeadda31fcae3a67047d7ef72033c6c6d1d10437f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca59de28-fbfc-e9e9-e71b-84b38d548b38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.integrable_exp_mul_sum [IsFiniteMeasure μ] {X : ι → Ω → ℝ}
    (h_indep : iIndepFun X μ) (h_meas : ∀ i, Measurable (X i))
    {s : Finset ι} (h_int : ∀ i ∈ s, Integrable (fun ω => exp (t * X i ω)) μ) :
    Integrable (fun ω => exp (t * (∑ i ∈ s, X i) ω)) μ := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    simp only [Finset.sum_apply, sum_empty, mul_zero, exp_zero]
    exact integrable_const _
  | insert i s hi_notin_s h_rec =>
    have : ∀ i : ι, i ∈ s → Integrable (fun ω : Ω => exp (t * X i ω)) μ := fun i hi =>
      h_int i (mem_insert_of_mem hi)
    specialize h_rec this
    rw [sum_insert hi_notin_s]
    refine IndepFun.integrable_exp_mul_add ?_ (h_int i (mem_insert_self _ _)) h_rec
    exact (h_indep.indepFun_finsetSum_of_notMem h_meas hi_notin_s).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant0322b5a0174c60718e3f7b758eeec581f0e6c08b2fbc683734d339a9f1bc5ec5.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a701e09e3611df6e6c139606cc62b2397d2c20a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
