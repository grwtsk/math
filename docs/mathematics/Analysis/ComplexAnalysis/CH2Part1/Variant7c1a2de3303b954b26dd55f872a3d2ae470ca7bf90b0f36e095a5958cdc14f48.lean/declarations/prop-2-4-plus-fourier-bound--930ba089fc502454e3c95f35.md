# prop_2_4_plus_fourier_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 854,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13b986fb-6231-6623-e8d7-ae59bb91f07d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63236d71-e5a6-3e7f-e788-687a95ad858f",
  "kind": "lemma",
  "lexical_name": "prop_2_4_plus_fourier_bound",
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
  "slug": "prop-2-4-plus-fourier-bound--930ba089fc502454e3c95f35",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 910,
    "line": 854,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:930ba089fc502454e3c95f35f8244f7a63e84168fe4286ad1e192c73874fc546",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63236d71-e5a6-3e7f-e788-687a95ad858f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 854–910.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma prop_2_4_plus_fourier_bound {T β σ : ℝ} (hT : 0 < T) (hβ : 1 < β) (hσ : σ ≠ 1)
  {φ_plus : ℝ → ℂ} (hφ_int : Integrable φ_plus)
  (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ_plus y‖ ≤ C / |y| ^ β)
  (hI_le_Fourier : ∀ y : ℝ, I' ((2 * π * (σ - 1)) / T) y ≤ (𝓕 φ_plus y).re)
  (x : ℝ) (hx : 1 ≤ x) :
  (if σ < 1 then 1 / (1 - σ) else 0) ≤
    (((2 * π * (x ^ (1 - σ) : ℝ) / T) : ℂ) * (∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_plus y)).re := by
  have h_int_Fphi : Integrable (𝓕 φ_plus) := fourier_integrable_of_rpow_decay hβ hφ_int hφ_Fourier
  let lambda := (2 * π * (σ - 1)) / T
  let u0 := -T * log x / (2 * π)
  have hu0 : u0 ≤ 0 := by
    dsimp [u0]; rw [neg_mul, neg_div]; apply neg_nonpos.mpr
    apply div_nonneg (mul_nonneg hT.le (log_nonneg hx)) (by positivity)
  have h_re_mul : (((2 * π * (x ^ (1 - σ) : ℝ) / T) : ℂ) * (∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_plus y)).re =
      (2 * π * (x ^ (1 - σ) : ℝ) / T) * (∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_plus y).re := by
    simp
  have h_re_int : (∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_plus y).re =
      ∫ y in Set.Iic (-T * log x / (2 * π)), (𝓕 φ_plus y).re := (integral_re h_int_Fphi.integrableOn).symm
  rw [h_re_mul, h_re_int]
  have h_int_le : ∫ y in Set.Iic (-T * log x / (2 * π)), I' ((2 * π * (σ - 1)) / T) y ≤
      ∫ y in Set.Iic (-T * log x / (2 * π)), (𝓕 φ_plus y).re := by
    apply MeasureTheory.setIntegral_mono_on₀
    · have hlambda_ne : lambda ≠ 0 := by
        dsimp [lambda]; refine div_ne_zero ?_ hT.ne'; exact mul_ne_zero (by positivity) (sub_ne_zero.mpr hσ)
      exact integrableOn_I'_Iic hlambda_ne hu0
    · exact h_int_Fphi.re.integrableOn
    · exact measurableSet_Iic.nullMeasurableSet
    · exact fun y _ ↦ hI_le_Fourier y
  have h_I_int : (if σ < 1 then 1 / (1 - σ) else 0) ≤
      (2 * π * (x ^ (1 - σ) : ℝ) / T) * ∫ y in Set.Iic (-T * log x / (2 * π)), I' ((2 * π * (σ - 1)) / T) y :=
    (integral_Iic_I'_eq hT hσ x hx).ge
  calc (if σ < 1 then 1 / (1 - σ) else 0)
    _ ≤ (2 * π * (x ^ (1 - σ) : ℝ) / T) * ∫ y in Set.Iic (-T * log x / (2 * π)), I' ((2 * π * (σ - 1)) / T) y := h_I_int
    _ ≤ (2 * π * (x ^ (1 - σ) : ℝ) / T) * ∫ y in Set.Iic (-T * log x / (2 * π)), (𝓕 φ_plus y).re := by
      apply mul_le_mul_of_nonneg_left h_int_le (by positivity)

@[blueprint
  "ch2-prop-2-4-plus"
  (title := "CH2 Proposition 2.4, upper bound")
  (statement := /--
  Let $a_n$ be a non-negative sequence with $\sum_{n>1} \frac{|a_n|}{n \log^\beta n} < \infty$ for some $\beta > 1$.  Assume that $\sum_n a_n n^{-s} - \frac{1}{s-1}$ extends continuously to a function $G$ defined on $1 + i[-T,T]$.  Let $\varphi_+$ be absolutely integrable, supported on $[-1,1]$, and has Fourier decay $\hat \varphi_+(y) = O(1/|y|^\beta)$.  Let $\sigma \neq 1$ and write $\lambda = 2\pi(\sigma-1)/T$.  Assume $I_\lambda(y) \leq \hat \varphi_+(y)$ for all $y$. Then for any $x\geq 1$,
  $$ S_\sigma(x) \leq \frac{2\pi x^{1-\sigma}}{T} \varphi_+(0) + \frac{x^{-\sigma}}{T} \int_{-T}^T \varphi_+(t/T) G(1+it) x^{1+it}\ dt - \frac{1_{(-\infty,1)}(\sigma)}{1-\sigma}.$$
  -/)
  (proof := /-- By the nonnegativity of $a_n$ we have
  $$ S_\sigma(x) \leq x^{-\sigma} \sum_n a_n \frac{x}{n} \hat \varphi_+(\frac{T}{2\pi} \log \frac{n}{x} ).$$
  By Proposition \ref{ch2-prop-2-3} we can express the right-hand side as
  $$ \frac{1}{2\pi i T} \int_{1-iT}^{1+iT} \varphi_+(\frac{s-1}{iT}) G(s) x^{s}\ ds + (\varphi_+(0) - \int_{-\infty}^{-T \log x/2\pi} \hat \varphi_+(y)\ dy) \frac{x}{T}.$$
  If $\lambda > 0$, then $I_\lambda(y)=0$ for negative $y$, so
  $$ -\int_{-\infty}^{-T \log x/2π} \hat \varphi_+(y)\ dy \leq 0.$$
  If $\lambda < 0$, then $I_\lambda(y)=e^{-\lambda y}$ for $y$ negative, so
$$ -\int_{-\infty}^{-T \log x/2π} I_\lambda(y)\ dy \leq e^{\lambda T \log x/2π}/(-\lambda) = x^{\sigma-1}/(-\lambda).$$
hence
$$ -\int_{-\infty}^{-T \log x/2π} \hat \varphi_+(y)\ dy \leq - x^{\sigma-1}/(-\lambda).$$
Since $x^{-\sigma} * (2\pi x / T) * x^{\sigma-1}/(-\lambda) = 1/(1-\sigma)$, the result follows.
  -/)
  (latexEnv := "proposition")
  (discussion := 882)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L854).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
