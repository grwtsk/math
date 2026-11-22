/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE for the original Alpoge Lean v4.33.1 /
Mathlib 0df444a360eaa60ab8c11dca51a86af692955474.
Elaboration, fresh kernel check, transitive axioms: NOT_RUN.
-/
import GRWTSK.NumberTheory.AlpogeNativeGmNormalization
import Mathlib.NumberTheory.LSeries.Nonvanishing
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.Tactic

/-!
# Genuine analytic constants in native Level.Gm

Mathlib proves L(1,chi) != 0 for genuine NONPRINCIPAL Dirichlet
characters WITHOUT RH. The finite certificate inputs S,T,R,E
bound L(1), its derivative, and their errors at the source character.
The classical zero-mean periodic-Abel theorem supplies R=q/N,
E=q*log(N)/N plus finite log interval errors. That analytic
finite-series tail is not yet Lean-formalized; all assumptions
about S,T,R,E remain visible and are NOT fake unconditional bounds.

The exact native Level.Nt, Level.wt, A_Level and Euler gamma are
preserved. No Alpoge final result, RH, zero table, or positivity
oracle is imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AlpogeNativeGmLogDerivativeCertificate

open Complex Formalism Formalism.HC
open GRWTSK.NumberTheory.AlpogeNativeGmNormalization
open scoped BigOperators

/-- Nonprincipal native characters have nonzero L(1,chi).
This is a pinned, unconditional Mathlib Dirichlet theorem. -/
theorem native_LFunction_one_ne_zero
    (Λ : Level) (ψ : PChar) (hψ : ψ ∈ Λ.Nt) :
    DirichletCharacter.LFunction ψ.χ 1 ≠ 0 := by
  exact DirichletCharacter.LFunction_apply_one_ne_zero
    (nontrivial_of_mem_Nt Λ ψ hψ)

/-- Elementary stable denominator for independently certified
finite character sum S and actual L(1,chi). -/
theorem complex_denominator_lower
    (z S : ℂ) (R : ℝ)
    (hDisk : ‖z - S‖ ≤ R) :
    ‖S‖ - R ≤ ‖z‖ := by
  have hTriangle : ‖S‖ ≤ ‖S - z‖ + ‖z‖ := by
    simpa only [sub_add_cancel] using (norm_add_le (S - z) z)
  rw [norm_sub_rev] at hTriangle
  linarith

/-- A certified finite L1 and L1' disk gives an actual numerical
upper bound on the TRUE complex logarithmic derivative at one.
The nonzero denominator is PROVED by its finite enclosure. -/
theorem complex_ratio_bound_of_two_disks
    (z w S T : ℂ) (R E : ℝ)
    (hR : 0 ≤ R) (hE : 0 ≤ E)
    (hZ : ‖z - S‖ ≤ R)
    (hW : ‖w - T‖ ≤ E)
    (hGap : R < ‖S‖) :
    ‖w / z‖ ≤ (‖T‖ + E) / (‖S‖ - R) := by
  have hDen := complex_denominator_lower z S R hZ
  have hDenPos : 0 < ‖z‖ :=
    (sub_pos.mpr hGap).trans_le hDen
  have hNum : ‖w‖ ≤ ‖T‖ + E := by
    have h := norm_add_le (w - T) T
    have hw : ‖w‖ ≤ ‖w - T‖ + ‖T‖ := by
      simpa only [sub_add_cancel] using h
    linarith
  rw [norm_div]
  calc
    ‖w‖ / ‖z‖ ≤ (‖T‖ + E) / ‖z‖ :=
      div_le_div_of_nonneg_right hNum hDenPos.le
    _ ≤ (‖T‖ + E) / (‖S‖ - R) := by
      apply div_le_div_of_nonneg_left (add_nonneg (norm_nonneg T) hE)
        (sub_pos.mpr hGap) hDen

/-- Source-correct nonprincipal character ratio bound, using its
actual DirichletCharacter.LFunction and derivative, not an
artificial finite Euler product. -/
theorem native_logDerivative_norm_bound
    (Λ : Level) (ψ : PChar) (hψ : ψ ∈ Λ.Nt)
    (S T : ℂ) (R E : ℝ)
    (hR : 0 ≤ R) (hE : 0 ≤ E)
    (hL : ‖DirichletCharacter.LFunction ψ.χ 1 - S‖ ≤ R)
    (hD : ‖deriv (DirichletCharacter.LFunction ψ.χ) 1 - T‖ ≤ E)
    (hGap : R < ‖S‖) :
    ‖An.logDerivativeAtOne ψ.χ‖ ≤
      (‖T‖ + E) / (‖S‖ - R) := by
  unfold An.logDerivativeAtOne
  exact complex_ratio_bound_of_two_disks
    (DirichletCharacter.LFunction ψ.χ 1)
    (deriv (DirichletCharacter.LFunction ψ.χ) 1)
    S T R E hR hE hL hD hGap

/-- The exact Euler-Mascheroni enclosure is already proved in pinned
Mathlib, with no numerical assumption or RH dependency. -/
theorem gamma_between_mathlib_sequences (n : ℕ) :
    Real.eulerMascheroniSeq n < Real.eulerMascheroniConstant ∧
    Real.eulerMascheroniConstant < Real.eulerMascheroniSeq' n :=
  ⟨Real.eulerMascheroniSeq_lt_eulerMascheroniConstant n,
   Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' n⟩

/-- Every native level has finite analytic constant, with original
character weights and original log derivatives. The right-hand side
is an exact arithmetic bound; finite analytic certificates can
replace each true norm without changing the source statement. -/
theorem analyticConstant_abs_le_true_norms (Λ : Level) :
    |analyticConstant Λ| ≤
      1 + |Real.eulerMascheroniConstant| +
        ∑ ψ ∈ Λ.Nt,
          |Λ.wt ψ| * ‖An.logDerivativeAtOne ψ.χ‖ := by
  unfold analyticConstant
  have hbound :
      |∑ ψ ∈ Λ.Nt, Λ.wt ψ *
          (An.logDerivativeAtOne ψ.χ).re| ≤
        ∑ ψ ∈ Λ.Nt, |Λ.wt ψ| *
          ‖An.logDerivativeAtOne ψ.χ‖ := by
    calc
      _ ≤ ∑ ψ ∈ Λ.Nt,
          |Λ.wt ψ * (An.logDerivativeAtOne ψ.χ).re| :=
          Finset.abs_sum_le_sum_abs _ _
      _ = ∑ ψ ∈ Λ.Nt,
          |Λ.wt ψ| * |(An.logDerivativeAtOne ψ.χ).re| := by
          simp only [abs_mul]
      _ ≤ ∑ ψ ∈ Λ.Nt,
          |Λ.wt ψ| * ‖An.logDerivativeAtOne ψ.χ‖ := by
          apply Finset.sum_le_sum
          intro ψ _
          exact mul_le_mul_of_nonneg_left
            (Complex.abs_re_le_norm _) (abs_nonneg _)
  calc
    |1 + Real.eulerMascheroniConstant +
        ∑ ψ ∈ Λ.Nt,
           Λ.wt ψ * (An.logDerivativeAtOne ψ.χ).re|
      ≤ |1 + Real.eulerMascheroniConstant| +
          |∑ ψ ∈ Λ.Nt,
             Λ.wt ψ * (An.logDerivativeAtOne ψ.χ).re| :=
          abs_add_le _ _
    _ ≤ (1 + |Real.eulerMascheroniConstant|) +
          (∑ ψ ∈ Λ.Nt,
            |Λ.wt ψ| * ‖An.logDerivativeAtOne ψ.χ‖) := by
          gcongr
          · simpa only [abs_one] using
              (abs_add_le (1 : ℝ) Real.eulerMascheroniConstant)
          · exact hbound
    _ = _ := by ring

/-- A finite vector of certified true L'/L bounds yields a bound for
the ORIGINAL A_Level. All character, conductor and level weights are
preserved; no EAtH assumption is needed for this purely analytic
algebraic transport. -/
theorem analyticConstant_abs_le_certificates
    (Λ : Level) (B : PChar → ℝ)
    (hCert : ∀ ψ ∈ Λ.Nt,
      ‖An.logDerivativeAtOne ψ.χ‖ ≤ B ψ) :
    |analyticConstant Λ| ≤
      1 + |Real.eulerMascheroniConstant| +
         ∑ ψ ∈ Λ.Nt, |Λ.wt ψ| * B ψ := by
  apply (analyticConstant_abs_le_true_norms Λ).trans
  apply add_le_add_left
  apply Finset.sum_le_sum
  intro ψ hψ
  exact mul_le_mul_of_nonneg_left (hCert ψ hψ)
    (abs_nonneg _)


/-- A native certificate is an INTERVAL for the genuine A_Level, not
merely an upper bound on its absolute value. Every weight is the
original Level.wt; negative and complex source coefficients are
retained until the prescribed real projection. -/
def analyticConstantCenter (Λ : Level) (gammaCenter : ℝ)
    (characterCenter : PChar → ℝ) : ℝ :=
  1 + gammaCenter + ∑ ψ ∈ Λ.Nt, Λ.wt ψ * characterCenter ψ

