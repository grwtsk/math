# Complex.tsum_exp_neg_mul_int_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8386315-7410-6c24-1b81-b4df2868f849",
  "kind": "theorem",
  "lexical_name": "Complex.tsum_exp_neg_mul_int_sq",
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
  "slug": "complex-tsum-exp-neg-mul-int-sq--6478e39344311b08aed0d9e0",
  "source": {
    "blob": "031cd32f6e7660a61b7c6ac3977e3bcf76414ab2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 630,
    "line": 602,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6478e39344311b08aed0d9e0b88f74fd6d84b2833a1c06a9b04d19695c0d5592",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8386315-7410-6c24-1b81-b4df2868f849`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–630.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.tsum_exp_neg_mul_int_sq {a : ℂ} (ha : 0 < a.re) :
    (∑' n : ℤ, cexp (-π * a * (n : ℂ) ^ 2)) =
      (1 : ℂ) / a ^ (1 / 2 : ℂ) * ∑' n : ℤ, cexp (-π / a * (n : ℂ) ^ 2) := by
  let f := fun x : ℝ => cexp (-π * a * (x : ℂ) ^ 2)
  have h1 : 0 < (↑π * a).re := by
    rw [ofReal_mul_re]
    exact mul_pos pi_pos ha
  have h2 : 0 < (↑π / a).re := by
    rw [div_eq_mul_inv, ofReal_mul_re, inv_re]
    refine' mul_pos pi_pos (div_pos ha <| normSq_pos.mpr _)
    contrapose! ha
    rw [ha, zero_re]
  have f_bd : f =O[cocompact ℝ] fun x => |x| ^ (-2 : ℝ) := by
    convert (isLittleO_exp_neg_mul_sq_cocompact h1 (-2)).isBigO using 2
    dsimp only
    congr 1
    ring
  have Ff_bd : 𝓕 f =O[cocompact ℝ] fun x => |x| ^ (-2 : ℝ) := by
    rw [fourier_transform_gaussian_pi ha]
    convert (isLittleO_exp_neg_mul_sq_cocompact h2 (-2)).isBigO.const_mul_left
      ((1 : ℂ) / a ^ (1 / 2 : ℂ)) using 2
    congr 1
    ring_nf
  simpa only [fourier_transform_gaussian_pi ha, tsum_mul_left, Function.comp] using
    Real.tsum_eq_tsum_fourierIntegral_of_rpow_decay
      (Complex.continuous_exp.comp (continuous_const.mul (continuous_ofReal.pow 2)) : Continuous f)
      one_lt_two f_bd Ff_bd
#align complex.tsum_exp_neg_mul_int_sq Complex.tsum_exp_neg_mul_int_sq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `031cd32f6e7660a61b7c6ac3977e3bcf76414ab2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
