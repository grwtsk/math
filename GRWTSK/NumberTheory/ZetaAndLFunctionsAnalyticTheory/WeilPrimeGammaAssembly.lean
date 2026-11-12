/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilVerticalLimits
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimeLineEvaluation

/-!
# Return the actual full Weil line to the canonical signed prime expression

MSC2020: 11M41, 11M06, 42A38, 30E20.
Consume the concurrently published correlation inversion and prime-line
suppliers at c1085fe36d0bddaf69bf6b6ab67a708d5721eeb3. No duplicate Fourier
inversion, prime-series interchange, or support-cutoff library is introduced.
The native reflected-prime supplier at chi inverse evaluates the ORIGINAL
positive-correlation weight: its two terms are merely reordered, not replaced.
The entire conductor term is evaluated by native vertical inversion at zero.

The full-line consumer retains original zeros, multiplicities, both applicable
pole values, and heights selected before all tests. Only the literal gamma
line integral remains in its conclusion; its integrability is supplied.
The adjacent exposition evaluates that integral by a compensated Fubini
argument and returns to the actual physical form. That further evaluation is
WRITTEN mathematics, not an additional Lean theorem here.

SOURCE_PROOF_CANDIDATE. Elaboration, complete dependency build,
fresh kernel replay, transitive axiom audit and independent review NOT_RUN.
No RH/GRH, zero-free-strip theorem or all-test sign is assumed. Novelty UNASSESSED.
-/

set_option autoImplicit false
noncomputable section
open Set Filter MeasureTheory
open scoped Topology ComplexConjugate BigOperators
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation

open PrimeLineEvaluation CharacterWindow LowSchur

variable {N : ℕ} [NeZero N]

private theorem assembly_weight_line_integrable
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (sigma : ℝ) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Integrable (fun t : ℝ => W ((sigma : ℂ) + (t : ℂ) * Complex.I)) volume := by
  intro W
  simpa only [W, mul_comm Complex.I] using
    (integrable_correlation_contour_weight_vertical f A hA hf hs sigma).1

private theorem assembly_reflected_line_integrable
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Integrable (fun t : ℝ => W (1 - (2 + (t : ℂ) * Complex.I))) volume := by
  intro W
  have hi := (assembly_weight_line_integrable f A hA hf hs (-1)).comp_neg
  convert hi using 1
  funext t
  congr 1
  push_cast
  ring

private theorem assembly_reflected_weight (f : ℝ → ℂ) (s : ℂ) :
    (∫ r : ℝ, correlation f (-r) * Complex.exp ((s - 1 / 2) * (r : ℂ))) =
      ∫ r : ℝ, correlation f r * Complex.exp (((1 - s) - 1 / 2) * (r : ℂ)) := by
  calc
    _ = ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * ((-r : ℝ) : ℂ)) := by
      simpa only [neg_neg] using
        (integral_neg_eq_self (fun r : ℝ => correlation f (-r) *
          Complex.exp ((s - 1 / 2) * (r : ℂ))) volume).symm
    _ = _ := by
      apply integral_congr_ae
      exact Eventually.of_forall fun r => by
        push_cast
        congr 1
        congr 1
        ring

/-- Native vertical inversion at zero evaluates the ENTIRE conductor term on
the original reflected leg. No extra conductor factor is inserted in the completion. -/
theorem weil_conductor_line_evaluation
    (chi : DirichletCharacter ℂ N) (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Integrable (fun t : ℝ => (Real.log (N : ℝ) : ℂ) * W (1 - (2 + (t : ℂ) * Complex.I))) volume ∧
      (∫ t : ℝ, (Real.log (N : ℝ) : ℂ) * W (1 - (2 + (t : ℂ) * Complex.I))) /
        (2 * (Real.pi : ℂ)) = (Real.log (N : ℝ) : ℂ) * correlation f 0 := by
  intro W
  refine ⟨(assembly_reflected_line_integrable f A hA hf hs).const_mul _, ?_⟩
  have hn := correlation_weight_inversion f A hA hf hs (-1) 0
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, mul_one,
    Real.exp_zero, Complex.ofReal_one] at hn
  have he : (∫ t : ℝ, W (1 - (2 + (t : ℂ) * Complex.I))) =
      ∫ t : ℝ, W ((-1 : ℂ) + Complex.I * (t : ℂ)) := by
    rw [← integral_neg_eq_self (fun t : ℝ => W (1 - (2 + (t : ℂ) * Complex.I))) volume]
    apply integral_congr_ae
    exact Eventually.of_forall fun t => by
      push_cast
      congr 1
      ring
  rw [integral_const_mul, he, mul_div_assoc]
  have hv : (∫ t : ℝ, W ((-1 : ℂ) + Complex.I * (t : ℂ))) /
      (2 * (Real.pi : ℂ)) = correlation f 0 := by
    simpa only [one_div, div_eq_mul_inv, mul_comm] using hn
  rw [hv]

