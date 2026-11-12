/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaTailCompensation

/-!
# Exact physical translation tails of the original Weil gamma correction

Reuse the original `parityKernel`, `energy`, `gammaCorrectionDensity`,
`twistedPrime`, and `primitiveArithmeticValue`. In particular, the signed
character term retains `Re (conj (chi n) * correlation f (log n))`.

For R > 0 the kernel tail is genuinely integrable. Beyond twice the physical
support radius, the existing `shiftEnergy_eq_two_of_cutoff` evaluates the
whole diagonal tail, not only its first exponential lower bound. The exact
recurrence K_a = exp(-(a+1/2)r) + K_(a+2) supplies finite evaluation with a
rigorous remainder. The same support argument is extended to arbitrary
complex pairs: the matrix correction is the actual L2 mass matrix times the
scalar tail, with no orthonormality assumption.

The head-plus-tail identity returns to the original primitive arithmetic
value. Full gamma integrability at zero remains explicit. This is NOT a
completed-L-function explicit formula, a signed-prime estimate, an all-window
certificate, or RH/GRH. The generic gamma result also applies to zeta, but no
zeta pole is removed or absorbed into a positive term here. This physical
translation cutoff is not a Fourier-frequency cutoff.

Source inspection: grwtsk/math@21c3956913b469693e5acaf5bc6bf05c34c78196.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Mathematical context: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20), via the existing native source.
The arguments here are elementary source-local consequences, not imported
Yang--Mills theorems and not claims of mathematical novelty. See the adjacent
provenance records and issue #1789 for precise scope and unrun checks.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail

open OddRootProjection SourcePrimeCorrelation GammaTailCompensation CharacterWindow

/-- Twice the entire physical gamma-kernel tail. Only R > 0 is used below. -/
def tailMass (a : ℕ) (R : ℝ) : ℝ :=
  2 * ∫ r in Ioi R, parityKernel a r

/-- Elementary upper enclosure for `tailMass`; not a Fourier-tail budget. -/
def tailUpper (a : ℕ) (R : ℝ) : ℝ :=
  2 * Real.exp (-((a : ℝ) + 1 / 2) * R) /
    (((a : ℝ) + 1 / 2) * (1 - Real.exp (-2 * R)))

/-- Finite exponential prefix, with the original parity index retained. -/
def tailPrefix (a n : ℕ) (R : ℝ) : ℝ :=
  ∑ j ∈ Finset.range n,
    2 * Real.exp (-(((a + 2 * j : ℕ) : ℝ) + 1 / 2) * R) /
      (((a + 2 * j : ℕ) : ℝ) + 1 / 2)

private theorem denominator_pos {r : ℝ} (hr : 0 < r) :
    0 < 1 - Real.exp (-2 * r) := by
  have h : Real.exp (-2 * r) < Real.exp 0 :=
    Real.exp_lt_exp.mpr (by linarith)
  simpa only [Real.exp_zero] using sub_pos.mpr h

private theorem kernel_nonneg (a : ℕ) {r : ℝ} (hr : 0 < r) :
    0 ≤ parityKernel a r :=
  div_nonneg (Real.exp_nonneg _) (denominator_pos hr).le

/-- The denominator is uniformly separated from zero on each positive tail. -/
theorem parityKernel_le_tail_majorant (a : ℕ) {R r : ℝ}
    (hR : 0 < R) (hr : R ≤ r) :
    parityKernel a r ≤
      Real.exp (-((a : ℝ) + 1 / 2) * r) / (1 - Real.exp (-2 * R)) := by
  have hden : 1 - Real.exp (-2 * R) ≤ 1 - Real.exp (-2 * r) := by
    have hexp := Real.exp_le_exp.mpr (show -2 * r ≤ -2 * R by linarith)
    linarith
  exact div_le_div_of_nonneg_left (Real.exp_nonneg _) (denominator_pos hR) hden

/-- Actual integrability of the unchanged gamma kernel away from zero. -/
theorem parityKernel_integrableOn_tail (a : ℕ) {R : ℝ} (hR : 0 < R) :
    IntegrableOn (parityKernel a) (Ioi R) := by
  have hrate : -((a : ℝ) + 1 / 2) < 0 := by
    have ha := Nat.cast_nonneg (α := ℝ) a
    linarith
  have hmajorant :=
    (integrableOn_exp_mul_Ioi hrate R).div_const (1 - Real.exp (-2 * R))
  have hm : Measurable (parityKernel a) := by
    unfold parityKernel
    fun_prop
  apply hmajorant.mono' hm.aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  rw [Real.norm_eq_abs, abs_of_nonneg (kernel_nonneg a (hR.trans hr))]
  exact parityKernel_le_tail_majorant a hR hr.le

/-- Both sides are explicit; the upper denominator retains the geometric tail. -/
theorem tailMass_bounds (a : ℕ) {R : ℝ} (hR : 0 < R) :
    2 * Real.exp (-((a : ℝ) + 1 / 2) * R) / ((a : ℝ) + 1 / 2) ≤
        tailMass a R ∧
      tailMass a R ≤ tailUpper a R := by
  let b : ℝ := (a : ℝ) + 1 / 2
  have hb : 0 < b := by dsimp [b]; positivity
  have he : IntegrableOn (fun r : ℝ => Real.exp (-b * r)) (Ioi R) :=
    integrableOn_exp_mul_Ioi (a := -b) (by linarith) R
  have hk := parityKernel_integrableOn_tail a hR
  have hlo : (∫ r in Ioi R, Real.exp (-b * r)) ≤
      ∫ r in Ioi R, parityKernel a r := by
    apply setIntegral_mono_on he hk measurableSet_Ioi
    intro r hr
    exact parityKernel_ge_exp a (hR.trans hr)
  have hhi : (∫ r in Ioi R, parityKernel a r) ≤
      ∫ r in Ioi R, Real.exp (-b * r) / (1 - Real.exp (-2 * R)) := by
    apply setIntegral_mono_on hk (he.div_const _) measurableSet_Ioi
    intro r hr
    exact parityKernel_le_tail_majorant a hR hr.le
  have heval : (∫ r in Ioi R, Real.exp (-b * r)) = Real.exp (-b * R) / b := by
    rw [integral_exp_mul_Ioi (a := -b) (by linarith) R]
    ring
  rw [heval] at hlo
  rw [integral_div, heval] at hhi
  constructor
  · unfold tailMass
    change 2 * Real.exp (-b * R) / b ≤ _
    calc
      _ = 2 * (Real.exp (-b * R) / b) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left hlo (by norm_num)
  · unfold tailMass tailUpper
    change 2 * (∫ r in Ioi R, parityKernel a r) ≤
      2 * Real.exp (-b * R) / (b * (1 - Real.exp (-2 * R)))
    calc
      _ ≤ 2 * ((Real.exp (-b * R) / b) / (1 - Real.exp (-2 * R))) := by
        linarith
      _ = _ := by ring

theorem tailMass_pos (a : ℕ) {R : ℝ} (hR : 0 < R) : 0 < tailMass a R := by
  have hpos : 0 <
      2 * Real.exp (-((a : ℝ) + 1 / 2) * R) / ((a : ℝ) + 1 / 2) := by
    positivity
  exact hpos.trans_le (tailMass_bounds a hR).1

/-- Exact one-step kernel extraction, before any integration. -/
theorem parityKernel_step (a : ℕ) {r : ℝ} (hr : 0 < r) :
    parityKernel a r = Real.exp (-((a : ℝ) + 1 / 2) * r) +
      parityKernel (a + 2) r := by
  have he : Real.exp (-(((a + 2 : ℕ) : ℝ) + 1 / 2) * r) =
      Real.exp (-((a : ℝ) + 1 / 2) * r) * Real.exp (-2 * r) := by
    rw [← Real.exp_add]
    congr 1
    push_cast
    ring
  unfold parityKernel
  rw [he]
  field_simp [(denominator_pos hr).ne']
  <;> ring

/-- Exact tail recurrence. The parameter a+2 is an auxiliary rate, not a
claim that a Dirichlet character has gamma parity outside {0,1}. -/
theorem tailMass_step (a : ℕ) {R : ℝ} (hR : 0 < R) :
    tailMass a R =
      2 * Real.exp (-((a : ℝ) + 1 / 2) * R) / ((a : ℝ) + 1 / 2) +
        tailMass (a + 2) R := by
  have hrate : -((a : ℝ) + 1 / 2) < 0 := by
    have ha := Nat.cast_nonneg (α := ℝ) a
    linarith
  have he := integrableOn_exp_mul_Ioi hrate R
  have hk := parityKernel_integrableOn_tail (a + 2) hR
  have hid : (∫ r in Ioi R, parityKernel a r) =
      ∫ r in Ioi R,
        Real.exp (-((a : ℝ) + 1 / 2) * r) + parityKernel (a + 2) r := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro r hr
    exact parityKernel_step a (hR.trans hr)
  unfold tailMass
  rw [hid, integral_add he hk, integral_exp_mul_Ioi hrate R]
  ring

/-- Every finite prefix has an exact remainder of the same source-kernel type. -/
theorem tailMass_eq_prefix_add_remainder (a n : ℕ) {R : ℝ} (hR : 0 < R) :
    tailMass a R = tailPrefix a n R + tailMass (a + 2 * n) R := by
  induction n with
  | zero => simp [tailPrefix]
  | succ n ih =>
    have hs := tailMass_step (a + 2 * n) hR
    simp only [tailPrefix, Finset.sum_range_succ] at ih ⊢
    rw [show a + 2 * Nat.succ n = (a + 2 * n) + 2 by omega]
    linarith

/-- A finite evaluation certificate valid for every prefix length, not an
empirical precision rule or a sign certificate for the full Weil form. -/
theorem tailMass_finite_enclosure (a n : ℕ) {R : ℝ} (hR : 0 < R) :
    tailPrefix a n R < tailMass a R ∧
      tailMass a R ≤ tailPrefix a n R + tailUpper (a + 2 * n) R := by
  have heq := tailMass_eq_prefix_add_remainder a n hR
  constructor
  · linarith [tailMass_pos (a + 2 * n) hR]
  · linarith [(tailMass_bounds (a + 2 * n) hR).2]

/-- The original density has an integrable tail even when no regularity
hypothesis at r=0 has been supplied. -/
theorem gammaTail_integrable_and_eq (a : ℕ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) {A R : ℝ} (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R) :
    IntegrableOn (gammaCorrectionDensity a f) (Ioi R) ∧
      (∫ r in Ioi R, gammaCorrectionDensity a f r) = tailMass a R * energy f := by
  have heq (r : ℝ) (hr : r ∈ Ioi R) :
      gammaCorrectionDensity a f r = parityKernel a r * (2 * energy f) := by
    unfold gammaCorrectionDensity
    rw [shiftEnergy_eq_two_of_cutoff hf hsupport (hcut.trans hr.le)]
  constructor
  · exact ((parityKernel_integrableOn_tail a hR).mul_const (2 * energy f)).congr_fun
      (fun r hr => (heq r hr).symm) measurableSet_Ioi
  · calc
      _ = ∫ r in Ioi R, parityKernel a r * (2 * energy f) :=
        setIntegral_congr_fun measurableSet_Ioi heq
      _ = tailMass a R * energy f := by
        rw [integral_mul_const]
        unfold tailMass
        ring

/-- The complete original gamma integral splits into its unchanged head and
an exactly evaluated tail. Integrability at zero is still a genuine premise. -/
theorem gammaCorrectionIntegral_eq_head_add_tail (a : ℕ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) {A R : ℝ} (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (harch : IntegrableOn (gammaCorrectionDensity a f) (Ioi 0)) :
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r) =
      (∫ r in Ioc 0 R, gammaCorrectionDensity a f r) + tailMass a R * energy f := by
  have ht := gammaTail_integrable_and_eq a hf hR hsupport hcut
  have hh : IntegrableOn (gammaCorrectionDensity a f) (Ioc 0 R) :=
    harch.mono_set (fun _ hr => hr.1)
  have hd : Disjoint (Ioc (0 : ℝ) R) (Ioi R) := by
    apply Set.disjoint_left.mpr
    intro r hr hr'
    exact (not_lt_of_ge hr.2) hr'
  have hu : Ioc (0 : ℝ) R ∪ Ioi R = Ioi 0 := by
    ext r
    constructor
    · rintro (hr | hr)
      · exact hr.1
      · exact hR.trans hr
    · intro hr
      by_cases h : r ≤ R
      · exact Or.inl ⟨hr, h⟩
      · exact Or.inr (lt_of_not_ge h)
  calc
    _ = ∫ r in Ioc 0 R ∪ Ioi R, gammaCorrectionDensity a f r := by rw [hu]
    _ = (∫ r in Ioc 0 R, gammaCorrectionDensity a f r) +
        ∫ r in Ioi R, gammaCorrectionDensity a f r :=
      setIntegral_union hd measurableSet_Ioi hh ht.1
    _ = _ := by rw [ht.2]

/-- Direct return to the existing primitive, nonprincipal arithmetic source.
No conductor, character phase, prime power, or head contribution is changed. -/
theorem primitiveArithmeticValue_eq_head_add_exact_tail
    {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    {f : ℝ → ℂ} (hf : MemLp f 2 volume) {A R : ℝ} (hR : 0 < R)
    (hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0) (hcut : 2 * A ≤ R)
    (harch : IntegrableOn (gammaCorrectionDensity (gammaParity χ) f) (Ioi 0)) :
    primitiveArithmeticValue χ hprimitive hnonprincipal A f =
      (gammaConstant q (gammaParity χ) + tailMass (gammaParity χ) R) * energy f +
        (∫ r in Ioc 0 R, gammaCorrectionDensity (gammaParity χ) f r) -
        twistedPrime A χ (fun n => correlation f (Real.log (n : ℝ))) := by
  unfold primitiveArithmeticValue
  rw [gammaCorrectionIntegral_eq_head_add_tail (gammaParity χ) hf hR hsupport hcut harch]
  ring

private theorem integrable_pairing {f g : ℝ → ℂ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    Integrable (fun t : ℝ => conj (f t) * g t) := by
  have hfsq := hf.integrable_norm_pow (p := 2) (by norm_num)
  have hgsq := hg.integrable_norm_pow (p := 2) (by norm_num)
  have hm : AEStronglyMeasurable (fun t : ℝ => conj (f t) * g t) volume :=
    (Complex.continuous_conj.comp_aestronglyMeasurable hf.aestronglyMeasurable).mul
      hg.aestronglyMeasurable
  apply ((hfsq.add hgsq).div_const 2).mono' hm
  filter_upwards [] with t
  rw [norm_mul, Complex.norm_conj]
  nlinarith [sq_nonneg (‖f t‖ - ‖g t‖)]

/-- Every inner polarized shift integral is genuinely integrable, before
using support or evaluating its tail. -/
theorem integrable_shiftPairing {f g : ℝ → ℂ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (r : ℝ) :
    Integrable (fun t : ℝ =>
      conj (f (t + r) - f t) * (g (t + r) - g t)) := by
  exact integrable_pairing
    ((hf.comp_measurePreserving (measurePreserving_add_right volume r)).sub hf)
    ((hg.comp_measurePreserving (measurePreserving_add_right volume r)).sub hg)

/-- All complex cross terms are retained. No equality of the two tests or
real-valuedness assumption is used. The cutoff endpoint is included a.e. -/
theorem shiftPairing_eq_two_of_cutoff {f g : ℝ → ℂ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) {A r : ℝ}
    (hsf : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hsg : ∀ t, t ∉ Icc (-A) A → g t = 0) (hr : 2 * A ≤ r) :
    (∫ t : ℝ, conj (f (t + r) - f t) * (g (t + r) - g t)) =
      (2 : ℝ) • (∫ t : ℝ, conj (f t) * g t) := by
  have hp := integrable_pairing hf hg
  have hps : Integrable (fun t : ℝ => conj (f (t + r)) * g (t + r)) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hp
  have hnot : ∀ᵐ t : ℝ ∂volume, t ≠ -A := by
    rw [ae_iff]
    simp
  have heq : (fun t : ℝ => conj (f (t + r) - f t) * (g (t + r) - g t)) =ᵐ[volume]
      (fun t : ℝ => conj (f (t + r)) * g (t + r) + conj (f t) * g t) := by
    filter_upwards [hnot] with t hne
    by_cases ht : t ∈ Icc (-A) A
    · have hs : t + r ∉ Icc (-A) A := by
        intro htr
        exact hne (le_antisymm (by linarith [htr.2]) ht.1)
      simp [hsf _ hs, hsg _ hs]
    · simp [hsf _ ht, hsg _ ht]
  rw [integral_congr_ae heq, integral_add hps hp,
    integral_add_right_eq_self (fun t : ℝ => conj (f t) * g t) r]
  simp [two_smul]

/-- Integrable polarized tail and its exact physical-mass correction.
Real scalar action on C is used only to avoid a redundant complex cast. -/
theorem gammaTail_pairing_integrable_and_eq (a : ℕ) {f g : ℝ → ℂ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) {A R : ℝ} (hR : 0 < R)
    (hsf : ∀ t, t ∉ Icc (-A) A → f t = 0)
    (hsg : ∀ t, t ∉ Icc (-A) A → g t = 0) (hcut : 2 * A ≤ R) :
    IntegrableOn (fun r : ℝ => parityKernel a r •
      (∫ t : ℝ, conj (f (t + r) - f t) * (g (t + r) - g t))) (Ioi R) ∧
    (∫ r in Ioi R, parityKernel a r •
      (∫ t : ℝ, conj (f (t + r) - f t) * (g (t + r) - g t))) =
        tailMass a R • (∫ t : ℝ, conj (f t) * g t) := by
  let p : ℂ := ∫ t : ℝ, conj (f t) * g t
  have heq (r : ℝ) (hr : r ∈ Ioi R) :
      parityKernel a r •
        (∫ t : ℝ, conj (f (t + r) - f t) * (g (t + r) - g t)) =
          (2 * parityKernel a r) • p := by
    rw [shiftPairing_eq_two_of_cutoff hf hg hsf hsg (hcut.trans hr.le), smul_smul]
    rw [mul_comm]
  have hi : IntegrableOn (fun r : ℝ => (2 * parityKernel a r) • p) (Ioi R) :=
    ((parityKernel_integrableOn_tail a hR).const_mul 2).smul_const p
  constructor
  · exact hi.congr_fun (fun r hr => (heq r hr).symm) measurableSet_Ioi
  · calc
      _ = ∫ r in Ioi R, (2 * parityKernel a r) • p :=
        setIntegral_congr_fun measurableSet_Ioi heq
      _ = tailMass a R • p := by
        rw [integral_smul_const, integral_const_mul]
        rfl

/-- In any family (in particular every finite Galerkin family), the full
polarized tail equals the scalar tail mass times the actual L2 Gram matrix.
No normalization or linear independence of the test family is assumed. -/
theorem gammaTail_matrix_eq_smul_mass {ι : Type*} (a : ℕ)
    (f : ι → ℝ → ℂ) (hf : ∀ i, MemLp (f i) 2 volume)
    {A R : ℝ} (hR : 0 < R)
    (hsupport : ∀ i t, t ∉ Icc (-A) A → f i t = 0) (hcut : 2 * A ≤ R) :
    (fun i j => ∫ r in Ioi R, parityKernel a r •
      (∫ t : ℝ, conj (f i (t + r) - f i t) * (f j (t + r) - f j t))) =
    tailMass a R • (fun i j => ∫ t : ℝ, conj (f i t) * f j t) := by
  funext i j
  exact (gammaTail_pairing_integrable_and_eq a (hf i) (hf j) hR
    (hsupport i) (hsupport j) hcut).2

end GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail
