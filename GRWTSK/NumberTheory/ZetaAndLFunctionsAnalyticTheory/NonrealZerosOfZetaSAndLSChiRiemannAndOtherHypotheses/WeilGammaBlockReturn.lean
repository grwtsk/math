/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddGammaOutput
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilFiniteSineArithmeticReturn
import Mathlib.Tactic

/-!
# Original Weil gamma block on every finite sine trial

The original archimedean matrix is the actual sineArchimedeanEntry from
WeilOddSineProjection, with the actual gammaConstant and parityKernel.
The mathematical proof uses Mathlib integral linearity and the already
established a=0 mixed-gamma integrability in WeilOddGammaOutput.
For every natural parity a, the exact native parityKernel obeys
  0 <= parityKernel a r <= parityKernel 0 r, r>0.
Thus the same mixed integrals converge absolutely, including the parity-one
primitive Dirichlet case. Finite sine expansions may then be taken under the
inner physical integral and the outer gamma integral without a formal
interchange of two infinite integrations.

The theorem gammaBlockReturn_of_pos discharges the previously explicit
GammaBlockReturn conditional premise for every T>0, every real c,
all natural a and finite dimensions M. It does not discharge the still
unproved off-critical-zero-to-negative physical test implication, fixed-window
Sobolev H1 source projection, or cofinal all-vector arithmetic lower sign.

Source attribution: grwtsk contributors; the earlier native integrability
and matrix declarations retain their original authorship and licenses.
MANUAL LEAN SOURCE CANDIDATE. Elaboration, fresh kernel checking, axiom
verification and independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaBlockReturn

open OddRootProjection
open OddSineForm
open OddGammaOutput
open OddShiftEnergy
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineArithmeticReturn

private def sineDelta (T : ℝ) (n : ℕ) (r t : ℝ) : ℝ :=
  zeroExtendedSine T n (t + r) - zeroExtendedSine T n t

private def sineMixed (T : ℝ) (m n : ℕ) (r : ℝ) : ℝ :=
  ∫ t : ℝ, sineDelta T m r t * sineDelta T n r t

private def kernelMixed (T : ℝ) (a m n : ℕ) (r : ℝ) : ℝ :=
  parityKernel a r * sineMixed T m n r

/-- Both translated, zero-extended actual sine modes lie in L2; their
mixed difference product therefore belongs to L1 at each fixed shift. -/
private theorem sineMixed_integrable (T : ℝ) (m n : ℕ) (r : ℝ) :
    Integrable (fun t : ℝ => sineDelta T m r t * sineDelta T n r t) := by
  have hm : MemLp (zeroExtendedSine T m) 2 volume :=
    memLp_zeroExtendedSine T m
  have hn : MemLp (zeroExtendedSine T n) 2 volume :=
    memLp_zeroExtendedSine T n
  have hmr : MemLp (fun t : ℝ => zeroExtendedSine T m (t + r)) 2 volume :=
    hm.comp_measurePreserving (measurePreserving_add_right volume r)
  have hnr : MemLp (fun t : ℝ => zeroExtendedSine T n (t + r)) 2 volume :=
    hn.comp_measurePreserving (measurePreserving_add_right volume r)
  change Integrable (fun t : ℝ =>
    (zeroExtendedSine T m (t + r) - zeroExtendedSine T m t) *
    (zeroExtendedSine T n (t + r) - zeroExtendedSine T n t))
  exact (hmr.sub hm).integrable_mul (hnr.sub hn)

private theorem sineMixed_measurable (T : ℝ) (m n : ℕ) :
    Measurable (sineMixed T m n) := by
  have hs (k : ℕ) : Measurable (zeroExtendedSine T k) := by
    unfold zeroExtendedSine
    exact Measurable.ite measurableSet_Icc (by fun_prop) measurable_const
  let F : ℝ × ℝ → ℝ := fun z =>
    sineDelta T m z.1 z.2 * sineDelta T n z.1 z.2
  have hshift : Measurable (fun z : ℝ × ℝ => z.2 + z.1) :=
    measurable_snd.add measurable_fst
  have hF : Measurable F := by
    dsimp [F, sineDelta]
    exact (((hs m).comp hshift).sub ((hs m).comp measurable_snd)).mul
      (((hs n).comp hshift).sub ((hs n).comp measurable_snd))
  exact hF.stronglyMeasurable.integral_prod_right'.measurable

/-- The original parity kernel is nonnegative at every positive shift. -/
private theorem parityKernel_nonneg_of_pos (a : ℕ) {r : ℝ} (hr : 0 < r) :
    0 ≤ parityKernel a r := by
  unfold parityKernel
  have hd : Real.exp (-2 * r) < 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  exact div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr hd.le)

