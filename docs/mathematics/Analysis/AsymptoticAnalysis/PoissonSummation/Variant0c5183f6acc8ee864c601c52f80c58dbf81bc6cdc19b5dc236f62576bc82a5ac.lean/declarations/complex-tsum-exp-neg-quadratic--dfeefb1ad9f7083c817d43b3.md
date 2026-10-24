# Complex.tsum_exp_neg_quadratic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c64b421e-1844-d862-a91a-38a507c3f8fd",
  "kind": "theorem",
  "lexical_name": "Complex.tsum_exp_neg_quadratic",
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
  "slug": "complex-tsum-exp-neg-quadratic--dfeefb1ad9f7083c817d43b3",
  "source": {
    "blob": "b309481910fddf6f1f10264dc24e42a82300858d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 94,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfeefb1ad9f7083c817d43b39402581127d7d7ec62c648a2b0adab23d330419b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c64b421e-1844-d862-a91a-38a507c3f8fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.tsum_exp_neg_quadratic {a : ℂ} (ha : 0 < a.re) (b : ℂ) :
    (∑' n : ℤ, cexp (-π * a * n ^ 2 + 2 * π * b * n)) =
      1 / a ^ (1 / 2 : ℂ) * ∑' n : ℤ, cexp (-π / a * (n + I * b) ^ 2) := by
  let f : ℝ → ℂ := fun x ↦ cexp (-π * a * x ^ 2 + 2 * π * b * x)
  have hFf : 𝓕 f = fun x : ℝ ↦ 1 / a ^ (1 / 2 : ℂ) * cexp (-π / a * (x + I * b) ^ 2) :=
    fourier_gaussian_pi' ha b
  have h1 : 0 < (π * a).re := by
    rw [re_ofReal_mul]
    exact mul_pos pi_pos ha
  have h2 : 0 < (π / a).re := by
    rw [div_eq_mul_inv, re_ofReal_mul, inv_re]
    refine mul_pos pi_pos (div_pos ha <| normSq_pos.mpr ?_)
    contrapose! ha
    rw [ha, zero_re]
  have f_bd : f =O[cocompact ℝ] (fun x => |x| ^ (-2 : ℝ)) := by
    convert! (cexp_neg_quadratic_isLittleO_abs_rpow_cocompact ?_ _ (-2)).isBigO
    rwa [neg_mul, neg_re, neg_lt_zero]
  have Ff_bd : (𝓕 f) =O[cocompact ℝ] (fun x => |x| ^ (-2 : ℝ)) := by
    rw [hFf]
    have : ∀ (x : ℝ), -π / a * (x + I * b) ^ 2 =
        -π / a * x ^ 2 + (-2 * π * I * b) / a * x + π * b ^ 2 / a := by
      intro x; ring_nf; rw [I_sq]; ring
    simp_rw [this]
    conv => enter [2, x]; rw [Complex.exp_add, ← mul_assoc _ _ (Complex.exp _), mul_comm]
    refine ((cexp_neg_quadratic_isLittleO_abs_rpow_cocompact
      ?_ (-2 * π * I * b / a) (-2)).isBigO.const_mul_left _).const_mul_left _
    rwa [neg_div, neg_re, neg_lt_zero]
  convert! Real.tsum_eq_tsum_fourier_of_rpow_decay (by fun_prop) one_lt_two f_bd Ff_bd 0 using 1
  · simp only [f, zero_add, ofReal_intCast]
  · simp [← tsum_mul_left, hFf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variant0c5183f6acc8ee864c601c52f80c58dbf81bc6cdc19b5dc236f62576bc82a5ac.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b309481910fddf6f1f10264dc24e42a82300858d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
