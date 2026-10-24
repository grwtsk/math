# lemma_abadsumas_quad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80f94683-0575-31b5-99d9-f344dca9869f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:534f7da0-bd34-f887-6b99-32f491175eff",
  "kind": "lemma",
  "lexical_name": "lemma_abadsumas_quad",
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
  "slug": "lemma-abadsumas-quad--e37a3d31f3be2dc1f7ffbb36",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3309,
    "line": 3140,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e37a3d31f3be2dc1f7ffbb360e35d3fb92f3007f353bd135d7ec3efe3032a757",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:534f7da0-bd34-f887-6b99-32f491175eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3140–3309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_abadsumas_quad {s : ℂ} {a : ℝ} (ha : 0 < a)
    (haτ : a > |s.im| / (2 * π)) :
    let ϑ : ℝ := s.im / (2 * π * a)
    ∑' n : ℕ, (1 / (n + 1 - ϑ)^2 + 1/(n + 1 + ϑ)^2) =
    if ϑ = 0 then π^2/3
    else π^2 / Real.sin (π * ϑ)^2 - 1/ϑ^2 := by
  intro ϑ
  split_ifs with hϑ
  · simp only [hϑ, sub_zero, add_zero]
    simp_rw [show ∀ n : ℕ, (1 : ℝ) / ((↑n + 1) ^ 2) + 1 / ((↑n + 1) ^ 2) = 2 * (1 / ((↑n + 1) ^ 2)) from fun _ => by ring, tsum_mul_left]
    rw [show ∑' n : ℕ, (1 : ℝ) / ((n : ℝ) + 1) ^ 2 = π ^ 2 / 6 by
      have h := HasSum.tsum_eq hasSum_zeta_two
      rw [Summable.tsum_eq_zero_add hasSum_zeta_two.summable] at h
      simpa using h]
    ring
  · have hϑ_lt : |ϑ| < 1 := by
      simp only [ϑ]
      rw [abs_div, abs_of_pos (by positivity : (0:ℝ) < 2 * π * a),
          div_lt_one (by positivity : (0:ℝ) < 2 * π * a)]
      have h2π : (0:ℝ) < 2 * π := by positivity
      have := haτ
      rw [gt_iff_lt, div_lt_iff₀ h2π] at this
      linarith [abs_nonneg s.im]
    have hmem : (ϑ : ℂ) ∈ Complex.integerComplement := by
      simp only [Complex.integerComplement, Set.mem_compl_iff, Set.mem_range, not_exists]
      intro n heq
      have heqR : (n : ℝ) = ϑ := by
        have h := congr_arg Complex.re heq
        simp only [Complex.ofReal_re] at h
        exact_mod_cast h
      rcases eq_or_ne n 0 with rfl | hn
      · exact hϑ (by exact_mod_cast heqR.symm)
      · have hge : (1 : ℝ) ≤ |(n : ℝ)| := by exact_mod_cast Int.one_le_abs hn
        rw [heqR] at hge; linarith [hϑ_lt]
    have hweier := lemma_abadeulmit2 hmem
    have hZ_summable : Summable (fun n : ℤ => (1 : ℂ) / ((ϑ : ℂ) - ↑n) ^ 2) := by
      have h_nat : Summable (fun n : ℕ => (1 : ℂ) / ((ϑ : ℂ) - ↑n) ^ 2) := by
        have h_nat_shift : Summable (fun n : ℕ => (1 : ℂ) / ((ϑ : ℂ) - ↑(n + 1)) ^ 2) := by
          apply Summable.of_norm_bounded_eventually (g := fun n : ℕ => 1 / (n : ℝ) ^ 2)
          · exact Real.summable_one_div_nat_pow.mpr (by norm_num)
          · rw [Nat.cofinite_eq_atTop]
            filter_upwards [eventually_ge_atTop 1] with n hn
            rw [norm_div, norm_one, norm_pow]
            have h_eq : ‖(ϑ : ℂ) - ↑(n + 1)‖ = (n : ℝ) + 1 - ϑ := by
              rw [show (ϑ : ℂ) - ↑(n + 1) = -↑((n : ℝ) + 1 - ϑ) by push_cast; ring]
              rw [norm_neg, Complex.norm_real, Real.norm_eq_abs]
              apply abs_of_pos
              have : -1 < ϑ ∧ ϑ < 1 := abs_lt.mp hϑ_lt
              have : (1 : ℝ) ≤ n := by exact_mod_cast hn
              linarith
            rw [h_eq]
            apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
            apply pow_le_pow_left₀
            · have : (1 : ℝ) ≤ n := by exact_mod_cast hn
              have : -1 < ϑ ∧ ϑ < 1 := abs_lt.mp hϑ_lt
              linarith
            · have : -1 < ϑ ∧ ϑ < 1 := abs_lt.mp hϑ_lt
              linarith
        exact (summable_nat_add_iff 1).mp h_nat_shift
      have h_neg : Summable (fun n : ℕ => (1 : ℂ) / ((ϑ : ℂ) - ↑(-(n + 1 : ℤ))) ^ 2) := by
        apply Summable.of_norm_bounded_eventually (f := fun n : ℕ => 1 / ((ϑ : ℂ) - ↑(-(n + 1 : ℤ))) ^ 2) (g := fun n : ℕ => 1 / (n : ℝ) ^ 2)
        · exact Real.summable_one_div_nat_pow.mpr (by norm_num)
        · rw [Nat.cofinite_eq_atTop]
          filter_upwards [eventually_ge_atTop 1] with n hn
          rw [norm_div, norm_one, norm_pow]
          have h_eq : ‖(ϑ : ℂ) - ↑(-(n + 1 : ℤ))‖ = (n : ℝ) + 1 + ϑ := by
            rw [show (ϑ : ℂ) - ↑(-(n + 1 : ℤ)) = ↑((n : ℝ) + 1 + ϑ) by push_cast; ring]
            rw [Complex.norm_real, Real.norm_eq_abs]
            apply abs_of_pos
            have : -1 < ϑ ∧ ϑ < 1 := abs_lt.mp hϑ_lt
            have : (1 : ℝ) ≤ n := by exact_mod_cast hn
            linarith
          rw [h_eq]
          apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
          apply pow_le_pow_left₀
          · have : (1 : ℝ) ≤ n := by exact_mod_cast hn
            have : -1 < ϑ ∧ ϑ < 1 := abs_lt.mp hϑ_lt
            linarith
          · have : -1 < ϑ ∧ ϑ < 1 := abs_lt.mp hϑ_lt
            linarith
      exact Summable.of_nat_of_neg_add_one h_nat h_neg
    have hC : (↑π : ℂ) ^ 2 / Complex.sin (↑π * ↑ϑ) ^ 2 =
        1 / (↑ϑ : ℂ) ^ 2 +
        ∑' n : ℕ, (1 / ((↑n + 1 - (↑ϑ : ℂ)) ^ 2) + 1 / ((↑n + 1 + (↑ϑ : ℂ)) ^ 2)) := by
      rw [hweier, tsum_int_eq_zero_add_tsum_pnat hZ_summable]
      simp only [Int.cast_zero, sub_zero]
      rw [add_assoc, add_left_cancel_iff]
      have hpos : ∑' (n : ℕ+), (1 : ℂ) / ((ϑ : ℂ) - ↑(↑↑n : ℤ)) ^ 2 =
          ∑' (n : ℕ), 1 / ((↑n + 1 - (ϑ : ℂ)) ^ 2) := by
        rw [← Equiv.tsum_eq Equiv.pnatEquivNat.symm]
        congr 1; ext n
        simp only [Equiv.pnatEquivNat_symm_apply, Nat.succPNat_coe, Nat.succ_eq_add_one, Nat.cast_add, Nat.cast_one, Int.cast_add,
          Int.cast_natCast, Int.cast_one, one_div, inv_inj]
        ring
      have hneg : ∑' (n : ℕ+), (1 : ℂ) / ((ϑ : ℂ) - ↑(-(↑↑n : ℤ))) ^ 2 =
          ∑' (n : ℕ), 1 / ((↑n + 1 + (ϑ : ℂ)) ^ 2) := by
        rw [← Equiv.tsum_eq Equiv.pnatEquivNat.symm]
        congr 1; ext n
        simp only [Equiv.pnatEquivNat_symm_apply, Nat.succPNat_coe, Nat.succ_eq_add_one, Nat.cast_add, Nat.cast_one, neg_add_rev,
          Int.reduceNeg, Int.cast_add, Int.cast_neg, Int.cast_one, Int.cast_natCast, one_div,
          inv_inj]
        ring
      have hsum1 : Summable (fun n : ℕ => (1 : ℂ) / ((↑n + 1 - (ϑ : ℂ)) ^ 2)) := by
        have h := hZ_summable.comp_injective
          (i := fun n : ℕ => (↑n + 1 : ℤ))
          (fun a b hab => by simpa using hab)
        refine h.congr (fun n => ?_)
        simp only [Function.comp]
        push_cast; ring
      have hsum2 : Summable (fun n : ℕ => (1 : ℂ) / ((↑n + 1 + (ϑ : ℂ)) ^ 2)) := by
        have h := hZ_summable.comp_injective
          (i := fun n : ℕ => -(↑n + 1 : ℤ))
          (fun a b hab => by simpa using hab)
        refine h.congr (fun n => ?_)
        simp only [Function.comp]
        push_cast; ring
      rw [hpos, hneg, ← Summable.tsum_add hsum1 hsum2]
    symm
    apply Complex.ofReal_inj.mp
    calc ((π ^ 2 / Real.sin (π * ϑ) ^ 2 - 1 / ϑ ^ 2 : ℝ) : ℂ)
      _ = (π : ℂ) ^ 2 / Complex.sin (π * ϑ) ^ 2 - 1 / (ϑ : ℂ) ^ 2 := by push_cast; rfl
      _ = 1 / (ϑ : ℂ) ^ 2 + ∑' (n : ℕ), (1 / ((n : ℂ) + 1 - (ϑ : ℂ)) ^ 2 + 1 / ((n : ℂ) + 1 + (ϑ : ℂ)) ^ 2) - 1 / (ϑ : ℂ) ^ 2 := by rw [hC]
      _ = ∑' (n : ℕ), (1 / ((n : ℂ) + 1 - (ϑ : ℂ)) ^ 2 + 1 / ((n : ℂ) + 1 + (ϑ : ℂ)) ^ 2) := by ring
      _ = (↑(∑' n : ℕ, (1 / (n + 1 - ϑ) ^ 2 + 1 / (n + 1 + ϑ) ^ 2 : ℝ)) : ℂ) := by rw [Complex.ofReal_tsum]; push_cast; rfl

@[blueprint
  "lem:abadsumas"
  (title := "Estimate for a Fourier sum")
  (statement := /--
Let $s = \sigma + i \tau$, $\sigma\geq 0$, $\tau \in \mathbb{R}$, with $s\ne 1$.
Let $b>a>0$, $a, b\in \mathbb{Z} + \frac{1}{2}$, with $a>\frac{|\tau|}{2\pi}$.
Define $f:\mathbb{R}\to\mathbb{C}$ by $f(y) = 1_{[a,b]}(y)/y^s$.
Write $\vartheta = \frac{\tau}{2\pi a}$, $\vartheta_- = \frac{\tau}{2\pi b}$. Then
$$\begin{aligned} \sum_n (\widehat{f}(n) + \widehat{f}(-n))
  &= \frac{a^{-s} g(\vartheta)}{2 i} - \frac{b^{-s} g(\vartheta_-)}{2 i}
  + O^*\left(\frac{C_{\sigma,\vartheta}}{a^{\sigma+1}}\right)\end{aligned}$$
with absolute convergence,
where $g(t) = \frac{1}{\sin \pi t} - \frac{1}{\pi t}$ for $t\ne 0$, $g(0)=0$, and
\begin{equation}\label{eq:defcsigth}C_{\sigma,\vartheta}= \begin{cases}
  \frac{\sigma}{2} \left(\frac{1}{\sin^2\pi \vartheta} - \frac{1}{(\pi \vartheta)^2}\right)
  + \frac{|\vartheta|}{2\pi^2} \left(\frac{1}{(1-|\vartheta|)^3} + 2\zeta(3)-1\right)
  & \text{for $\vartheta\ne 0$,}\\
  \sigma/6 & \text{for $\vartheta = 0$.}\end{cases}\end{equation}
-/)
  (proof := /--
By Proposition~\ref{prop:applem}, multiplying by $2$
(since $e(-n t)+e(n t) = 2 \cos 2\pi n t$),
\begin{align}\widehat{f}(n) + \widehat{f}(-n) &= \notag
  \frac{a^{-s}}{2\pi i} \frac{(-1)^{n+1} 2\vartheta}{n^2 - \vartheta^2} -
  \frac{b^{-s}}{2\pi i} \frac{(-1)^{n+1} 2\vartheta_-}{n^2 - \vartheta_-^2}
  \\
  &+ \frac{a^{-\sigma-1}}{2\pi^2} O^*\left(\frac{\sigma}{(n-\vartheta)^2}
    + \frac{\sigma}{(n+\vartheta)^2} + \frac{|\vartheta|}{(n-\vartheta)^3}
    + \frac{|\vartheta|}{(n+\vartheta)^3}\right),\label{eq:abaderrcontrib}\end{align}
where $\vartheta_- = \tau/(2\pi b)$. Note $|\vartheta_-|\leq |\vartheta|<1$.
By the Lemma \ref{lem:abadeulmit1},
\[\sum_n \frac{(-1)^{n+1} 2 z}{n^2 - z^2} = \frac{\pi}{\sin \pi z} - \frac{1}{z}
\] for $z\ne 0$, while $\sum_n \frac{(-1)^{n+1} 2 z}{n^2 - z^2} = \sum_n 0 = 0$ for $z=0$.
Moreover, by Lemmas \ref{lem:abadeulmit2} and \ref{lem:abadimpseri}, for $\vartheta\ne 0$,
\[\sum_n \left(\frac{\sigma}{(n-\vartheta)^2} + \frac{\sigma}{(n+\vartheta)^2}\right)\leq
\sigma\cdot \left(\frac{\pi^2}{\sin^2 \pi \vartheta} - \frac{1}{\vartheta^2}\right),\]
\[\sum_n \left(\frac{|\vartheta|}{(n-\vartheta)^3} + \frac{|\vartheta|}{(n+\vartheta)^3}\right)
\leq |\vartheta|\cdot \left(\frac{1}{(1-|\vartheta|)^3} + 2\zeta(3)-1\right).
\]
If $\vartheta=0$, then
$\sum_n \left(\frac{\sigma}{(n-\vartheta)^2} + \frac{\sigma}{(n+\vartheta)^2}\right)
= 2 \sigma \sum_{n=1}^\infty \frac{1}{n^2} = \sigma \frac{\pi^2}{3}$.
-/)
  (latexEnv := "lemma")
  (discussion := 572)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L3140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