def analyticConstantRadius (Λ : Level) (gammaRadius : ℝ)
    (characterRadius : PChar → ℝ) : ℝ :=
  gammaRadius + ∑ ψ ∈ Λ.Nt, |Λ.wt ψ| * characterRadius ψ

theorem analyticConstant_error_le_centers
    (Λ : Level) (gammaCenter gammaRadius : ℝ)
    (characterCenter characterRadius : PChar → ℝ)
    (hGamma : |Real.eulerMascheroniConstant - gammaCenter| ≤ gammaRadius)
    (hChars : ∀ ψ ∈ Λ.Nt,
      |(An.logDerivativeAtOne ψ.χ).re - characterCenter ψ| ≤
        characterRadius ψ) :
    |analyticConstant Λ -
        analyticConstantCenter Λ gammaCenter characterCenter| ≤
      analyticConstantRadius Λ gammaRadius characterRadius := by
  have hDifference :
      analyticConstant Λ -
        analyticConstantCenter Λ gammaCenter characterCenter =
      (Real.eulerMascheroniConstant - gammaCenter) +
      ∑ ψ ∈ Λ.Nt, Λ.wt ψ *
        ((An.logDerivativeAtOne ψ.χ).re - characterCenter ψ) := by
    unfold analyticConstant analyticConstantCenter
    rw [← Finset.sum_sub_distrib]
    simp only [mul_sub]
    ring
  rw [hDifference]
  calc
    |(Real.eulerMascheroniConstant - gammaCenter) +
      ∑ ψ ∈ Λ.Nt, Λ.wt ψ *
        ((An.logDerivativeAtOne ψ.χ).re - characterCenter ψ)|
       ≤ |Real.eulerMascheroniConstant - gammaCenter| +
         |∑ ψ ∈ Λ.Nt, Λ.wt ψ *
           ((An.logDerivativeAtOne ψ.χ).re - characterCenter ψ)| :=
         abs_add_le _ _
    _ ≤ gammaRadius +
         ∑ ψ ∈ Λ.Nt, |Λ.wt ψ| * characterRadius ψ := by
      apply add_le_add hGamma
      calc
        _ ≤ ∑ ψ ∈ Λ.Nt,
          |Λ.wt ψ *
            ((An.logDerivativeAtOne ψ.χ).re - characterCenter ψ)| :=
          Finset.abs_sum_le_sum_abs _ _
        _ = ∑ ψ ∈ Λ.Nt,
          |Λ.wt ψ| *
            |(An.logDerivativeAtOne ψ.χ).re - characterCenter ψ| := by
            simp only [abs_mul]
        _ ≤ ∑ ψ ∈ Λ.Nt,
          |Λ.wt ψ| * characterRadius ψ := by
            apply Finset.sum_le_sum
            intro ψ hψ
            exact mul_le_mul_of_nonneg_left
              (hChars ψ hψ) (abs_nonneg _)
    _ = analyticConstantRadius Λ gammaRadius characterRadius := rfl

/-- Use the EXACT pinned Mathlib lower/upper Euler sequences for
an effective gamma midpoint with a rigorous half-width. -/
theorem gamma_midpoint_from_original_mathlib (n : ℕ) :
    |Real.eulerMascheroniConstant -
      (Real.eulerMascheroniSeq n + Real.eulerMascheroniSeq' n) / 2| ≤
      (Real.eulerMascheroniSeq' n - Real.eulerMascheroniSeq n) / 2 := by
  have hlo := Real.eulerMascheroniSeq_lt_eulerMascheroniConstant n
  have hhi := Real.eulerMascheroniConstant_lt_eulerMascheroniSeq' n
  apply abs_le.mpr
  constructor <;> linarith

/-- A norm-bounded complex ratio disk yields an interval for its
REAL source phase. This intentionally does not assume an L'/L
constant can be reconstructed from prime-Jacobi moments alone. -/
theorem real_logDerivative_error_of_ratio_bound
    (Λ : Level) (ψ : PChar) (hψ : ψ ∈ Λ.Nt)
    (center : ℂ) (radius : ℝ)
    (h : ‖An.logDerivativeAtOne ψ.χ - center‖ ≤ radius) :
    |(An.logDerivativeAtOne ψ.χ).re - center.re| ≤ radius := by
  have hRe := Complex.abs_re_le_norm
    (An.logDerivativeAtOne ψ.χ - center)
  simpa only [Complex.sub_re] using hRe.trans h

end GRWTSK.NumberTheory.AlpogeNativeGmLogDerivativeCertificate
