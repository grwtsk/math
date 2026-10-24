# charFun_stdGaussian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:351b18f6-484b-0b07-284b-356dc25302c3",
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
  "slug": "charfun-stdgaussian--c7b09064a4dbcc082e6735a9",
  "source": {
    "blob": "6d5620e6cc69a57ccaf0142a45cbb8da9bed0cf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7b09064a4dbcc082e6735a98254bc31e8eeacbcf990e72ee629514d39eecad8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:351b18f6-484b-0b07-284b-356dc25302c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Multivariate/Variantab913421bb5cf02838882732884c519c7a17ed1f74af84a0fa218420d02af35f.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5620e6cc69a57ccaf0142a45cbb8da9bed0cf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
