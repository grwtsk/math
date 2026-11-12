/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaWeightedQuadrature

/-!
# Lower-endpoint-stable outer quadrature for the physical Weil gamma term

For nonnegative shifts r,s, retain the factor r+s in the squared-increment
modulus instead of replacing it by 2*R. For LEFT endpoint sampling s=u<=r,
this pays the singular kernel with the existing r*K_a(r)<=r+1/2 inequality.
The finite outer error is at most 2*headConstant(A,R,L)*delta*(R-epsilon),
not a constant times the divergent kernel mass. The bound is uniform in
0<epsilon<=R for fixed A,R,L,delta; no uniformity in R or f is asserted.

The cell weights are the existing exact kernel integrals. Inner sample
energies are still integrals: this module neither formalizes WIPS-1--WIPS-3
nor certifies numerical evaluations. The final theorem returns to the same
primitive NONPRINCIPAL arithmetic value, retaining all signed prime powers,
character phases, conductor, parity, and both gamma endpoint budgets.
Conductor-one zeta still needs its separate full pole-inclusive identity.

The mathematical argument, source comparison and individual declaration
records are in the adjacent WeilGammaEndpointQuadrature.provenance directory.
Native inspection: 05c3158365036f6eaa025d78cf2586dbbfb81f20.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Coordination: issue #1789, scope comment 6831005151. No novelty claimed.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators NNReal

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaEndpointQuadrature

open OddRootProjection SourcePrimeCorrelation ExactGammaTail CharacterWindow
open GammaHeadIntegrability GammaWeightedQuadrature

/-- Unequal increment bounds preserve the vanishing factor r+s at the origin. -/
theorem shiftSquare_difference_le_sum {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {r s : ℝ} (hr : 0 ≤ r) (hs : 0 ≤ s) (t : ℝ) :
    |‖f (t + r) - f t‖ ^ 2 - ‖f (t + s) - f t‖ ^ 2| ≤
      (L : ℝ) ^ 2 * (r + s) * |r - s| := by
  have hb (x : ℝ) (hx : 0 ≤ x) : ‖f (t + x) - f t‖ ≤ (L : ℝ) * x := by
    simpa only [add_sub_cancel_left, Real.norm_eq_abs, abs_of_nonneg hx]
      using hL.norm_sub_le (t + x) t
  have hd : ‖(f (t + r) - f t) - (f (t + s) - f t)‖ ≤
      (L : ℝ) * |r - s| := by
    calc
      _ = ‖f (t + r) - f (t + s)‖ := by congr 1; abel
      _ ≤ (L : ℝ) * ‖(t + r) - (t + s)‖ := hL.norm_sub_le _ _
      _ = _ := by
        rw [show (t + r) - (t + s) = r - s by ring, Real.norm_eq_abs]
  have hn := (abs_norm_sub_norm_le (f (t + r) - f t) (f (t + s) - f t)).trans hd
  have hid : ‖f (t + r) - f t‖ ^ 2 - ‖f (t + s) - f t‖ ^ 2 =
      (‖f (t + r) - f t‖ - ‖f (t + s) - f t‖) *
        (‖f (t + r) - f t‖ + ‖f (t + s) - f t‖) := by ring
  rw [hid, abs_mul, abs_of_nonneg (add_nonneg (norm_nonneg _) (norm_nonneg _))]
  calc
    _ ≤ ((L : ℝ) * |r - s|) * ((L : ℝ) * r + (L : ℝ) * s) :=
      mul_le_mul hn (add_le_add (hb r hr) (hb s hs))
        (add_nonneg (norm_nonneg _) (norm_nonneg _))
        (mul_nonneg L.coe_nonneg (abs_nonneg _))
    _ = _ := by ring

/-- The actual whole-line energy inherits the endpoint-vanishing modulus. -/
theorem shiftEnergy_difference_le_sum {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R r s : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hr : r ∈ Icc (0 : ℝ) R) (hs : s ∈ Icc (0 : ℝ) R) :
    |energy (fun t => f (t + r) - f t) - energy (fun t => f (t + s) - f t)| ≤
      (2 * A + R) * (L : ℝ) ^ 2 * (r + s) * |r - s| := by
  have hzero (t : ℝ) (ht : t ∉ Icc (-A - R) A) :
      ‖f (t + r) - f t‖ ^ 2 - ‖f (t + s) - f t‖ ^ 2 = 0 := by
    rw [shiftDifference_zero_outside hsupport hr.1 hr.2 ht,
      shiftDifference_zero_outside hsupport hs.1 hs.2 ht]
    simp
  have hloc : (∫ t in Icc (-A - R) A,
      (‖f (t + r) - f t‖ ^ 2 - ‖f (t + s) - f t‖ ^ 2)) =
      energy (fun t => f (t + r) - f t) - energy (fun t => f (t + s) - f t) := by
    rw [setIntegral_eq_integral_of_forall_compl_eq_zero hzero,
      integral_sub (integrable_shift_energy hf r) (integrable_shift_energy hf s)]
    rfl
  have hint := norm_setIntegral_le_of_norm_le_const
    (μ := (volume : Measure ℝ)) (s := Icc (-A - R) A)
    (f := fun t : ℝ => ‖f (t + r) - f t‖ ^ 2 - ‖f (t + s) - f t‖ ^ 2)
    (C := (L : ℝ) ^ 2 * (r + s) * |r - s|) (by simp)
    (fun t _ => by
      rw [Real.norm_eq_abs]
      exact shiftSquare_difference_le_sum hL hr.1 hs.1 t)
  rw [hloc, Real.norm_eq_abs, Real.volume_real_Icc_of_le (by linarith)] at hint
  calc
    _ ≤ ((L : ℝ) ^ 2 * (r + s) * |r - s|) * (A - (-A - R)) := hint
    _ = _ := by ring

private theorem kernel_nonneg (a : ℕ) {r : ℝ} (hr : 0 < r) :
    0 ≤ parityKernel a r := by
  have he : Real.exp (-2 * r) < 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  exact div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr he.le)

/-- Left sampling pays the kernel singularity before integrating the error.
The sample energy and the kernel cell mass are the original exact integrals. -/
theorem gamma_cell_left_sampling_error (a : ℕ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R u v δ : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hu : 0 < u) (huv : u ≤ v) (hvR : v ≤ R)
    (hδ : 0 ≤ δ) (hwidth : v - u ≤ δ) :
    |(∫ r in Ioc u v, gammaCorrectionDensity a f r) -
      kernelCellMass a u v * energy (fun t => f (t + u) - f t)| ≤
      2 * headConstant A R L * δ * (v - u) := by
  let Eu : ℝ := energy (fun t => f (t + u) - f t)
  let D : ℝ := (2 * A + R) * (L : ℝ) ^ 2
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have hk : IntegrableOn (parityKernel a) (Ioc u v) :=
    (parityKernel_integrableOn_tail a hu).mono_set (fun _ hr => hr.1)
  have hg : IntegrableOn (gammaCorrectionDensity a f) (Ioc u v) :=
    (gammaCorrection_integrableOn_of_lipschitz a hL hf hA hsupport).mono_set
      (fun _ hr => hu.trans hr.1)
  have hpoint (r : ℝ) (hr : r ∈ Ioc u v) :
      ‖gammaCorrectionDensity a f r - parityKernel a r * Eu‖ ≤
        2 * headConstant A R L * δ := by
    have hr0 : 0 < r := hu.trans hr.1
    have hrR : r ≤ R := hr.2.trans hvR
    have hm : |energy (fun t => f (t + r) - f t) - Eu| ≤
        D * (r + u) * |r - u| :=
      shiftEnergy_difference_le_sum hL hf hA hR hsupport
        ⟨hr0.le, hrR⟩ ⟨hu.le, huv.trans hvR⟩
    have hd : |r - u| ≤ δ := by
      rw [abs_of_nonneg (sub_nonneg.mpr hr.1.le)]
      linarith [hr.2]
    have hm' : D * (r + u) * |r - u| ≤ 2 * D * δ * r := by
      calc
        _ ≤ (D * (2 * r)) * δ :=
          mul_le_mul (mul_le_mul_of_nonneg_left (by linarith [hr.1]) hD) hd
            (abs_nonneg _) (mul_nonneg hD (by positivity))
        _ = _ := by ring
    have hkn := kernel_nonneg a hr0
    calc
      _ = parityKernel a r * |energy (fun t => f (t + r) - f t) - Eu| := by
        rw [gammaCorrectionDensity, ← mul_sub, norm_mul,
          Real.norm_eq_abs, abs_of_nonneg hkn, Real.norm_eq_abs]
      _ ≤ parityKernel a r * (2 * D * δ * r) :=
        mul_le_mul_of_nonneg_left (hm.trans hm') hkn
      _ = (2 * D * δ) * (r * parityKernel a r) := by ring
      _ ≤ (2 * D * δ) * (R + 1 / 2) :=
        mul_le_mul_of_nonneg_left
          ((shift_mul_parityKernel_le a hr0).trans (by linarith)) (by positivity)
      _ = _ := by dsimp [D, headConstant]; ring
  have hb := norm_setIntegral_le_of_norm_le_const
    (μ := (volume : Measure ℝ)) (s := Ioc u v)
    (f := fun r : ℝ => gammaCorrectionDensity a f r - parityKernel a r * Eu)
    (C := 2 * headConstant A R L * δ) (by simp) hpoint
  rw [integral_sub hg (hk.mul_const Eu), integral_mul_const,
    Real.norm_eq_abs, Real.volume_real_Ioc_of_le huv] at hb
  exact hb

/-- Finite disjoint covering gives a lower-cutoff-stable error. No geometric
cell ratio, assumed error certificate, or sign of the full Weil form is used. -/
theorem gamma_finite_left_sampling_error {ι : Type*} (I : Finset ι) (a : ℕ)
    (u v : ι → ℝ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R ε δ : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R) (hε : 0 < ε) (hεR : ε ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hcells : ∀ i ∈ I, 0 < u i ∧ u i ≤ v i ∧ v i ≤ R)
    (hcover : (⋃ i ∈ I, Ioc (u i) (v i)) = Ioc ε R)
    (hdisjoint : Set.Pairwise (↑I)
      (fun i j => Disjoint (Ioc (u i) (v i)) (Ioc (u j) (v j))))
    (hδ : 0 ≤ δ) (hwidth : ∀ i ∈ I, v i - u i ≤ δ) :
    |(∫ r in Ioc ε R, gammaCorrectionDensity a f r) -
      ∑ i ∈ I, kernelCellMass a (u i) (v i) * energy (fun t => f (t + u i) - f t)| ≤
      2 * headConstant A R L * δ * (R - ε) := by
  classical
  have hg (i : ι) (hi : i ∈ I) :
      IntegrableOn (gammaCorrectionDensity a f) (Ioc (u i) (v i)) :=
    (gammaCorrection_integrableOn_of_lipschitz a hL hf hA hsupport).mono_set
      (fun _ hr => (hcells i hi).1.trans hr.1)
  have hsum : (∫ r in Ioc ε R, gammaCorrectionDensity a f r) =
      ∑ i ∈ I, ∫ r in Ioc (u i) (v i), gammaCorrectionDensity a f r := by
    rw [← hcover]
    exact integral_biUnion_finset I (fun _ _ => measurableSet_Ioc) hdisjoint hg
  have hlength : R - ε = ∑ i ∈ I, (v i - u i) := by
    calc
      _ = ∫ _r in Ioc ε R, (1 : ℝ) := by
        rw [setIntegral_const, Real.volume_real_Ioc_of_le hεR, smul_eq_mul, mul_one]
      _ = ∑ i ∈ I, ∫ _r in Ioc (u i) (v i), (1 : ℝ) := by
        rw [← hcover]
        exact integral_biUnion_finset I (fun _ _ => measurableSet_Ioc) hdisjoint
          (fun _ _ => integrableOn_const (by simp))
      _ = _ := by
        apply Finset.sum_congr rfl
        intro i hi
        rw [setIntegral_const, Real.volume_real_Ioc_of_le (hcells i hi).2.1,
          smul_eq_mul, mul_one]
  calc
    _ = |∑ i ∈ I, ((∫ r in Ioc (u i) (v i), gammaCorrectionDensity a f r) -
        kernelCellMass a (u i) (v i) * energy (fun t => f (t + u i) - f t))| := by
      rw [hsum, Finset.sum_sub_distrib]
    _ ≤ ∑ i ∈ I, |(∫ r in Ioc (u i) (v i), gammaCorrectionDensity a f r) -
        kernelCellMass a (u i) (v i) * energy (fun t => f (t + u i) - f t)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ I, 2 * headConstant A R L * δ * (v i - u i) := by
      apply Finset.sum_le_sum
      intro i hi
      exact gamma_cell_left_sampling_error a hL hf hA hR hsupport
        (hcells i hi).1 (hcells i hi).2.1 (hcells i hi).2.2 hδ (hwidth i hi)
    _ = _ := by rw [← Finset.mul_sum, ← hlength]

/-- Return to the unchanged primitive nonprincipal arithmetic value, with
both gamma endpoint budgets and the new outer error. Zeta is not substituted. -/
theorem primitiveArithmeticValue_left_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {ι : Type*} (I : Finset ι) (u v : ι → ℝ) (n : ℕ)
    {f : ℝ → ℂ} {L : ℝ≥0} (hL : LipschitzWith L f) (hf : MemLp f 2 volume)
    {A R ε δ : ℝ} (hA : 0 ≤ A) (hR : 0 < R) (hε : 0 < ε) (hεR : ε ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (hcells : ∀ i ∈ I, 0 < u i ∧ u i ≤ v i ∧ v i ≤ R)
    (hcover : (⋃ i ∈ I, Ioc (u i) (v i)) = Ioc ε R)
    (hdisjoint : Set.Pairwise (↑I)
      (fun i j => Disjoint (Ioc (u i) (v i)) (Ioc (u j) (v j))))
    (hδ : 0 ≤ δ) (hwidth : ∀ i ∈ I, v i - u i ≤ δ) :
    let sampled := (gammaConstant q (gammaParity χ) + tailPrefix (gammaParity χ) n R) *
      energy f + (∑ i ∈ I, kernelCellMass (gammaParity χ) (u i) (v i) *
        energy (fun t => f (t + u i) - f t)) -
      twistedPrime A χ (fun k => correlation f (Real.log (k : ℝ)))
    let error := 2 * headConstant A R L * δ * (R - ε)
    sampled - error ≤ primitiveArithmeticValue χ hprimitive hnonprincipal A f ∧
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤ sampled + error +
        headConstant A R L * ε ^ 2 / 2 + tailUpper (gammaParity χ + 2 * n) R * energy f := by
  have hout := gamma_finite_left_sampling_error I (gammaParity χ) u v
    hL hf hA hR.le hε hεR hsupport hcells hcover hdisjoint hδ hwidth
  have hends := primitiveArithmeticValue_twoCutoff_enclosure χ hprimitive hnonprincipal n
    hL hf hA hR hsupport hcut hε.le hεR
  have hout' := abs_le.mp hout
  dsimp only at hends ⊢
  constructor <;> linarith [hends.1, hends.2, hout'.1, hout'.2]

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaEndpointQuadrature
