# charFun_stdGaussian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6953dbcb994d3358f2f7238bede0f93582fd4681",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1fc5dbb-fdee-a289-218e-7d2020356fd8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd73b52c-9e9d-9e8c-3559-049f72b1b61e",
  "kind": "lemma",
  "lexical_name": "charFun_stdGaussian",
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
  "slug": "charfun-stdgaussian--aba05d40e36c033a38655bdf",
  "source": {
    "blob": "6953dbcb994d3358f2f7238bede0f93582fd4681",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aba05d40e36c033a38655bdf348d81f036ebba704f08647855f353e2bd416051",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd73b52c-9e9d-9e8c-3559-049f72b1b61e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charFun_stdGaussian (t : E) :
    charFun (stdGaussian E) t = exp (- ‖t‖ ^ 2 / 2) := by
  rw [charFun_apply, stdGaussian, integral_map (Measurable.aemeasurable (by fun_prop))
    (Measurable.aestronglyMeasurable (by fun_prop))]
  simp_rw [sum_inner, ofReal_sum, Finset.sum_mul, exp_sum,
    integral_fintype_prod_eq_prod (f := fun i x ↦ exp (⟪x • stdOrthonormalBasis ℝ E i, t⟫ * I)),
    real_inner_smul_left, mul_comm _ (⟪_, _⟫), ofReal_mul, ← charFun_apply_real,
    charFun_gaussianReal]
  simp only [ofReal_zero, mul_zero, zero_mul, NNReal.coe_one, ofReal_one, one_mul,
    zero_sub]
  simp_rw [← exp_sum, Finset.sum_neg_distrib, ← Finset.sum_div, ← ofReal_pow,
    ← ofReal_sum, (stdOrthonormalBasis ℝ E).sum_sq_inner_right, neg_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variant5133b50bde50f1988daf9c113d6692c86a13a2a2aba3427a874932ec17f61282.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6953dbcb994d3358f2f7238bede0f93582fd4681` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
