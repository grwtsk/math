# hardyW_eq_neg_chiFE_mul_goodStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:285644fb-099a-613e-f6bb-671ca5a9d1bd",
  "kind": "theorem",
  "lexical_name": "hardyW_eq_neg_chiFE_mul_goodStrip",
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
  "slug": "hardyw-eq-neg-chife-mul-goodstrip--c7da3d596d7d322c4aabd0b7",
  "source": {
    "blob": "c57fe5609c1aaa5a3bc3b3ed696432c9c6ecc7f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7da3d596d7d322c4aabd0b7f94cc2d5fde453997c3dd6444ba843a10b7a9229",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:285644fb-099a-613e-f6bb-671ca5a9d1bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hardyW_eq_neg_chiFE_mul_goodStrip {s : ℂ} (hs : s ∈ GoodStrip) :
    hardyW s = -chiFE s * hardyW (1 - s) := by
  by_cases him : s.im ≠ 0
  · exact hardyW_eq_neg_chiFE_mul him
  push Not at him
  -- both sides are continuous at s; they agree on the punctured vertical line through s
  have hcW : ContinuousAt hardyW s := (hardyW_analyticAt_goodStrip hs).continuousAt
  have hcχ : ContinuousAt chiFE s := (chiFE_analyticAt_goodStrip hs).continuousAt
  have hcW1 : ContinuousAt (fun z => hardyW (1 - z)) s := by
    have h : AnalyticAt ℂ hardyW (1 - s) :=
      hardyW_analyticAt_leftStrip (by simp; linarith [hs.2]) (by simp; linarith [hs.1])
    exact h.continuousAt.comp_of_eq (by fun_prop) rfl
  have hcR : ContinuousAt (fun z => -chiFE z * hardyW (1 - z)) s := (hcχ.neg).mul hcW1
  -- the sequence s + i/n → s with nonzero imaginary parts
  have hseq : Tendsto (fun n : ℕ => s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I) atTop (𝓝 s) := by
    have h1 : Tendsto (fun n : ℕ => (1 / ((n:ℝ) + 1) : ℝ)) atTop (𝓝 0) :=
      tendsto_one_div_add_atTop_nhds_zero_nat
    have h2 : Tendsto (fun n : ℕ => (((1 / ((n:ℝ) + 1) : ℝ)) : ℂ)) atTop (𝓝 ((0:ℝ):ℂ)) :=
      ((Complex.continuous_ofReal.tendsto 0).comp h1)
    have h3 := (h2.mul_const I).const_add s
    simpa using h3
  have heq : ∀ n : ℕ, hardyW (s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I)
      = -chiFE (s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I) * hardyW (1 - (s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I)) := by
    intro n
    apply hardyW_eq_neg_chiFE_mul
    have : (s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I).im = 1 / ((n:ℝ) + 1) := by
      rw [Complex.add_im, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, Complex.I_re, Complex.I_im, him]; ring
    rw [this]; exact one_div_ne_zero (Nat.cast_add_one_ne_zero n)
  have hL := hcW.tendsto.comp hseq
  have hR := hcR.tendsto.comp hseq
  have : (fun n : ℕ => hardyW (s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I))
      = fun n : ℕ => -chiFE (s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I) * hardyW (1 - (s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I)) :=
    funext heq
  rw [show (hardyW ∘ fun n : ℕ => s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I)
      = fun n : ℕ => hardyW (s + ((1 / ((n:ℝ) + 1) : ℝ) : ℂ) * I) from rfl, this] at hL
  exact tendsto_nhds_unique hL hR

/-- zero-freeness transfers from Re s = c to Re s = 1 − c (all points, below any height). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57fe5609c1aaa5a3bc3b3ed696432c9c6ecc7f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