/-- This is an actual global mixed-gamma integrability proof for every
parity. It does not require cancellation or a diagonal test. -/
theorem kernelMixed_integrableOn (T : ℝ) (hT : 0 < T)
    (a m n : ℕ) : IntegrableOn (kernelMixed T a m n) (Ioi 0) := by
  have hbase : IntegrableOn (kernelMixed T 0 m n) (Ioi 0) := by
    simpa only [kernelMixed, sineMixed, sineDelta] using
      (integrableOn_mixedGamma
        (lipschitzWith_zeroExtendedSine T hT n)
        (norm_zeroExtendedSine_le T hT n)
        (integrable_zeroExtendedSine T m)
        (lipschitzWith_zeroExtendedSine T hT m).continuous.measurable)
  have hkMeas : Measurable (parityKernel a) := by
    unfold parityKernel
    fun_prop
  have hmeas : AEStronglyMeasurable (kernelMixed T a m n)
      (volume.restrict (Ioi (0 : ℝ))) :=
    (hkMeas.mul (sineMixed_measurable T m n)).aestronglyMeasurable
  apply hbase.mono' hmeas
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  have hr0 : 0 < r := hr
  have hbaseNonneg : 0 ≤ parityKernel 0 r := parityKernel_zero_nonneg hr0
  have hsmall : 0 ≤ parityKernel a r := parityKernel_nonneg_of_pos a hr0
  have hle : parityKernel a r ≤ parityKernel 0 r := parityKernel_le_base a hr0
  change ‖parityKernel a r * sineMixed T m n r‖ ≤
    ‖parityKernel 0 r * sineMixed T m n r‖
  rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_mul, abs_mul,
    abs_of_nonneg hsmall, abs_of_nonneg hbaseNonneg]
  exact mul_le_mul_of_nonneg_right hle (abs_nonneg _)

private theorem finiteSine_delta (T : ℝ) {M : ℕ} (x : Fin M → ℝ)
    (r t : ℝ) :
    finiteSine T x (t + r) - finiteSine T x t =
      ∑ i : Fin M, x i * sineDelta T (i.val + 1) r t := by
  unfold finiteSine sineDelta
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  ring

