# integral_mul_cexp_neg_mul_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afde7817-491c-358c-44d2-95242c542774",
  "kind": "theorem",
  "lexical_name": "integral_mul_cexp_neg_mul_sq",
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
  "slug": "integral-mul-cexp-neg-mul-sq--6a604a3af44de4e3cb3dc1e3",
  "source": {
    "blob": "a94d72c9740fed99264b4035e198daae3d55bad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 177,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a604a3af44de4e3cb3dc1e31c19ec4befcf4f3d56a2e42b812ac25baf5d470a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afde7817-491c-358c-44d2-95242c542774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_mul_cexp_neg_mul_sq {b : ℂ} (hb : 0 < b.re) :
    ∫ r : ℝ in Ioi 0, (r : ℂ) * cexp (-b * (r : ℂ) ^ 2) = (2 * b)⁻¹ := by
  have hb' : b ≠ 0 := by contrapose! hb; rw [hb, zero_re]
  have A : ∀ x : ℂ, HasDerivAt (fun x => -(2 * b)⁻¹ * cexp (-b * x ^ 2))
    (x * cexp (-b * x ^ 2)) x := by
    intro x
    convert ((hasDerivAt_pow 2 x).const_mul (-b)).cexp.const_mul (-(2 * b)⁻¹) using 1
    field_simp [hb']
    ring
  have B : Tendsto (fun y : ℝ ↦ -(2 * b)⁻¹ * cexp (-b * (y : ℂ) ^ 2))
    atTop (𝓝 (-(2 * b)⁻¹ * 0)) := by
    refine Tendsto.const_mul _ (tendsto_zero_iff_norm_tendsto_zero.mpr ?_)
    simp_rw [norm_cexp_neg_mul_sq b]
    exact tendsto_exp_atBot.comp
      ((tendsto_pow_atTop two_ne_zero).const_mul_atTop_of_neg (neg_lt_zero.2 hb))
  convert integral_Ioi_of_hasDerivAt_of_tendsto' (fun x _ => (A ↑x).comp_ofReal)
    (integrable_mul_cexp_neg_mul_sq hb).integrableOn B using 1
  simp only [mul_zero, ofReal_zero, zero_pow, Ne, Nat.one_ne_zero,
    not_false_iff, Complex.exp_zero, mul_one, sub_neg_eq_add, zero_add, reduceCtorEq]

/-- The *square* of the Gaussian integral `∫ x:ℝ, exp (-b * x^2)` is equal to `π / b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a94d72c9740fed99264b4035e198daae3d55bad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
