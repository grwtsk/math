/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FULL_DEPENDENCY_BUILD_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilInnerEnergyQuadrature
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaWeightedQuadrature

/-!
# Source return for nested physical gamma quadrature

The proved inner-energy budget is multiplied by each EXACT nonnegative kernel
cell mass, then charged on BOTH sides of the existing outer enclosure. The
baseline coefficient and original signed prime sum are left exact; in
particular no sign assumption on the baseline is introduced. The old omitted
head and tail remain one-sided upper budgets. This consumer is primitive
NONPRINCIPAL only, never the conductor-one zeta pole case.

The second result controls accumulated mass without a hidden fixed tolerance:
 W(a,epsilon,R) <= (R+1/2)*(R-epsilon)/epsilon,
 epsilon^2 * W(a,epsilon,R) <= (R+1/2)*R*epsilon.
This conservative bound is sufficient to make an epsilon^2 outer mesh,
1/m <= epsilon^2 and eta <= epsilon^2 compatible with epsilon down to zero
at fixed A,R,L. It does not assert the asymptotically sharper logarithmic law.
It does not supply the remaining character/logarithm/prime/cell-weight/baseline
rounding, the exponential-prefix parameter choice, the full rational enclosure,
its universal existence, density, the full explicit formula or the all-test sign.

Source: grwtsk/math@7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c;
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Standard triangle/integral comparison; novelty UNASSESSED. See the individual
source-local provenance records. No RH or primitive Dirichlet GRH is assumed.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators NNReal

namespace GRWTSK.NumberTheory.WeilQuadraticForm.NestedGammaQuadrature

open OddRootProjection SourcePrimeCorrelation ExactGammaTail CharacterWindow
open GammaHeadIntegrability GammaWeightedQuadrature InnerEnergyQuadrature

private theorem weighted_sum_error {ι : Type*} (I : Finset ι) (w x y b : ι → ℝ)
    (hw : ∀ i ∈ I, 0 ≤ w i) (he : ∀ i ∈ I, |x i - y i| ≤ b i) :
    |(∑ i ∈ I, w i * x i) - ∑ i ∈ I, w i * y i| ≤ ∑ i ∈ I, w i * b i := by
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ i ∈ I, |w i * x i - w i * y i| := Finset.abs_sum_le_sum_abs _ _
    _ = ∑ i ∈ I, w i * |x i - y i| := by
      apply Finset.sum_congr rfl
      intro i hi
      rw [← mul_sub, abs_mul, abs_of_nonneg (hw i hi)]
    _ ≤ _ := Finset.sum_le_sum (fun i hi => mul_le_mul_of_nonneg_left (he i hi) (hw i hi))