/-- Reuse the exact reflected-prime theorem at chi inverse. This returns the
ORIGINAL positive-correlation weight to the unchanged canonical signed prime
form indexed by chi inverse. Integrability of both legs is supplied separately. -/
theorem weil_native_prime_pair_evaluation
    (chi : DirichletCharacter ℂ N) (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    let P := fun t : ℝ =>
      let s := (2 : ℂ) + (t : ℂ) * Complex.I
      W s * LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s +
      W (1 - s) * LSeries (fun n : ℕ => chi⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ)) s
    Integrable P volume ∧
      (∫ t : ℝ, P t) / (2 * (Real.pi : ℂ)) =
        (twistedPrime A chi⁻¹ (fun n => correlation f (Real.log (n : ℝ))) : ℂ) := by
  intro W P
  have hr := (integral_mul_primeSeries_eq_tsum chi
    (fun t : ℝ => W (2 + (t : ℂ) * Complex.I))
    (assembly_weight_line_integrable f A hA hf hs 2)).1
  have hl := (integral_mul_primeSeries_eq_tsum chi⁻¹
    (fun t : ℝ => W (1 - (2 + (t : ℂ) * Complex.I)))
    (assembly_reflected_line_integrable f A hA hf hs)).1
  have hP : Integrable P volume := by
    simpa only [mul_comm Complex.I] using hr.add hl
  refine ⟨hP, ?_⟩
  let WR := fun s : ℂ => ∫ r : ℝ, correlation f (-r) *
    Complex.exp ((s - 1 / 2) * (r : ℂ))
  have hWR (s : ℂ) : WR s = W (1 - s) := assembly_reflected_weight f s
  have he := reflected_prime_line_eq_twistedPrime chi⁻¹ f A hA hf hs
  change (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, let s := (2 : ℂ) + Complex.I * (t : ℂ)
        WR s * LSeries (fun n : ℕ => chi⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ)) s +
        WR (1 - s) * LSeries
          (fun n : ℕ => (chi⁻¹)⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ)) s) = _ at he
  simp_rw [hWR, sub_sub_cancel, inv_inv] at he
  have hswap : (fun t : ℝ =>
      W (1 - (2 + Complex.I * (t : ℂ))) *
        LSeries (fun n : ℕ => chi⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ))
          (2 + Complex.I * (t : ℂ)) +
      W (2 + Complex.I * (t : ℂ)) *
        LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ))
          (2 + Complex.I * (t : ℂ))) = P := by
    funext t
    dsimp only [P]
    rw [mul_comm Complex.I (t : ℂ)]
    exact add_comm _ _
  rw [hswap] at he
  simpa only [one_div, div_eq_mul_inv, mul_comm] using he

/-- Exact full-line return to the native finite signed prime block. The literal
gamma integral is the only unevaluated term, and its integrability is DERIVED
from the already integrable arithmetic line, conductor and original prime pair. -/
theorem weil_full_line_eq_gamma_native_prime
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    let G := fun t : ℝ =>
      let s := (2 : ℂ) + (t : ℂ) * Complex.I
      (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 +
        Complex.digamma ((s + (gammaParity chi : ℂ)) / 2) / 2)
    Integrable G volume ∧
      (∫ t : ℝ, weilRightArithmeticIntegrand chi W t) / (2 * (Real.pi : ℂ)) =
        (∫ t : ℝ, G t) / (2 * (Real.pi : ℂ)) +
        (Real.log (N : ℝ) : ℂ) * correlation f 0 -
        (twistedPrime A chi⁻¹ (fun n => correlation f (Real.log (n : ℝ))) : ℂ) := by
  intro W G
  let C := fun t : ℝ => (Real.log (N : ℝ) : ℂ) * W (1 - (2 + (t : ℂ) * Complex.I))
  let P := fun t : ℝ =>
    let s := (2 : ℂ) + (t : ℂ) * Complex.I
    W s * LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s +
    W (1 - s) * LSeries (fun n : ℕ => chi⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ)) s
  obtain ⟨hC, eC⟩ := weil_conductor_line_evaluation chi f A hA hf hs
  obtain ⟨hP, eP⟩ := weil_native_prime_pair_evaluation chi f A hA hf hs
  have hV := integrable_weilRightArithmeticIntegrand chi hprim f A hA hf hs
  have hG : Integrable G volume := by
    refine ((hV.sub hC).add hP).congr (Eventually.of_forall fun t => ?_)
    dsimp [weilRightArithmeticIntegrand, G]
    ring
  refine ⟨hG, ?_⟩
  have he : weilRightArithmeticIntegrand chi W = fun t => C t + G t - P t := by
    funext t
    dsimp [weilRightArithmeticIntegrand, C, G, P]
    ring
  rw [he, integral_sub (hC.add hG) hP, integral_add hC hG,
    sub_div, add_div, eC, eP]
  ring

/-- Original-source limit after conductor and native-prime evaluation. The
same source-selected heights precede all tests, and BOTH applicable pole terms
remain subtracted. Gamma evaluation, zero-tsum summability and sign are distinct. -/
theorem exists_primitive_weil_gamma_native_limit
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive) :
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        let G := fun t : ℝ =>
          let s := (2 : ℂ) + (t : ℂ) * Complex.I
          (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 +
            Complex.digamma ((s + (gammaParity chi : ℂ)) / 2) / 2)
        Integrable G volume ∧
        Tendsto (fun n =>
          (∑ rho ∈ heightWindow chi hprim (T n), (zeroMultiplicity chi rho : ℂ) * W rho.1) -
            (if N = 1 then W 0 + W 1 else 0)) atTop
          (𝓝 ((∫ t : ℝ, G t) / (2 * (Real.pi : ℂ)) +
            (Real.log (N : ℝ) : ℂ) * correlation f 0 -
            (twistedPrime A chi⁻¹ (fun n => correlation f (Real.log (n : ℝ))) : ℂ))) := by
  obtain ⟨T, hT, hall⟩ := exists_primitive_weil_full_line_limit chi hprim
  refine ⟨T, hT, ?_⟩
  intro f A hA hf hs W G
  obtain ⟨_hV, hlim⟩ := hall f A hA hf hs
  obtain ⟨hG, he⟩ := weil_full_line_eq_gamma_native_prime chi hprim f A hA hf hs
  refine ⟨hG, ?_⟩
  rw [he] at hlim
  exact hlim

/-- Literal conductor-one source limit: both pole terms remain and the native
prime expression uses every active von Mangoldt weight with parity zero. -/
theorem exists_zeta_weil_gamma_native_limit :
    let chi : DirichletCharacter ℂ 1 := 1
    let hprim : chi.IsPrimitive := DirichletCharacter.isPrimitive_one_level_one
    ∃ T : ℕ → ℝ,
      (∀ n, (n : ℝ) + 2 < T n ∧ T n < (n : ℝ) + 3) ∧
      ∀ (f : ℝ → ℂ) (A : ℝ), 0 ≤ A → Admissible f → tsupport f ⊆ Icc (-A) A →
        let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
        let G := fun t : ℝ =>
          let s := (2 : ℂ) + (t : ℂ) * Complex.I
          (W s + W (1 - s)) * (-(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2)
        Integrable G volume ∧
        Tendsto (fun n =>
          (∑ rho ∈ heightWindow chi hprim (T n), (zeroMultiplicity chi rho : ℂ) * W rho.1) -
            (W 0 + W 1)) atTop
          (𝓝 ((∫ t : ℝ, G t) / (2 * (Real.pi : ℂ)) -
            ((2 * ∑ n ∈ activePrimePowers A,
              primeWeight n * (correlation f (Real.log (n : ℝ))).re : ℝ) : ℂ))) := by
  intro chi hprim
  obtain ⟨T, hT, hall⟩ := exists_primitive_weil_gamma_native_limit chi hprim
  refine ⟨T, hT, ?_⟩
  intro f A hA hf hs W G
  have hp : gammaParity chi = 0 := by
    simp [chi, gammaParity, MulChar.one_apply (isUnit_of_subsingleton _)]
  simpa [hp, chi, twistedPrime, MulChar.one_apply (isUnit_of_subsingleton _)] using
    hall f A hA hf hs

end GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
