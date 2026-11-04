/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.NumberTheory.FiniteFieldGaussCertificates
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalLinePowerSums

/-!
# Universal vertical families in the finite-field variable t = q^(-s)

The norm of q^(-s) depends only on Re(s). Therefore a single constructed
polynomial works at ALL imaginary heights on each half-plane
Re(s)>=sigma>1/2. No height cutoff, boundary mesh, or estimate of a classical
Dirichlet series is needed for this finite spectral factor.

The exact identity is sqrt(q)*|q^(-s)|=exp((1/2-Re(s))*log(q)). Archimedean
selection of a level above this contraction gives a universal family of
residuals <=1/4. The polynomial itself, and its truncation index at each level,
are those already constructed in GeometricProductCertificates.

Purity implies that every zero of P(q^(-s)) has Re(s)=1/2; the Gauss-sum
specialization proves its purity from actual finite-field identities. The
statement is about the finite numerator, not a totalized rational zeta value
at a pole. No transfer to classical zeta follows without the separately
formalized source-comparison budget.

Reuse: CriticalLinePowerSums' complex-power API and the existing residual
families. Context: Deligne (1974), (1.1.3), (1.5.4), (1.7). No new cohomological
source theorem is claimed. AI-assisted formalization; novelty not assessed.
Compilation, fresh kernel checking, transitive axiom audit, independent review:
NOT_RUN. Original dependency pins and root imports remain unchanged.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilCertificates

open GRWTSK.Analysis.GeometricProduct
open GRWTSK.Analysis.Division
open GRWTSK.NumberTheory.FiniteFieldCertificates

def fieldParameter (q : ℝ) (s : ℂ) : ℂ := (q : ℂ) ^ (-s)

/-- The exact normalization retains the finite-field radius and real-part shift. -/
theorem parameter_weight_norm {q : ℝ} (hq : 0 < q) (s : ℂ) :
    Real.sqrt q * ‖fieldParameter q s‖ = Real.exp (((1 / 2 : ℝ) - s.re) * Real.log q) := by
  unfold fieldParameter
  rw [Complex.norm_cpow_eq_rpow_re_of_pos hq]
  simp only [Complex.neg_re, Real.sqrt_eq_rpow, Real.rpow_def_of_pos hq]
  rw [← Real.exp_add]
  congr 1
  ring

/-- Select ONE level for an entire right half-plane, independently of the height. -/
theorem right_halfplane_level {q σ : ℝ} (hq : 1 < q) (hσ : (1 / 2 : ℝ) < σ) :
    ∃ n : ℕ, ∀ s : ℂ, σ ≤ s.re →
      Real.sqrt q * ‖fieldParameter q s‖ ≤ ratio n := by
  have hlog : 0 < Real.log q := Real.log_pos hq
  have hexp : Real.exp (((1 / 2 : ℝ) - σ) * Real.log q) < 1 :=
    Real.exp_lt_one_iff.mpr (mul_neg_of_neg_of_pos (sub_neg.mpr hσ) hlog)
  obtain ⟨n, hn⟩ := exists_ratio_above hexp
  refine ⟨n, ?_⟩
  intro s hs
  rw [parameter_weight_norm (lt_trans (by norm_num) hq)]
  apply le_trans _ hn.le
  apply Real.exp_le_exp.mpr
  exact mul_le_mul_of_nonneg_right (by linarith) hlog.le

/-- Universality includes every imaginary height and every finite spectral list. -/
theorem all_height_residual_family (as : List ℂ) {q σ : ℝ}
    (hq : 1 < q) (hσ : (1 / 2 : ℝ) < σ)
    (spectral : ∀ a ∈ as, ‖a‖ ≤ Real.sqrt q) :
    ∃ n : ℕ, ∀ s : ℂ, σ ≤ s.re →
      ‖residual (factorProduct as (fieldParameter q s))
        (familyApproximation as n (fieldParameter q s)) 1‖ ≤ 1 / 4 := by
  obtain ⟨n, hn⟩ := right_halfplane_level hq hσ
  refine ⟨n, ?_⟩
  intro s hs
  apply family_residual
  intro a ha
  rw [norm_mul]
  exact (mul_le_mul_of_nonneg_right (spectral a ha) (norm_nonneg _)).trans (hn s hs)

/-- Every level can additionally be refined, uniformly at all heights. -/
theorem all_height_newton_family (as : List ℂ) {q σ : ℝ}
    (hq : 1 < q) (hσ : (1 / 2 : ℝ) < σ)
    (spectral : ∀ a ∈ as, ‖a‖ ≤ Real.sqrt q) :
    ∃ n : ℕ, ∀ k : ℕ, ∀ s : ℂ, σ ≤ s.re →
      ‖residual (factorProduct as (fieldParameter q s))
        (newtonIter (factorProduct as (fieldParameter q s))
          (familyApproximation as n (fieldParameter q s)) k) 1‖ ≤
            (1 / 4 : ℝ) ^ (2 ^ k) := by
  obtain ⟨n, hn⟩ := all_height_residual_family as hq hσ spectral
  refine ⟨n, ?_⟩
  intro k s hs
  rw [newtonIter_residual_norm]
  exact pow_le_pow_left₀ (norm_nonneg _) (hn s hs) _

/-- The zero circle returns exactly the finite-field critical line in the s variable. -/
theorem finite_factor_critical_line (as : List ℂ) {q : ℝ} (hq : 1 < q)
    (pure : ∀ a ∈ as, ‖a‖ = Real.sqrt q) {s : ℂ}
    (zero : factorProduct as (fieldParameter q s) = 0) : s.re = 1 / 2 := by
  have hq0 : 0 < q := lt_trans (by norm_num) hq
  have hR : 0 < Real.sqrt q := Real.sqrt_pos.mpr hq0
  have radiusEq := pure_zero_radius as hR pure zero
  have productEq : Real.sqrt q * ‖fieldParameter q s‖ = 1 := by
    rw [radiusEq]
    field_simp [ne_of_gt hR]
  rw [parameter_weight_norm hq0] at productEq
  have hzero := Real.exp_eq_one_iff.mp productEq
  rcases mul_eq_zero.mp hzero with hline | hlog
  · linarith
  · exact False.elim ((ne_of_gt (Real.log_pos hq)) hlog)

/-- Genuine finite-field coefficients supply the all-height family unconditionally. -/
theorem gauss_all_height_family {F : Type*} [Field F] [Fintype F]
    (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ χ ∈ characters, χ ≠ 1) (primitive : ψ.IsPrimitive)
    {σ : ℝ} (hσ : (1 / 2 : ℝ) < σ) :
    ∃ n : ℕ, ∀ s : ℂ, σ ≤ s.re →
      ‖residual (factorProduct (gaussSpectrum characters ψ) (fieldParameter (Fintype.card F) s))
        (familyApproximation (gaussSpectrum characters ψ) n
          (fieldParameter (Fintype.card F) s)) 1‖ ≤ 1 / 4 := by
  have hq : (1 : ℝ) < Fintype.card F := by
    exact_mod_cast (Fintype.one_lt_card : 1 < Fintype.card F)
  exact all_height_residual_family _ hq hσ
    (fun a ha => (gauss_spectrum_pure characters ψ nontrivial primitive a ha).le)

/-- A proved finite-field critical-line statement for the actual constructed Gauss product. -/
theorem gauss_factor_critical_line {F : Type*} [Field F] [Fintype F]
    (characters : List (MulChar F ℂ)) (ψ : AddChar F ℂ)
    (nontrivial : ∀ χ ∈ characters, χ ≠ 1) (primitive : ψ.IsPrimitive)
    {s : ℂ} (zero : factorProduct (gaussSpectrum characters ψ)
      (fieldParameter (Fintype.card F) s) = 0) : s.re = 1 / 2 := by
  have hq : (1 : ℝ) < Fintype.card F := by
    exact_mod_cast (Fintype.one_lt_card : 1 < Fintype.card F)
  exact finite_factor_critical_line _ hq
    (gauss_spectrum_pure characters ψ nontrivial primitive) zero

end GRWTSK.NumberTheory.WeilCertificates
