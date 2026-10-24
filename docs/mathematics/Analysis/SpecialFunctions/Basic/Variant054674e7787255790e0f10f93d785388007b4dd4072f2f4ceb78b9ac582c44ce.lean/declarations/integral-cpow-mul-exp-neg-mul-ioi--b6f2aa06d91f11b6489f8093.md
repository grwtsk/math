# integral_cpow_mul_exp_neg_mul_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15beae1e-936e-e24c-9a17-d88ae506360d",
  "kind": "lemma",
  "lexical_name": "integral_cpow_mul_exp_neg_mul_Ioi",
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
  "slug": "integral-cpow-mul-exp-neg-mul-ioi--b6f2aa06d91f11b6489f8093",
  "source": {
    "blob": "1da8d706d4bd3df935567e5f9e8abed748af437f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 377,
    "path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6f2aa06d91f11b6489f8093c1e014fbc14373ba6ca5a34b67411ec818371b31",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15beae1e-936e-e24c-9a17-d88ae506360d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_cpow_mul_exp_neg_mul_Ioi {a : ℂ} {r : ℝ} (ha : 0 < a.re) (hr : 0 < r) :
    ∫ (t : ℝ) in Ioi 0, t ^ (a - 1) * exp (-(r * t)) = (1 / r) ^ a * Gamma a := by
  have aux : (1 / r : ℂ) ^ a = 1 / r * (1 / r) ^ (a - 1) := by
    nth_rewrite 2 [← cpow_one (1 / r : ℂ)]
    rw [← cpow_add _ _ (one_div_ne_zero <| ofReal_ne_zero.mpr hr.ne'), add_sub_cancel]
  calc
    _ = ∫ (t : ℝ) in Ioi 0, (1 / r) ^ (a - 1) * (r * t) ^ (a - 1) * exp (-(r * t)) := by
      refine MeasureTheory.setIntegral_congr_fun measurableSet_Ioi (fun x hx ↦ ?_)
      rw [mem_Ioi] at hx
      rw [mul_cpow_ofReal_nonneg hr.le hx.le, ← mul_assoc, one_div, ← ofReal_inv,
        ← mul_cpow_ofReal_nonneg (inv_pos.mpr hr).le hr.le, ← ofReal_mul r⁻¹,
        inv_mul_cancel₀ hr.ne', ofReal_one, one_cpow, one_mul]
    _ = 1 / r * ∫ (t : ℝ) in Ioi 0, (1 / r) ^ (a - 1) * t ^ (a - 1) * exp (-t) := by
      simp_rw [← ofReal_mul]
      rw [integral_comp_mul_left_Ioi (fun x ↦ _ * x ^ (a - 1) * exp (-x)) _ hr, mul_zero,
        real_smul, ← one_div, ofReal_div, ofReal_one]
    _ = 1 / r * (1 / r : ℂ) ^ (a - 1) * (∫ (t : ℝ) in Ioi 0, t ^ (a - 1) * exp (-t)) := by
      simp_rw [← MeasureTheory.integral_const_mul, mul_assoc]
    _ = (1 / r) ^ a * Gamma a := by
      rw [aux, Gamma_eq_integral ha]
      congr 2 with x
      rw [ofReal_exp, ofReal_neg, mul_comm]

end GammaDef

end Complex

namespace Real

/-- The `Γ` function (of a real variable `s`). -/
@[pp_nodot]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1da8d706d4bd3df935567e5f9e8abed748af437f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
