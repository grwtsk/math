# iIndepFun.mgf_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bedd94d8fdc8540ee28df839cef4504a5a5ecede",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/ccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7986134e-112e-8850-eff2-b657728763f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19571452-c116-73f3-c414-1a93317760fa",
  "kind": "theorem",
  "lexical_name": "iIndepFun.mgf_sum",
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
  "slug": "iindepfun-mgf-sum--6c542f7efe4a25b990c8e21a",
  "source": {
    "blob": "bedd94d8fdc8540ee28df839cef4504a5a5ecede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 302,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c542f7efe4a25b990c8e21a0931c6afc38087af9d219bff7da7549f9a257655",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19571452-c116-73f3-c414-1a93317760fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepFun.mgf_sum [IsProbabilityMeasure μ] {X : ι → Ω → ℝ}
    (h_indep : iIndepFun (fun i => inferInstance) X μ) (h_meas : ∀ i, Measurable (X i))
    (s : Finset ι) : mgf (∑ i in s, X i) μ t = ∏ i in s, mgf (X i) μ t := by
  classical
  induction' s using Finset.induction_on with i s hi_notin_s h_rec h_int
  · simp only [sum_empty, mgf_zero_fun, measure_univ, ENNReal.one_toReal, prod_empty]
  · have h_int' : ∀ i : ι, AEStronglyMeasurable (fun ω : Ω => exp (t * X i ω)) μ := fun i =>
      ((h_meas i).const_mul t).exp.aestronglyMeasurable
    rw [sum_insert hi_notin_s,
      IndepFun.mgf_add (h_indep.indepFun_finset_sum_of_not_mem h_meas hi_notin_s).symm (h_int' i)
        (aestronglyMeasurable_exp_mul_sum fun i _ => h_int' i),
      h_rec, prod_insert hi_notin_s]
set_option linter.uppercaseLean3 false in
#align probability_theory.Indep_fun.mgf_sum ProbabilityTheory.iIndepFun.mgf_sum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bedd94d8fdc8540ee28df839cef4504a5a5ecede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