/-- Nested enclosure of the SAME primitive nonprincipal arithmetic value.
The only evaluation premises certify point errors against the actual f.
No premise asserts inner-integral accuracy or positivity of the full form. -/
theorem primitiveArithmeticValue_nested_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {ι : Type*} (I : Finset ι) (u v s : ι → ℝ) (n : ℕ)
    {f : ℝ → ℂ} {L : ℝ≥0} (hL : LipschitzWith L f) (hf : MemLp f 2 volume)
    {A R ε δ : ℝ} (hA : 0 ≤ A) (hR : 0 < R) (hε : 0 < ε) (hεR : ε ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (hcells : ∀ i ∈ I, 0 < u i ∧ v i ≤ R ∧ s i ∈ Icc (u i) (v i))
    (hcover : (⋃ i ∈ I, Ioc (u i) (v i)) = Ioc ε R)
    (hdisjoint : Set.Pairwise (↑I)
      (fun i j => Disjoint (Ioc (u i) (v i)) (Ioc (u j) (v j))))
    (hδ : 0 ≤ δ) (hmesh : ∀ i ∈ I, ∀ r ∈ Ioc (u i) (v i), |r - s i| ≤ δ)
    (m : ι → ℕ) (η : ι → ℝ) (zp z0 : ι → ℕ → ℂ)
    (hm : ∀ i ∈ I, 0 < m i) (hη : ∀ i ∈ I, 0 ≤ η i)
    (hp : ∀ i ∈ I, ∀ j < m i,
      ‖zp i j - f (midpoint A R (m i) j + s i)‖ ≤ η i)
    (h0 : ∀ i ∈ I, ∀ j < m i,
      ‖z0 i j - f (midpoint A R (m i) j)‖ ≤ η i) :
    let sampled := (gammaConstant q (gammaParity χ) + tailPrefix (gammaParity χ) n R) *
      energy f + (∑ i ∈ I, kernelCellMass (gammaParity χ) (u i) (v i) *
        sampledEnergy A R (m i) (zp i) (z0 i)) -
      twistedPrime A χ (fun k => correlation f (Real.log (k : ℝ)))
    let error := shiftEnergySlope A R L * δ * kernelCellMass (gammaParity χ) ε R +
      ∑ i ∈ I, kernelCellMass (gammaParity χ) (u i) (v i) *
        innerBudget A R L (s i) (m i) (η i)
    sampled - error ≤ primitiveArithmeticValue χ hprimitive hnonprincipal A f ∧
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤ sampled + error +
        headConstant A R L * ε ^ 2 / 2 + tailUpper (gammaParity χ + 2 * n) R * energy f := by
  have hinner (i : ι) (hi : i ∈ I) :
      |energy (fun t => f (t + s i) - f t) - sampledEnergy A R (m i) (zp i) (z0 i)| ≤
        innerBudget A R L (s i) (m i) (η i) := by
    have hs : s i ∈ Icc (0 : ℝ) R :=
      ⟨((hcells i hi).1.trans_le (hcells i hi).2.2.1).le,
        (hcells i hi).2.2.2.trans (hcells i hi).2.1⟩
    exact shiftEnergy_midpoint_approx_error hL hA hR hsupport hs
      (hm i hi) (hη i hi) (zp i) (z0 i) (hp i hi) (h0 i hi)
  have he := weighted_sum_error I
    (fun i => kernelCellMass (gammaParity χ) (u i) (v i))
    (fun i => energy (fun t => f (t + s i) - f t))
    (fun i => sampledEnergy A R (m i) (zp i) (z0 i))
    (fun i => innerBudget A R L (s i) (m i) (η i))
    (fun i hi => kernelCellMass_nonneg (gammaParity χ) (hcells i hi).1) hinner
  have hout := primitiveArithmeticValue_weighted_enclosure χ hprimitive hnonprincipal
    I u v s n hL hf hA hR hε hεR hsupport hcut hcells hcover hdisjoint hδ hmesh
  have he' := abs_le.mp he
  dsimp only at hout ⊢
  constructor <;> linarith [hout.1, hout.2, he'.1, he'.2]

/-- Conservative control of the divergent cell mass, uniform in parity index. -/
theorem kernelCellMass_le_inverse_cutoff (a : ℕ) {ε R : ℝ}
    (hε : 0 < ε) (hεR : ε ≤ R) :
    kernelCellMass a ε R ≤ ((R + 1 / 2) / ε) * (R - ε) := by
  have hi : IntegrableOn (parityKernel a) (Ioc ε R) :=
    (parityKernel_integrableOn_tail a hε).mono_set (fun _ hr => hr.1)
  have hpoint (r : ℝ) (hr : r ∈ Ioc ε R) : parityKernel a r ≤ (R + 1 / 2) / ε := by
    have hr0 := hε.trans hr.1
    have hden : 0 ≤ 1 - Real.exp (-2 * r) := by
      have hexp : Real.exp (-2 * r) ≤ Real.exp 0 :=
        Real.exp_le_exp.mpr (by linarith)
      simpa only [Real.exp_zero] using sub_nonneg.mpr hexp
    have hk : 0 ≤ parityKernel a r := div_nonneg (Real.exp_nonneg _) hden
    have hs := shift_mul_parityKernel_le a hr0
    have hmul := mul_le_mul_of_nonneg_right hr.1.le hk
    apply (le_div_iff₀ hε).mpr
    nlinarith [hr.2]
  calc
    _ ≤ ∫ _r in Ioc ε R, (R + 1 / 2) / ε :=
      setIntegral_mono_on hi (integrable_const _) measurableSet_Ioc hpoint
    _ = _ := by
      rw [← intervalIntegral.integral_of_le hεR, intervalIntegral.integral_const, smul_eq_mul]
      ring

/-- Explicit vanishing budget: the mesh/tolerance must shrink with the cutoff. -/
theorem cutoffSquared_mul_mass_le (a : ℕ) {ε R : ℝ}
    (hε : 0 < ε) (hεR : ε ≤ R) :
    ε ^ 2 * kernelCellMass a ε R ≤ (R + 1 / 2) * R * ε := by
  have hε0 : ε ≠ 0 := ne_of_gt hε
  have hR : 0 < R := hε.trans_le hεR
  calc
    _ ≤ ε ^ 2 * (((R + 1 / 2) / ε) * (R - ε)) :=
      mul_le_mul_of_nonneg_left (kernelCellMass_le_inverse_cutoff a hε hεR) (sq_nonneg ε)
    _ = (R + 1 / 2) * (R - ε) * ε := by field_simp [hε0]; ring
    _ ≤ _ := mul_le_mul_of_nonneg_right
      (mul_le_mul_of_nonneg_left (sub_le_self R hε.le) (by linarith)) hε.le

end GRWTSK.NumberTheory.WeilQuadraticForm.NestedGammaQuadrature
