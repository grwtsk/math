# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ZetaConj.Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7cf0dc9a7c8bd92c9bd8a7a8920b342d621c0bb8` · SHA-256 `5a3ace9e975f8cabb11912b332d967259dd1d799067c96699e0ecf6457847407`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivConjConjPrime.Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DerivConjConjPrime.Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18","mathematical_subject":"Analysis.Calculus","original_sha256":"d759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/ZetaConj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect
import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.Analysis.Normed.Module.Connected
import Mathlib.NumberTheory.Harmonic.ZetaAsymp


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivConjConjPrime.Variantd759ce201afb70df3a8a70ee41e265e02264b424ad5ee7fe35899a6c95829a18

open scoped Complex ComplexConjugate


blueprint_comment /--
Now in Mathlib:
-/
@[blueprint
  (title := "deriv-conj-conj")
  (statement := /--
    Let $f : \mathbb{C} \to \mathbb{C}$ be a function at $p \in \mathbb{C}$ with derivative $a$.
    Then the derivative of the function $g(z) = \overline{f(\overline{z})}$ at $\overline{p}$ is
    $\overline{a}$.
  -/)
  (proof := /--
    We proceed by case analysis on whether $f$ is differentiable at $p$. If $f$ is differentiable
    at $p$, then we can apply the previous theorem. If $f$ is not differentiable at $p$, then
    neither is $g$, and both derivatives have the default value of zero.
  -/)]
theorem deriv_conj_conj' (f : ℂ → ℂ) (p : ℂ) :
    deriv (fun z ↦ conj (f (conj z))) (conj p) = conj (deriv f p) := by
  trans deriv (conj ∘ f ∘ conj) (conj p)
  · rfl
  simp

@[blueprint
  (title := "conj-riemannZeta-conj-aux1")
  (statement := /--
    Conjugation symmetry of the Riemann zeta function in the half-plane of convergence. Let
    $s \in \mathbb{C}$ with $\Re(s) > 1$. Then $\overline{\zeta(\overline{s})} = \zeta(s)$.
  -/)
  (proof := /--
    We expand the definition of the Riemann zeta function as a series and find that the two sides
    are equal term by term.
  -/)]
lemma conj_riemannZeta_conj_aux1 (s : ℂ) (hs : 1 < s.re) :
    conj (riemannZeta (conj s)) = riemannZeta s := by
  rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs]
  rw [zeta_eq_tsum_one_div_nat_add_one_cpow (by simpa)]
  rw [Complex.conj_tsum]
  congr
  ext n
  have h1 : n + 1 ≠ 0 := by linarith
  have h2 : (n : ℂ) + 1 ≠ 0 := by exact_mod_cast h1
  rw [Complex.cpow_def_of_ne_zero h2, Complex.cpow_def_of_ne_zero h2, RCLike.conj_div, map_one,
    ← Complex.exp_conj, map_mul, Complex.conj_conj]
  congr 2
  rw [show (↑n + 1 : ℂ) = ↑((n + 1 : ℕ) : ℕ) from by push_cast; ring,
    ← Complex.natCast_log, Complex.conj_ofReal]

blueprint_comment /--
% TODO: Submit this and the following corollaries to Mathlib.
-/
@[blueprint
  (title := "conj-riemannZeta-conj")
  (statement := /--
    Conjugation symmetry of the Riemann zeta function. Let $s \in \mathbb{C}$. Then
    $$\overline{\zeta(\overline{s})} = \zeta(s).$$
  -/)
  (proof := /--
    By the previous lemma, the two sides are equal on the half-plane
    $\{s \in \mathbb{C} : \Re(s) > 1\}$. Then, by analytic continuation, they are equal on the
    whole complex plane.
  -/)]
theorem conj_riemannZeta_conj (s : ℂ) : conj (riemannZeta (conj s)) = riemannZeta s := by
  by_cases hs1 : s = 1
  · subst hs1
    rw [map_one, Complex.conj_eq_iff_real, riemannZeta_one]
    use (Real.eulerMascheroniConstant - Real.log (4 * Real.pi)) / 2
    rw [show (4 * ↑Real.pi : ℂ) = ↑(4 * Real.pi) from by push_cast; ring,
      ← Complex.ofReal_log (by positivity : (0 : ℝ) ≤ 4 * Real.pi)]
    push_cast
    ring
  · let U : Set ℂ := {1}ᶜ
    let g := fun s ↦ conj (riemannZeta (conj s))
    suffices Set.EqOn g riemannZeta U by
      apply this
      rwa [Set.mem_compl_singleton_iff]
    apply AnalyticOnNhd.eqOn_of_preconnected_of_eventuallyEq (𝕜 := ℂ) (z₀ := 2)
    · simp [U]
    · rw [Filter.eventuallyEq_iff_exists_mem]
      set V := Complex.re ⁻¹' (Set.Ioi 1)
      use V
      constructor
      · have Vopen : IsOpen V := Complex.continuous_re.isOpen_preimage _ isOpen_Ioi
        exact Vopen.mem_nhds (by simp [V])
      · intro s hs
        exact conj_riemannZeta_conj_aux1 s hs
    · refine DifferentiableOn.analyticOnNhd ?_ isOpen_compl_singleton
      intro s₁ hs₁
      have hs₁' : conj s₁ ≠ 1 :=
        (map_ne_one_iff (starRingEnd ℂ) (RingHom.injective (starRingEnd ℂ))).mpr hs₁
      convert (HasDerivAt.conj_conj
        (differentiableAt_riemannZeta hs₁').hasDerivAt).differentiableAt.differentiableWithinAt
        (s := U)
      rw [Complex.conj_conj]
    · refine DifferentiableOn.analyticOnNhd ?_ isOpen_compl_singleton
      intro s₁ hs₁
      exact (differentiableAt_riemannZeta hs₁).differentiableWithinAt
    · exact (isConnected_compl_singleton_of_one_lt_rank (by simp) 1).isPreconnected

@[blueprint
  (title := "riemannZeta-conj")
  (statement := /--
    Conjugation symmetry of the Riemann zeta function. Let $s \in \mathbb{C}$. Then
    $$\zeta(\overline{s}) = \overline{\zeta(s)}.$$
  -/)
  (proof := /--
    This follows as an immediate corollary of Theorem \ref{conj_riemannZeta_conj}.
  -/)]
theorem riemannZeta_conj (s : ℂ) : riemannZeta (conj s) = conj (riemannZeta s) := by
  rw [← conj_riemannZeta_conj, Complex.conj_conj]

@[blueprint
  (title := "deriv-riemannZeta-conj")
  (statement := /--
    Conjugation symmetry of the derivative of the Riemann zeta function. Let $s \in \mathbb{C}$.
    Then $$\zeta'(\overline{s}) = \overline{\zeta'(s)}.$$
  -/)
  (proof := /--
    We apply the derivative conjugation symmetry to the Riemann zeta function and use the
    conjugation symmetry of the Riemann zeta function itself.
  -/)]
theorem deriv_riemannZeta_conj (s : ℂ) :
    deriv riemannZeta (conj s) = conj (deriv riemannZeta s) := by
  simp [← deriv_conj_conj', conj_riemannZeta_conj]

theorem logDerivZeta_conj (s : ℂ) :
    (deriv riemannZeta / riemannZeta) (conj s) = conj ((deriv riemannZeta / riemannZeta) s) := by
  simp [deriv_riemannZeta_conj, riemannZeta_conj]

theorem logDerivZeta_conj' (s : ℂ) :
    (logDeriv riemannZeta) (conj s) = conj (logDeriv riemannZeta s) := logDerivZeta_conj s

blueprint_comment /--
% TODO: Submit this to Mathlib.
-/
set_option backward.isDefEq.respectTransparency false in
@[blueprint
  (title := "intervalIntegral-conj")
  (statement := /--
    The conjugation symmetry of the interval integral. Let $f : \mathbb{R} \to \mathbb{C}$ be a
    measurable function, and let $a, b \in \mathbb{R}$. Then
    $$\int_{a}^{b} \overline{f(x)} \, dx = \overline{\int_{a}^{b} f(x) \, dx}.$$
  -/)
  (proof := /--
    We unfold the interval integral into an integral over a uIoc and use the conjugation property
    of integrals.
  -/)]
theorem intervalIntegral_conj {f : ℝ → ℂ} {a b : ℝ} :
    ∫ (x : ℝ) in a..b, conj (f x) = conj (∫ (x : ℝ) in a..b, f x) := by
  rw [intervalIntegral.intervalIntegral_eq_integral_uIoc, integral_conj, ← RCLike.conj_smul,
    ← intervalIntegral.intervalIntegral_eq_integral_uIoc]
```
