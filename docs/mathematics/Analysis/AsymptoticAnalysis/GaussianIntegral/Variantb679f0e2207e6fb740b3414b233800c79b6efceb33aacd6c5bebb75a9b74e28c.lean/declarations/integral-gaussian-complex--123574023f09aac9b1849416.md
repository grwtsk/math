# integral_gaussian_complex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3038cda35f1c8daaaac127fae8010a711397d216",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d1c7fca-1e67-0016-eada-630d70b2c2b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29c959c6-260a-aff7-5d8a-092c2c45c298",
  "kind": "theorem",
  "lexical_name": "integral_gaussian_complex",
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
  "slug": "integral-gaussian-complex--123574023f09aac9b1849416",
  "source": {
    "blob": "3038cda35f1c8daaaac127fae8010a711397d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 253,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:123574023f09aac9b1849416cd212e1fd116427e08159c6b0131e8a09687d01b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29c959c6-260a-aff7-5d8a-092c2c45c298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_gaussian_complex {b : ℂ} (hb : 0 < re b) :
    ∫ x : ℝ, cexp (-b * (x : ℂ) ^ 2) = (π / b) ^ (1 / 2 : ℂ) := by
  have nv : ∀ {b : ℂ}, 0 < re b → b ≠ 0 := by intro b hb; contrapose! hb; rw [hb]; simp
  apply
    (convex_halfSpace_re_gt 0).isPreconnected.eq_of_sq_eq ?_ ?_ (fun c hc => ?_) (fun {c} hc => ?_)
      (by simp : 0 < re (1 : ℂ)) ?_ hb
  · -- integral is continuous
    exact continuousOn_of_forall_continuousAt continuousAt_gaussian_integral
  · -- `(π / b) ^ (1 / 2 : ℂ)` is continuous
    refine
      continuousOn_of_forall_continuousAt fun b hb =>
        (continuousAt_cpow_const (Or.inl ?_)).comp (continuousAt_const.div continuousAt_id (nv hb))
    rw [div_re, ofReal_im, ofReal_re, zero_mul, zero_div, add_zero]
    exact div_pos (mul_pos pi_pos hb) (normSq_pos.mpr (nv hb))
  · -- equality at 1
    have : ∀ x : ℝ, cexp (-(1 : ℂ) * (x : ℂ) ^ 2) = exp (-(1 : ℝ) * x ^ 2) := by
      intro x
      simp only [ofReal_exp, neg_mul, one_mul, ofReal_neg, ofReal_pow]
    simp_rw [this, ← coe_algebraMap, RCLike.algebraMap_eq_ofReal, integral_ofReal,
      ← RCLike.algebraMap_eq_ofReal, coe_algebraMap]
    conv_rhs =>
      congr
      · rw [← ofReal_one, ← ofReal_div]
      · rw [← ofReal_one, ← ofReal_ofNat, ← ofReal_div]
    rw [← ofReal_cpow, ofReal_inj]
    · convert integral_gaussian (1 : ℝ) using 1
      rw [sqrt_eq_rpow]
    · rw [div_one]; exact pi_pos.le
  · -- squares of both sides agree
    dsimp only [Pi.pow_apply]
    rw [integral_gaussian_sq_complex hc, sq]
    conv_lhs => rw [← cpow_one (↑π / c)]
    rw [← cpow_add _ _ (div_ne_zero (ofReal_ne_zero.mpr pi_ne_zero) (nv hc))]
    norm_num
  · -- RHS doesn't vanish
    rw [Ne, cpow_eq_zero_iff, not_and_or]
    exact Or.inl (div_ne_zero (ofReal_ne_zero.mpr pi_ne_zero) (nv hc))

-- The Gaussian integral on the half-line, `∫ x in Ioi 0, exp (-b * x^2)`, for complex `b`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variantb679f0e2207e6fb740b3414b233800c79b6efceb33aacd6c5bebb75a9b74e28c.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3038cda35f1c8daaaac127fae8010a711397d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