private theorem finiteSine_delta_square (T : ℝ) {M : ℕ}
    (x : Fin M → ℝ) (r t : ℝ) :
    (finiteSine T x (t + r) - finiteSine T x t) ^ 2 =
      ∑ i : Fin M, ∑ j : Fin M,
        (x i * x j) * (sineDelta T (i.val + 1) r t *
          sineDelta T (j.val + 1) r t) := by
  rw [finiteSine_delta T x r t, pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Inner translation energy: an exact finite bilinear expansion. -/
private theorem finiteSine_shift_square_integral (T : ℝ) {M : ℕ}
    (x : Fin M → ℝ) (r : ℝ) :
    (∫ t : ℝ, (finiteSine T x (t + r) - finiteSine T x t) ^ 2) =
      ∑ i : Fin M, ∑ j : Fin M,
        (x i * x j) * sineMixed T (i.val + 1) (j.val + 1) r := by
  calc
    _ = ∫ t : ℝ, ∑ i : Fin M, ∑ j : Fin M,
        (x i * x j) * (sineDelta T (i.val + 1) r t *
          sineDelta T (j.val + 1) r t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      exact finiteSine_delta_square T x r t
    _ = _ := by
      rw [integral_finsetSum _ (fun i _ =>
        integrable_finsetSum _ (fun j _ =>
          (sineMixed_integrable T (i.val + 1) (j.val + 1) r).const_mul (x i * x j)))]
      apply Finset.sum_congr rfl
      intro i _
      rw [integral_finsetSum _ (fun j _ =>
        (sineMixed_integrable T (i.val + 1) (j.val + 1) r).const_mul (x i * x j))]
      simp only [integral_const_mul, sineMixed]

/-- The whole ORIGINAL parity gamma energy, without changing its kernel,
is exactly the finite quadratic sum of all of its mixed source entries. -/
theorem gamma_energy_finiteSine_eq_sum (T : ℝ) (hT : 0 < T)
    (a : ℕ) {M : ℕ} (x : Fin M → ℝ) :
    (∫ r in Ioi (0 : ℝ), parityKernel a r *
      (∫ t : ℝ, (finiteSine T x (t + r) - finiteSine T x t) ^ 2)) =
    ∑ i : Fin M, ∑ j : Fin M,
      (x i * x j) *
        (∫ r in Ioi (0 : ℝ), kernelMixed T a (i.val + 1) (j.val + 1) r) := by
  calc
    _ = ∫ r in Ioi (0 : ℝ), ∑ i : Fin M, ∑ j : Fin M,
        (x i * x j) * kernelMixed T a (i.val + 1) (j.val + 1) r := by
      apply integral_congr_ae
      filter_upwards [] with r
      rw [finiteSine_shift_square_integral T x r]
      unfold kernelMixed
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      ring
    _ = _ := by
      rw [integral_finsetSum _ (fun i _ =>
        integrable_finsetSum _ (fun j _ =>
          (kernelMixed_integrableOn T hT a (i.val + 1) (j.val + 1)).const_mul (x i * x j)))]
      apply Finset.sum_congr rfl
      intro i _
      rw [integral_finsetSum _ (fun j _ =>
        (kernelMixed_integrableOn T hT a (i.val + 1) (j.val + 1)).const_mul (x i * x j))]
      simp only [integral_const_mul]

private theorem finiteSine_mass_bilinear (T : ℝ) {M : ℕ} (x : Fin M → ℝ) :
    (∫ t : ℝ, (finiteSine T x t) ^ 2) =
      ∑ i : Fin M, ∑ j : Fin M,
        (x i * x j) *
          (∫ t : ℝ, zeroExtendedSine T (i.val + 1) t *
            zeroExtendedSine T (j.val + 1) t) := by
  calc
    _ = ∫ t : ℝ, finiteSine T x t * finiteSine T x (t + 0) := by
      simp only [add_zero, pow_two]
    _ = ∑ i : Fin M, ∑ j : Fin M,
      (x i * x j) * sineCorrelation T (i.val + 1) (j.val + 1) 0 :=
        integral_finiteSine_product T 0 x x
    _ = _ := by
      simp only [sineCorrelation, add_zero]

/-- This is the actual finite sine archimedean matrix expansion, with no
assumed symmetry of a foreign operator. -/
private theorem arch_quadratic_eq_mixed_sum (T c : ℝ) (a M : ℕ)
    (x : Fin M → ℝ) :
    quadratic (archBlockMatrix T c a M) x =
      ∑ i : Fin M, ∑ j : Fin M,
        (x i * x j) *
          (c * (∫ t : ℝ, zeroExtendedSine T (i.val + 1) t *
            zeroExtendedSine T (j.val + 1) t) +
           ∫ r in Ioi (0 : ℝ), kernelMixed T a (i.val + 1) (j.val + 1) r) := by
  simp only [quadratic, archBlockMatrix, sineArchimedeanEntry,
    Matrix.mulVec, dotProduct, Finset.mul_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  unfold kernelMixed sineMixed sineDelta
  ring

/-- Discharges the last finite sine gamma block of the original arithmetic
source, for BOTH zeta (a=0) and odd primitive characters (a=1). -/
theorem gammaBlockReturn_of_pos (T c : ℝ) (hT : 0 < T) (a M : ℕ) :
    GammaBlockReturn T c a M := by
  intro x
  have hmass := finiteSine_mass_bilinear T x
  have hgamma := gamma_energy_finiteSine_eq_sum T hT a x
  rw [arch_quadratic_eq_mixed_sum]
  unfold archPhysicalValue
  rw [hmass, hgamma]
  simp_rw [mul_add]
  simp only [Finset.sum_add_distrib, Finset.mul_sum]
  congr 1
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- The gamma energy gives a genuine all-dimension lower floor for the
ARCHIMEDEAN block alone. This does not bound the signed prime and zeta
pole subtractions and is not a cofinal Weil lower budget. -/
theorem arch_quadratic_ge_constant (T c : ℝ) (hT : 0 < T)
    (a M : ℕ) (x : Fin M → ℝ) :
    c * (∑ i : Fin M, (x i) ^ 2) ≤
      quadratic (archBlockMatrix T c a M) x := by
  have hgammaNonneg :
      0 ≤ ∫ r in Ioi (0 : ℝ), parityKernel a r *
        (∫ t : ℝ, (finiteSine T x (t + r) - finiteSine T x t) ^ 2) := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    exact mul_nonneg (parityKernel_nonneg_of_pos a hr)
      (integral_nonneg (fun t => sq_nonneg _))
  have hsource := (gammaBlockReturn_of_pos T c hT a M) x
  rw [hsource]
  unfold archPhysicalValue
  rw [integral_finiteSine_sq T hT x]
  linarith

/-- The exact original zeta matrix now returns to its own negative-pole
physical source without an extra gamma-block premise. -/
theorem zeta_matrix_eq_physical (T : ℝ) (hT : 0 < T) (M : ℕ)
    (x : Fin M → ℝ) :
    quadratic (zetaSineMatrix T M) x =
      zetaOddPhysicalValue T (finiteSine T x) :=
  zeta_matrix_eq_physical_of_gamma_return T hT M
    (gammaBlockReturn_of_pos T (gammaConstant 1 0) hT 0 M) x

/-- The exact original primitive nonprincipal paired-character matrix
returns to the appropriate gamma parity and real conjugate-pair prime form. -/
theorem primitive_matrix_eq_physical {q : ℕ} [NeZero q]
    (chi : DirichletCharacter ℂ q) (hp : chi.IsPrimitive) (hn : chi ≠ 1)
    (T : ℝ) (hT : 0 < T) (M : ℕ) (x : Fin M → ℝ) :
    quadratic (primitivePairSineMatrix chi hp hn T M) x =
      primitivePairedOddPhysicalValue chi hp hn T (finiteSine T x) :=
  primitive_matrix_eq_physical_of_gamma_return chi hp hn T M
    (gammaBlockReturn_of_pos T (gammaConstant q (gammaParity chi)) hT
      (gammaParity chi) M) x

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaBlockReturn
