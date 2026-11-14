/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaHeadIntegrability

/-!
# Weighted quadrature for the original physical Weil gamma correction

The exact positive kernel is integrated over each cell. Only the original
translation energy is sampled. This avoids differentiating the singular
kernel and returns directly to the existing two-endpoint arithmetic enclosure.

For a complex L-Lipschitz L2 source supported in [-A,A], with A,R >= 0,
the squared shift differences on 0 <= r,s <= R have a common physical support
[-A-R,A]. The reverse triangle inequality gives the actual modulus
  |E(tau_r f-f)-E(tau_s f-f)| <= 2*(2*A+R)*L^2*R*|r-s|.
For 0<u<=v, the EXACT cell weight is
  integral_(u,v] K_a = (tailMass a u - tailMass a v)/2.
Each sampled cell has error at most its positive weight times the modulus
constant times the sampling radius. Finite disjoint additivity, not an
assumed quadrature certificate, then gives the full finite-cell estimate.

The cell enclosures retain both endpoint remainders. The final primitive
NONPRINCIPAL consumer keeps conductor/parity and every original signed prime
power, with Re(conj(chi(n))*correlation(f,log n)). The exact inner L2 sample
energies are still integrals. Their numerical evaluation, transcendental
rounding and prime evaluation are NOT certified by this outer quadrature.
No H1 density, full explicit formula, all-test sign, zeta pole deletion,
RH/GRH or universal positive-certificate existence is asserted.

Native source inspected on main after 935c5ee3609bae72893c264ef33ddcfab500ee78;
readback 69e41c27fb6ba3518728fad8d0629a564bfc68b1. Lean v4.34.1,
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Standard reverse triangle,
Lebesgue comparison and weighted product-integration arguments; no novelty
claimed. Individual source-local provenance records give full arguments,
source bindings, hostile cases and the actual unrun verification status.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators NNReal

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaWeightedQuadrature

open OddRootProjection SourcePrimeCorrelation ExactGammaTail CharacterWindow
open GammaHeadIntegrability

/-- Modulus coefficient for the actual whole-line translation energy. -/
def shiftEnergySlope (A R : ℝ) (L : ℝ≥0) : ℝ :=
  2 * (2 * A + R) * (L : ℝ) ^ 2 * R

private theorem slope_nonneg {A R : ℝ} (hA : 0 ≤ A) (hR : 0 ≤ R) (L : ℝ≥0) :
    0 ≤ shiftEnergySlope A R L := by
  unfold shiftEnergySlope
  positivity

private theorem squared_norm_difference_le (z w : ℂ) {M d : ℝ}
    (hd : 0 ≤ d) (hz : ‖z‖ ≤ M) (hw : ‖w‖ ≤ M) (hzw : ‖z - w‖ ≤ d) :
    |‖z‖ ^ 2 - ‖w‖ ^ 2| ≤ 2 * M * d := by
  have hdiff := (abs_norm_sub_norm_le z w).trans hzw
  have hid : ‖z‖ ^ 2 - ‖w‖ ^ 2 = (‖z‖ - ‖w‖) * (‖z‖ + ‖w‖) := by ring
  rw [hid, abs_mul, abs_of_nonneg (add_nonneg (norm_nonneg _) (norm_nonneg _))]
  calc
    _ ≤ d * (2 * M) := mul_le_mul hdiff (by linarith)
      (add_nonneg (norm_nonneg _) (norm_nonneg _)) hd
    _ = _ := by ring

/-- Pointwise modulus before integrating; complex phases are not projected away. -/
theorem shiftSquare_difference_le {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) {R r s : ℝ}
    (hr : r ∈ Icc (0 : ℝ) R) (hs : s ∈ Icc (0 : ℝ) R) (t : ℝ) :
    |‖f (t + r) - f t‖ ^ 2 - ‖f (t + s) - f t‖ ^ 2| ≤
      2 * (L : ℝ) ^ 2 * R * |r - s| := by
  have hb (x : ℝ) (hx : x ∈ Icc (0 : ℝ) R) :
      ‖f (t + x) - f t‖ ≤ (L : ℝ) * R := by
    calc
      _ ≤ (L : ℝ) * ‖(t + x) - t‖ := hL.norm_sub_le _ _
      _ = (L : ℝ) * x := by
        rw [add_sub_cancel_left, Real.norm_eq_abs, abs_of_nonneg hx.1]
      _ ≤ _ := mul_le_mul_of_nonneg_left hx.2 L.coe_nonneg
  have hd : ‖(f (t + r) - f t) - (f (t + s) - f t)‖ ≤
      (L : ℝ) * |r - s| := by
    calc
      _ = ‖f (t + r) - f (t + s)‖ := by congr 1; abel
      _ ≤ (L : ℝ) * ‖(t + r) - (t + s)‖ := hL.norm_sub_le _ _
      _ = _ := by
        rw [show (t + r) - (t + s) = r - s by ring, Real.norm_eq_abs]
  have h := squared_norm_difference_le (f (t + r) - f t) (f (t + s) - f t)
    (mul_nonneg L.coe_nonneg (abs_nonneg _)) (hb r hr) (hb s hs) hd
  calc
    _ ≤ 2 * ((L : ℝ) * R) * ((L : ℝ) * |r - s|) := h
    _ = _ := by ring

/-- The required modulus is derived for the ORIGINAL L2 energy, not postulated. -/
theorem shiftEnergy_difference_le {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R r s : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hr : r ∈ Icc (0 : ℝ) R) (hs : s ∈ Icc (0 : ℝ) R) :
    |energy (fun t => f (t + r) - f t) - energy (fun t => f (t + s) - f t)| ≤
      shiftEnergySlope A R L * |r - s| := by
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
    (C := 2 * (L : ℝ) ^ 2 * R * |r - s|) (by simp)
    (fun t _ => by
      rw [Real.norm_eq_abs]
      exact shiftSquare_difference_le hL hr hs t)
  rw [hloc, Real.norm_eq_abs, Real.volume_real_Icc_of_le (by linarith)] at hint
  calc
    _ ≤ (2 * (L : ℝ) ^ 2 * R * |r - s|) * (A - (-A - R)) := hint
    _ = _ := by unfold shiftEnergySlope; ring

/-- Exact weight of a physical translation cell, not a point sample of the kernel. -/
def kernelCellMass (a : ℕ) (u v : ℝ) : ℝ :=
  ∫ r in Ioc u v, parityKernel a r

private theorem kernel_nonneg (a : ℕ) {r : ℝ} (hr : 0 < r) :
    0 ≤ parityKernel a r := by
  have he : Real.exp (-2 * r) < 1 := by
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  exact div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr he.le)

private theorem kernel_cell_integrable (a : ℕ) {u v : ℝ} (hu : 0 < u) :
    IntegrableOn (parityKernel a) (Ioc u v) :=
  (parityKernel_integrableOn_tail a hu).mono_set (fun _ hr => hr.1)

theorem kernelCellMass_nonneg (a : ℕ) {u v : ℝ} (hu : 0 < u) :
    0 ≤ kernelCellMass a u v := by
  apply integral_nonneg_of_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioc] with r hr
  exact kernel_nonneg a (hu.trans hr.1)

/-- Source-exact evaluation by the existing tail masses; valid also for a zero cell. -/
theorem kernelCellMass_eq_tail_sub (a : ℕ) {u v : ℝ} (hu : 0 < u) (huv : u ≤ v) :
    kernelCellMass a u v = (tailMass a u - tailMass a v) / 2 := by
  have hv' := parityKernel_integrableOn_tail a (hu.trans_le huv)
  have hc := kernel_cell_integrable (v := v) a hu
  have hd : Disjoint (Ioc u v) (Ioi v) := by
    apply Set.disjoint_left.mpr
    intro r hr hr'
    exact (not_lt_of_ge hr.2) hr'
  have hset : Ioc u v ∪ Ioi v = Ioi u := by
    ext r
    constructor
    · rintro (hr | hr)
      · exact hr.1
      · exact huv.trans_lt hr
    · intro hr
      by_cases hv : r ≤ v
      · exact Or.inl ⟨hr, hv⟩
      · exact Or.inr (lt_of_not_ge hv)
  have hsplit : (∫ r in Ioi u, parityKernel a r) =
      (∫ r in Ioc u v, parityKernel a r) + ∫ r in Ioi v, parityKernel a r := by
    rw [← hset]
    exact setIntegral_union hd measurableSet_Ioi hc hv'
  unfold kernelCellMass tailMass
  linarith

/-- Both endpoint remainders are charged when enclosing an exact cell weight.
Exponential evaluation itself still requires certified rounding. -/
theorem kernelCellMass_finite_enclosure (a n m : ℕ) {u v : ℝ}
    (hu : 0 < u) (huv : u ≤ v) :
    max 0 ((tailPrefix a n u - tailPrefix a m v - tailUpper (a + 2 * m) v) / 2) ≤
        kernelCellMass a u v ∧
      kernelCellMass a u v ≤
        (tailPrefix a n u + tailUpper (a + 2 * n) u - tailPrefix a m v) / 2 := by
  have heq := kernelCellMass_eq_tail_sub a hu huv
  have hlu := tailMass_finite_enclosure a n hu
  have hlv := tailMass_finite_enclosure a m (hu.trans_le huv)
  constructor
  · apply max_le (kernelCellMass_nonneg a hu)
    linarith [hlu.1, hlv.2]
  · linarith [hlu.2, hlv.1]

/-- Weighted one-cell rule. Its modulus premise is only the geometric distance
from the selected sample; the analytic modulus was proved above. -/
theorem gamma_cell_sampling_error (a : ℕ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R u v s δ : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hu : 0 < u) (hvR : v ≤ R) (hs : s ∈ Icc u v)
    (hδ : 0 ≤ δ) (hmesh : ∀ r ∈ Ioc u v, |r - s| ≤ δ) :
    |(∫ r in Ioc u v, gammaCorrectionDensity a f r) -
      kernelCellMass a u v * energy (fun t => f (t + s) - f t)| ≤
      shiftEnergySlope A R L * δ * kernelCellMass a u v := by
  let Es : ℝ := energy (fun t => f (t + s) - f t)
  have hk := kernel_cell_integrable (v := v) a hu
  have hg : IntegrableOn (gammaCorrectionDensity a f) (Ioc u v) :=
    (gammaCorrection_integrableOn_of_lipschitz a hL hf hA hsupport).mono_set
      (fun _ hr => hu.trans hr.1)
  have he := hg.sub (hk.mul_const Es)
  have hm := hk.const_mul (shiftEnergySlope A R L * δ)
  have hpoint (r : ℝ) (hr : r ∈ Ioc u v) :
      ‖gammaCorrectionDensity a f r - parityKernel a r * Es‖ ≤
        (shiftEnergySlope A R L * δ) * parityKernel a r := by
    have hmod := shiftEnergy_difference_le hL hf hA hR hsupport
      (show r ∈ Icc (0 : ℝ) R from ⟨(hu.trans hr.1).le, hr.2.trans hvR⟩)
      (show s ∈ Icc (0 : ℝ) R from ⟨(hu.trans_le hs.1).le, hs.2.trans hvR⟩)
    have hmod' := hmod.trans
      (mul_le_mul_of_nonneg_left (hmesh r hr) (slope_nonneg hA hR L))
    have hkn := kernel_nonneg a (hu.trans hr.1)
    calc
      _ = parityKernel a r *
          |energy (fun t => f (t + r) - f t) - Es| := by
        rw [gammaCorrectionDensity, ← mul_sub, norm_mul,
          Real.norm_eq_abs, abs_of_nonneg hkn, Real.norm_eq_abs]
      _ ≤ parityKernel a r * (shiftEnergySlope A R L * δ) :=
        mul_le_mul_of_nonneg_left hmod' hkn
      _ = _ := by ring
  have hbound : ‖∫ r in Ioc u v,
      (gammaCorrectionDensity a f r - parityKernel a r * Es)‖ ≤
      ∫ r in Ioc u v, (shiftEnergySlope A R L * δ) * parityKernel a r := by
    apply (norm_integral_le_integral_norm _).trans
    exact setIntegral_mono_on he.norm hm measurableSet_Ioc hpoint
  rw [integral_sub hg (hk.mul_const Es), integral_mul_const,
    integral_const_mul, Real.norm_eq_abs] at hbound
  exact hbound

/-- Midpoint sampling has half the cell-width radius. No derivative of K_a is used. -/
theorem gamma_cell_midpoint_error (a : ℕ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R u v : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hu : 0 < u) (huv : u ≤ v) (hvR : v ≤ R) :
    |(∫ r in Ioc u v, gammaCorrectionDensity a f r) -
      kernelCellMass a u v * energy (fun t => f (t + (u + v) / 2) - f t)| ≤
      shiftEnergySlope A R L * ((v - u) / 2) * kernelCellMass a u v := by
  apply gamma_cell_sampling_error a hL hf hA hR hsupport hu hvR
    (show (u + v) / 2 ∈ Icc u v from ⟨by linarith, by linarith⟩)
    (by linarith)
  intro r hr
  apply abs_le.mpr
  constructor <;> linarith [hr.1, hr.2]

/-- Actual finite outer quadrature on any explicitly covering disjoint cell family.
The sample energies are genuine whole-line integrals, not yet numerical evaluations. -/
theorem gamma_finite_sampling_error {ι : Type*} (I : Finset ι) (a : ℕ)
    (u v s : ι → ℝ) {f : ℝ → ℂ} {L : ℝ≥0}
    (hL : LipschitzWith L f) (hf : MemLp f 2 volume) {A R ε δ : ℝ}
    (hA : 0 ≤ A) (hR : 0 ≤ R) (hε : 0 < ε)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hcells : ∀ i ∈ I, 0 < u i ∧ v i ≤ R ∧ s i ∈ Icc (u i) (v i))
    (hcover : (⋃ i ∈ I, Ioc (u i) (v i)) = Ioc ε R)
    (hdisjoint : Set.Pairwise (↑I) (fun i j => Disjoint (Ioc (u i) (v i)) (Ioc (u j) (v j))))
    (hδ : 0 ≤ δ) (hmesh : ∀ i ∈ I, ∀ r ∈ Ioc (u i) (v i), |r - s i| ≤ δ) :
    |(∫ r in Ioc ε R, gammaCorrectionDensity a f r) -
      ∑ i ∈ I, kernelCellMass a (u i) (v i) * energy (fun t => f (t + s i) - f t)| ≤
      shiftEnergySlope A R L * δ * kernelCellMass a ε R := by
  classical
  have harch := gammaCorrection_integrableOn_of_lipschitz a hL hf hA hsupport
  have hg (i : ι) (hi : i ∈ I) :
      IntegrableOn (gammaCorrectionDensity a f) (Ioc (u i) (v i)) :=
    harch.mono_set (fun _ hr => (hcells i hi).1.trans hr.1)
  have hsum : (∫ r in Ioc ε R, gammaCorrectionDensity a f r) =
      ∑ i ∈ I, ∫ r in Ioc (u i) (v i), gammaCorrectionDensity a f r := by
    rw [← hcover]
    exact integral_biUnion_finset I (fun _ _ => measurableSet_Ioc) hdisjoint hg
  have hmass : kernelCellMass a ε R = ∑ i ∈ I, kernelCellMass a (u i) (v i) := by
    unfold kernelCellMass
    rw [← hcover]
    exact integral_biUnion_finset I (fun _ _ => measurableSet_Ioc) hdisjoint
      (fun i hi => kernel_cell_integrable a (hcells i hi).1)
  calc
    _ = |∑ i ∈ I, ((∫ r in Ioc (u i) (v i), gammaCorrectionDensity a f r) -
        kernelCellMass a (u i) (v i) * energy (fun t => f (t + s i) - f t))| := by
      rw [hsum, Finset.sum_sub_distrib]
    _ ≤ ∑ i ∈ I, |(∫ r in Ioc (u i) (v i), gammaCorrectionDensity a f r) -
        kernelCellMass a (u i) (v i) * energy (fun t => f (t + s i) - f t)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i ∈ I, shiftEnergySlope A R L * δ * kernelCellMass a (u i) (v i) := by
      apply Finset.sum_le_sum
      intro i hi
      exact gamma_cell_sampling_error a hL hf hA hR hsupport
        (hcells i hi).1 (hcells i hi).2.1 (hcells i hi).2.2 hδ (hmesh i hi)
    _ = _ := by rw [← Finset.mul_sum, ← hmass]

/-- Return to the unchanged arithmetic source with the outer quadrature error
and both endpoint budgets. This is not a universal positivity certificate. -/
theorem primitiveArithmeticValue_weighted_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {ι : Type*} (I : Finset ι) (u v s : ι → ℝ) (n : ℕ)
    {f : ℝ → ℂ} {L : ℝ≥0} (hL : LipschitzWith L f) (hf : MemLp f 2 volume)
    {A R ε δ : ℝ} (hA : 0 ≤ A) (hR : 0 < R) (hε : 0 < ε) (hεR : ε ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (hcells : ∀ i ∈ I, 0 < u i ∧ v i ≤ R ∧ s i ∈ Icc (u i) (v i))
    (hcover : (⋃ i ∈ I, Ioc (u i) (v i)) = Ioc ε R)
    (hdisjoint : Set.Pairwise (↑I) (fun i j => Disjoint (Ioc (u i) (v i)) (Ioc (u j) (v j))))
    (hδ : 0 ≤ δ) (hmesh : ∀ i ∈ I, ∀ r ∈ Ioc (u i) (v i), |r - s i| ≤ δ) :
    let sampled := (gammaConstant q (gammaParity χ) + tailPrefix (gammaParity χ) n R) *
      energy f + (∑ i ∈ I, kernelCellMass (gammaParity χ) (u i) (v i) *
        energy (fun t => f (t + s i) - f t)) -
      twistedPrime A χ (fun k => correlation f (Real.log (k : ℝ)))
    let error := shiftEnergySlope A R L * δ * kernelCellMass (gammaParity χ) ε R
    sampled - error ≤ primitiveArithmeticValue χ hprimitive hnonprincipal A f ∧
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤ sampled + error +
        headConstant A R L * ε ^ 2 / 2 + tailUpper (gammaParity χ + 2 * n) R * energy f := by
  have hout := gamma_finite_sampling_error I (gammaParity χ) u v s hL hf hA hR.le hε
    hsupport hcells hcover hdisjoint hδ hmesh
  have hends := primitiveArithmeticValue_twoCutoff_enclosure χ hprimitive hnonprincipal n
    hL hf hA hR hsupport hcut hε.le hεR
  have hout' := abs_le.mp hout
  dsimp only at hends ⊢
  constructor <;> linarith [hends.1, hends.2, hout'.1, hout'.2]


/-!
## Finite exponential cell coefficients returned to the original arithmetic value

The existing lower/upper gamma-cell mass bounds multiply nonnegative original
translation energies and sum without replacing any signed prime-power term.
The finite upper bound for the total cell mass also pays the outer sampling error.
The new arithmetic enclosure is a direct algebraic consequence of the source
kernelCellMass_finite_enclosure and primitiveArithmeticValue_weighted_enclosure.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
Exact whole-line sample energies and real transcendental expressions remain;
no numeric rounding, zeta pole, completed explicit formula, density, universal
test-class positivity, RH or GRH result is asserted.
-/

/-- Finite lower gamma-cell mass bound, retaining the upper-endpoint remainder. -/
def cellMassLower (a n m : ℕ) (u v : ℝ) : ℝ :=
  max 0 ((tailPrefix a n u - tailPrefix a m v -
    tailUpper (a + 2 * m) v) / 2)

/-- Finite upper gamma-cell mass bound, retaining the lower-endpoint remainder. -/
def cellMassUpper (a n m : ℕ) (u v : ℝ) : ℝ :=
  (tailPrefix a n u + tailUpper (a + 2 * n) u -
    tailPrefix a m v) / 2

/-- Source-return enclosure: the untouched primitive nonprincipal arithmetic
value, not the full completed L-function form. Every cell and total error mass
is bounded using finite exponential prefixes with both endpoint remainders.
The inner sampled whole-line energies remain exact integrals. -/
theorem primitiveArithmeticValue_finiteCellCoefficient_enclosure
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {ι : Type*} (I : Finset ι) (u v s : ι → ℝ)
    (nTail nTotal mTotal : ℕ) (nCell mCell : ι → ℕ)
    {f : ℝ → ℂ} {L : ℝ≥0} (hL : LipschitzWith L f) (hf : MemLp f 2 volume)
    {A R ε δ : ℝ} (hA : 0 ≤ A) (hR : 0 < R) (hε : 0 < ε) (hεR : ε ≤ R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (hcells : ∀ i ∈ I, 0 < u i ∧ v i ≤ R ∧ s i ∈ Icc (u i) (v i))
    (hcover : (⋃ i ∈ I, Ioc (u i) (v i)) = Ioc ε R)
    (hdisjoint : Set.Pairwise (↑I)
      (fun i j => Disjoint (Ioc (u i) (v i)) (Ioc (u j) (v j))))
    (hδ : 0 ≤ δ)
    (hmesh : ∀ i ∈ I, ∀ r ∈ Ioc (u i) (v i), |r - s i| ≤ δ) :
    let a := gammaParity χ
    let base := (gammaConstant q a + tailPrefix a nTail R) * energy f
    let prime := twistedPrime A χ (fun k => correlation f (Real.log (k : ℝ)))
    let error := shiftEnergySlope A R L * δ * cellMassUpper a nTotal mTotal ε R
    base + (∑ i ∈ I, cellMassLower a (nCell i) (mCell i) (u i) (v i) *
      energy (fun t => f (t + s i) - f t)) - prime - error ≤
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ∧
    primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤
      base + (∑ i ∈ I, cellMassUpper a (nCell i) (mCell i) (u i) (v i) *
        energy (fun t => f (t + s i) - f t)) - prime + error +
        headConstant A R L * ε ^ 2 / 2 +
        tailUpper (a + 2 * nTail) R * energy f := by
  classical
  let a : ℕ := gammaParity χ
  let base : ℝ := (gammaConstant q a + tailPrefix a nTail R) * energy f
  let prime : ℝ := twistedPrime A χ (fun k => correlation f (Real.log (k : ℝ)))
  let cap : ℝ := cellMassUpper a nTotal mTotal ε R
  let error : ℝ := shiftEnergySlope A R L * δ * cap
  let E : ι → ℝ := fun i => energy (fun t => f (t + s i) - f t)
  let M : ι → ℝ := fun i => kernelCellMass a (u i) (v i)
  let lo : ι → ℝ := fun i => cellMassLower a (nCell i) (mCell i) (u i) (v i)
  let hi : ι → ℝ := fun i => cellMassUpper a (nCell i) (mCell i) (u i) (v i)
  change
    base + (∑ i ∈ I, lo i * E i) - prime - error ≤
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ∧
    primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤
      base + (∑ i ∈ I, hi i * E i) - prime + error +
        headConstant A R L * ε ^ 2 / 2 +
        tailUpper (a + 2 * nTail) R * energy f
  have hE (i : ι) : 0 ≤ E i := by
    change 0 ≤ energy (fun t => f (t + s i) - f t)
    exact integral_nonneg (fun _ => sq_nonneg _)
  have hcell (i : ι) (hmem : i ∈ I) : lo i ≤ M i ∧ M i ≤ hi i := by
    have huv : u i ≤ v i :=
      (hcells i hmem).2.2.1.trans (hcells i hmem).2.2.2
    simpa only [lo, M, hi, cellMassLower, cellMassUpper] using
      (kernelCellMass_finite_enclosure a (nCell i) (mCell i)
        (hcells i hmem).1 huv)
  have hLower : (∑ i ∈ I, lo i * E i) ≤ ∑ i ∈ I, M i * E i := by
    apply Finset.sum_le_sum
    intro i hmem
    exact mul_le_mul_of_nonneg_right (hcell i hmem).1 (hE i)
  have hUpper : (∑ i ∈ I, M i * E i) ≤ ∑ i ∈ I, hi i * E i := by
    apply Finset.sum_le_sum
    intro i hmem
    exact mul_le_mul_of_nonneg_right (hcell i hmem).2 (hE i)
  have hcap : kernelCellMass a ε R ≤ cap := by
    simpa only [cap, cellMassUpper] using
      (kernelCellMass_finite_enclosure a nTotal mTotal hε hεR).2
  have hErr :
      shiftEnergySlope A R L * δ * kernelCellMass a ε R ≤ error := by
    exact mul_le_mul_of_nonneg_left hcap
      (mul_nonneg (slope_nonneg hA hR.le L) hδ)
  have hsource := primitiveArithmeticValue_weighted_enclosure χ
    hprimitive hnonprincipal I u v s nTail hL hf hA hR hε hεR
    hsupport hcut hcells hcover hdisjoint hδ hmesh
  change
    base + (∑ i ∈ I, M i * E i) - prime -
      shiftEnergySlope A R L * δ * kernelCellMass a ε R ≤
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ∧
    primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤
      base + (∑ i ∈ I, M i * E i) - prime +
        shiftEnergySlope A R L * δ * kernelCellMass a ε R +
        headConstant A R L * ε ^ 2 / 2 +
        tailUpper (a + 2 * nTail) R * energy f at hsource
  constructor
  · calc
      base + (∑ i ∈ I, lo i * E i) - prime - error ≤
          base + (∑ i ∈ I, M i * E i) - prime -
            shiftEnergySlope A R L * δ * kernelCellMass a ε R := by
        linarith [hLower, hErr]
      _ ≤ primitiveArithmeticValue χ hprimitive hnonprincipal A f := hsource.1
  · calc
      primitiveArithmeticValue χ hprimitive hnonprincipal A f ≤
          base + (∑ i ∈ I, M i * E i) - prime +
            shiftEnergySlope A R L * δ * kernelCellMass a ε R +
            headConstant A R L * ε ^ 2 / 2 +
            tailUpper (a + 2 * nTail) R * energy f := hsource.2
      _ ≤ base + (∑ i ∈ I, hi i * E i) - prime + error +
            headConstant A R L * ε ^ 2 / 2 +
            tailUpper (a + 2 * nTail) R * energy f := by
        linarith [hUpper, hErr]

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaWeightedQuadrature
