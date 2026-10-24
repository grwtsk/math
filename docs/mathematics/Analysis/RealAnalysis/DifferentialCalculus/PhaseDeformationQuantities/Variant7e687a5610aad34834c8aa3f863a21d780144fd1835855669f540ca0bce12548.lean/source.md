# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PhaseDeformationQuantities.Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `072bd8093642a9de5f3c5c7fc16e025d0ce95e0e` · SHA-256 `a6f1baaab4385a3e70c2e31edd451aa2e9a107ce5a6bb79ebfdb0b508852dd68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtChi.Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasDerivAtChi.Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7","mathematical_subject":"Analysis.Calculus","original_sha256":"fcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/fcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv

/-!
# Quantities carried by the actual logarithmic phase deformation

The derivatives below concern the source character `chi ξ n`, with its exact
logarithmic coefficient. The finite defect derivatives retain every index and
every von Mangoldt weight in the strict source inventory. No differentiation
under a spectral integral or spectral moment finiteness is assumed.

The prime-and-square packet has both signs as a function of frequency. These
are pointwise counterexamples to a universal packet sign, not counterexamples
to an integrated or summed source estimate. The cutoff packet explicitly keeps
the prime and its square separate when only one is in the strict inventory.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtChi.Variantfcca367bf91600989b697b2b7d0f0ac48e8cc54379d080b0027eaad4310c0fd7

namespace FormalResearch.RiemannHypothesis.PhaseDeformationQuantities

open MultiplicativePhase
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerPhaseDefect EstimateHigherPrimePowers EstimateTailReduction
open scoped BigOperators

noncomputable section

/-- The logarithmic phase has an actual derivative in the real frequency. -/
theorem has_deriv_at_chi (x ξ : ℝ) :
    HasDerivAt (fun η : ℝ ↦ chi η x)
      (Complex.I * (Real.log x : ℂ) * chi ξ x) ξ := by
  have h := (((hasDerivAt_id' ξ).ofReal_comp.const_mul Complex.I).mul_const
    (Real.log x : ℂ)).cexp
  convert! h using 1
  simp only [chi, Complex.ofReal_one, mul_one]
  ring

theorem deriv_chi (x ξ : ℝ) :
    deriv (fun η : ℝ ↦ chi η x) ξ =
      Complex.I * (Real.log x : ℂ) * chi ξ x :=
  (has_deriv_at_chi x ξ).deriv

theorem deriv_chi_zero (x : ℝ) :
    deriv (fun ξ : ℝ ↦ chi ξ x) 0 = Complex.I * (Real.log x : ℂ) := by
  rw [deriv_chi]
  simp [chi]

theorem deriv_chi_nat_pow_zero (n k : ℕ) :
    deriv (fun ξ : ℝ ↦ chi ξ (n ^ k : ℕ)) 0 =
      Complex.I * (k : ℂ) * (Real.log n : ℂ) := by
  rw [deriv_chi_zero, Nat.cast_pow, Real.log_pow]
  push_cast
  ring

theorem second_deriv_chi_zero (x : ℝ) :
    deriv (deriv (fun ξ : ℝ ↦ chi ξ x)) 0 = -((Real.log x : ℂ) ^ 2) := by
  have h := (has_deriv_at_chi x 0).const_mul (Complex.I * (Real.log x : ℂ))
  have hd : deriv (fun ξ : ℝ ↦ Complex.I * (Real.log x : ℂ) * chi ξ x) 0 =
      -((Real.log x : ℂ) ^ 2) := by
    rw [h.deriv]
    simp only [chi, Complex.ofReal_zero, mul_zero, zero_mul, Complex.exp_zero, mul_one]
    calc
      _ = (Complex.I * Complex.I) * (Real.log x : ℂ) ^ 2 := by ring
      _ = _ := by rw [Complex.I_mul_I]; ring
  simpa only [show deriv (fun ξ : ℝ ↦ chi ξ x) =
    (fun ξ ↦ Complex.I * (Real.log x : ℂ) * chi ξ x) from
      funext (deriv_chi x)] using hd

/-- The trace and discriminant of the phase characteristic polynomial. -/
def phaseTrace (ξ x : ℝ) : ℝ := 2 * (chi ξ x).re

/-- The discriminant of the actual unit-phase characteristic quadratic. -/
def phaseDiscriminant (ξ x : ℝ) : ℝ := phaseTrace ξ x ^ 2 - 4

theorem phase_discriminant_eq (ξ x : ℝ) :
    phaseDiscriminant ξ x = -4 * Real.sin (ξ * Real.log x) ^ 2 := by
  rw [phaseDiscriminant, phaseTrace, chi_re]
  nlinarith [Real.sin_sq_add_cos_sq (ξ * Real.log x)]

theorem deriv_phase_trace (x ξ : ℝ) :
    deriv (fun η ↦ phaseTrace η x) ξ =
      -2 * Real.log x * Real.sin (ξ * Real.log x) := by
  have h := ((hasDerivAt_id' ξ).mul_const (Real.log x)).cos.const_mul 2
  have heq : (fun η ↦ phaseTrace η x) = (fun η ↦ 2 * Real.cos (η * Real.log x)) := by
    funext η
    rw [phaseTrace, chi_re]
  rw [heq, h.deriv]
  ring

theorem second_deriv_phase_trace_zero (x : ℝ) :
    deriv (deriv (fun ξ ↦ phaseTrace ξ x)) 0 = -2 * Real.log x ^ 2 := by
  have h := ((hasDerivAt_id' (0 : ℝ)).mul_const (Real.log x)).sin.const_mul
    (-2 * Real.log x)
  have heq : deriv (fun ξ ↦ phaseTrace ξ x) =
      (fun ξ ↦ -2 * Real.log x * Real.sin (ξ * Real.log x)) :=
    funext (deriv_phase_trace x)
  rw [heq, h.deriv]
  simp only [zero_mul, Real.cos_zero]
  ring

theorem deriv_phase_discriminant (x ξ : ℝ) :
    deriv (fun η ↦ phaseDiscriminant η x) ξ =
      -8 * Real.log x * Real.sin (ξ * Real.log x) * Real.cos (ξ * Real.log x) := by
  have h := (((hasDerivAt_id' ξ).mul_const (Real.log x)).sin.pow 2).const_mul (-4)
  have heq : (fun η ↦ phaseDiscriminant η x) =
      (fun η ↦ -4 * Real.sin (η * Real.log x) ^ 2) :=
    funext (fun η ↦ phase_discriminant_eq η x)
  simp only [Pi.pow_apply] at h
  rw [heq, h.deriv]
  norm_num only [Nat.cast_ofNat, pow_one]
  ring

theorem second_deriv_phase_discriminant_zero (x : ℝ) :
    deriv (deriv (fun ξ ↦ phaseDiscriminant ξ x)) 0 = -8 * Real.log x ^ 2 := by
  have hs := ((hasDerivAt_id' (0 : ℝ)).mul_const (Real.log x)).sin
  have hc := ((hasDerivAt_id' (0 : ℝ)).mul_const (Real.log x)).cos
  have h := (hs.mul hc).const_mul (-8 * Real.log x)
  simp only [Pi.mul_apply] at h
  have heq : deriv (fun ξ ↦ phaseDiscriminant ξ x) =
      (fun ξ ↦ -8 * Real.log x * Real.sin (ξ * Real.log x) *
        Real.cos (ξ * Real.log x)) :=
    funext (deriv_phase_discriminant x)
  rw [heq]
  have hf : (fun ξ ↦ -8 * Real.log x * Real.sin (ξ * Real.log x) *
      Real.cos (ξ * Real.log x)) =
      (fun ξ ↦ -8 * Real.log x * (Real.sin (ξ * Real.log x) *
        Real.cos (ξ * Real.log x))) := by
    funext ξ
    ring
  rw [hf, h.deriv]
  simp only [zero_mul, Real.cos_zero, Real.sin_zero]
  ring

/-- The square's phase defect is exactly the negative prime-phase discriminant. -/
theorem single_defect_square_eq_neg_discriminant (ξ x : ℝ) :
    Complex.normSq (1 - chi ξ (x ^ 2)) = -phaseDiscriminant ξ x := by
  rw [normSq_one_sub_chi, Real.log_pow]
  norm_num only [Nat.cast_ofNat]
  rw [show ξ * (2 * Real.log x) = 2 * (ξ * Real.log x) by ring, Real.cos_two_mul]
  rw [phaseDiscriminant, phaseTrace, chi_re]
  ring

theorem phase_discriminant_square (ξ x : ℝ) :
    phaseDiscriminant ξ (x ^ 2) =
      4 * (chi ξ x).re ^ 2 * phaseDiscriminant ξ x := by
  simp only [phaseDiscriminant, phaseTrace, chi_re, Real.log_pow]
  norm_num only [Nat.cast_ofNat]
  rw [show ξ * (2 * Real.log x) = 2 * (ξ * Real.log x) by ring, Real.cos_two_mul]
  ring

/-- The prime-square character law binds the scalar identity to the actual source phase. -/
theorem prime_square_defect_eq_neg_discriminant {p : ℕ} (hp : p.Prime) (ξ : ℝ) :
    Complex.normSq (1 - chi ξ p ^ 2) = -phaseDiscriminant ξ p := by
  rw [← chi_prime_pow ξ hp 2, Nat.cast_pow]
  exact single_defect_square_eq_neg_discriminant ξ p

/-- The defect's derivative, before any integral transport. -/
def singleDefectDerivative (ξ x : ℝ) : ℝ :=
  2 * Real.log x * Real.sin (ξ * Real.log x)

theorem has_deriv_at_single_defect (x ξ : ℝ) :
    HasDerivAt (fun η ↦ Complex.normSq (1 - chi η x))
      (singleDefectDerivative ξ x) ξ := by
  have h := (hasDerivAt_const ξ (2 : ℝ)).sub
    (((hasDerivAt_id' ξ).mul_const (Real.log x)).cos.const_mul 2)
  convert! h using 1
  · funext η
    exact normSq_one_sub_chi η x
  · simp only [singleDefectDerivative]
    ring

theorem has_deriv_at_single_defect_derivative_zero (x : ℝ) :
    HasDerivAt (fun ξ ↦ singleDefectDerivative ξ x) (2 * Real.log x ^ 2) 0 := by
  have h := ((hasDerivAt_id' (0 : ℝ)).mul_const (Real.log x)).sin.const_mul
    (2 * Real.log x)
  convert! h using 1
  simp only [zero_mul, Real.cos_zero, one_mul]
  ring

theorem second_deriv_single_defect_zero (x : ℝ) :
    deriv (deriv (fun ξ ↦ Complex.normSq (1 - chi ξ x))) 0 = 2 * Real.log x ^ 2 := by
  have heq : deriv (fun ξ ↦ Complex.normSq (1 - chi ξ x)) =
      (fun ξ ↦ singleDefectDerivative ξ x) :=
    funext (fun ξ ↦ (has_deriv_at_single_defect x ξ).deriv)
  rw [heq]
  exact (has_deriv_at_single_defect_derivative_zero x).deriv

/-- This is the derivative of exactly the finite strict source defect. -/
def finiteDefectDerivative (A ξ : ℝ) : ℝ :=
  ∑ n ∈ primeIndices A, primeWeight n * singleDefectDerivative ξ n

theorem has_deriv_at_phase_defect (A ξ : ℝ) :
    HasDerivAt (phaseDefect A) (finiteDefectDerivative A ξ) ξ := by
  exact HasDerivAt.fun_sum (fun n _ ↦
    (has_deriv_at_single_defect n ξ).const_mul (primeWeight n))

theorem second_deriv_phase_defect_zero (A : ℝ) :
    deriv (deriv (phaseDefect A)) 0 =
      ∑ n ∈ primeIndices A, 2 * primeWeight n * Real.log n ^ 2 := by
  have heq : deriv (phaseDefect A) = finiteDefectDerivative A :=
    funext (fun ξ ↦ (has_deriv_at_phase_defect A ξ).deriv)
  rw [heq]
  have h := HasDerivAt.fun_sum (fun n (_ : n ∈ primeIndices A) ↦
    (has_deriv_at_single_defect_derivative_zero n).const_mul (primeWeight n))
  change deriv (fun ξ ↦ ∑ n ∈ primeIndices A,
    primeWeight n * singleDefectDerivative ξ n) 0 = _
  rw [h.deriv]
  apply Finset.sum_congr rfl
  intro n _
  ring

private theorem sqrt_pow (x : ℝ) (hx : 0 ≤ x) (k : ℕ) :
    Real.sqrt (x ^ k) = Real.sqrt x ^ k := by
  induction k with
  | zero => simp
  | succ k ih => rw [pow_succ, Real.sqrt_mul (pow_nonneg hx k), ih, pow_succ]

/-- The source weight contains `log p`, not `log (p^k)`, at every positive exponent. -/
theorem prime_weight_prime_pow {p : ℕ} (hp : p.Prime) {k : ℕ} (hk : k ≠ 0) :
    primeWeight (p ^ k) = Real.log p / Real.sqrt p ^ k := by
  rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_pow hk,
    ArithmeticFunction.vonMangoldt_apply_prime hp, Nat.cast_pow,
    sqrt_pow _ (Nat.cast_nonneg _)]

/-- The actual weighted curvature keeps the exponent-squared logarithmic factor. -/
theorem weighted_curvature_prime_pow {p : ℕ} (hp : p.Prime) {k : ℕ} (hk : k ≠ 0) :
    2 * primeWeight (p ^ k) * Real.log (p ^ k : ℕ) ^ 2 =
      2 * (k : ℝ) ^ 2 * Real.log p ^ 3 / Real.sqrt p ^ k := by
  rw [prime_weight_prime_pow hp hk, Nat.cast_pow, Real.log_pow]
  ring

/-- Phase differentiation and the arithmetic weight are different even at a prime square. -/
theorem von_mangoldt_prime_square_ne_log {p : ℕ} (hp : p.Prime) :
    ArithmeticFunction.vonMangoldt (p ^ 2) ≠ Real.log (p ^ 2 : ℕ) := by
  rw [ArithmeticFunction.vonMangoldt_apply_pow (by decide),
    ArithmeticFunction.vonMangoldt_apply_prime hp, Nat.cast_pow, Real.log_pow]
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hl := Real.log_pos hp1
  norm_num
  linarith

/-- The two exact source cosine terms, before integration against the density. -/
def primeSquareCosinePacket (p : ℕ) (ξ : ℝ) : ℝ :=
  primeWeight p * Real.cos (ξ * Real.log p) +
    primeWeight (p ^ 2) * Real.cos (ξ * Real.log (p ^ 2 : ℕ))

/-- Strict-cutoff membership is retained separately for the prime and square. -/
def cutoffPrimeSquareCosinePacket (A : ℝ) (p : ℕ) (ξ : ℝ) : ℝ := by
  classical
  exact (if p ∈ lowerPowerInventory A then primeWeight p * Real.cos (ξ * Real.log p) else 0) +
    (if p ^ 2 ∈ lowerPowerInventory A then
      primeWeight (p ^ 2) * Real.cos (ξ * Real.log (p ^ 2 : ℕ)) else 0)

theorem cutoff_prime_square_cosine_packet_eq (A : ℝ) (p : ℕ) (ξ : ℝ)
    (hp : p ∈ lowerPowerInventory A) (hp2 : p ^ 2 ∈ lowerPowerInventory A) :
    cutoffPrimeSquareCosinePacket A p ξ = primeSquareCosinePacket p ξ := by
  simp [cutoffPrimeSquareCosinePacket, primeSquareCosinePacket, hp, hp2]

theorem prime_square_cosine_packet_eq {p : ℕ} (hp : p.Prime) (ξ : ℝ) :
    primeSquareCosinePacket p ξ =
      (Real.log p / Real.sqrt p) * Real.cos (ξ * Real.log p) +
      (Real.log p / (p : ℝ)) * (2 * Real.cos (ξ * Real.log p) ^ 2 - 1) := by
  rw [primeSquareCosinePacket, prime_weight_prime_pow hp (by decide),
    show primeWeight p = Real.log p / Real.sqrt p from by
      rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime hp],
    Nat.cast_pow, Real.log_pow, Real.sq_sqrt (Nat.cast_nonneg p)]
  norm_num only [Nat.cast_ofNat]
  rw [show ξ * (2 * Real.log p) = 2 * (ξ * Real.log p) by ring, Real.cos_two_mul]

theorem prime_square_cosine_packet_zero_pos {p : ℕ} (hp : p.Prime) :
    0 < primeSquareCosinePacket p 0 := by
  rw [prime_square_cosine_packet_eq hp]
  simp only [zero_mul, Real.cos_zero]
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hl : 0 < Real.log (p : ℝ) := Real.log_pos hp1
  have hs : 0 < Real.sqrt (p : ℝ) := Real.sqrt_pos.mpr (by linarith)
  positivity

theorem prime_square_cosine_packet_half_turn_neg {p : ℕ} (hp : p.Prime) :
    primeSquareCosinePacket p (Real.pi / Real.log p) < 0 := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hl : 0 < Real.log (p : ℝ) := Real.log_pos hp1
  have hs : 0 < Real.sqrt (p : ℝ) := Real.sqrt_pos.mpr (by linarith)
  have hsp : Real.sqrt (p : ℝ) < p := by
    have hsq := Real.sq_sqrt (show 0 ≤ (p : ℝ) by linarith)
    have hn := Real.sqrt_nonneg (p : ℝ)
    nlinarith
  rw [prime_square_cosine_packet_eq hp, div_mul_cancel₀ _ (ne_of_gt hl), Real.cos_pi]
  have hd : Real.log (p : ℝ) / (p : ℝ) < Real.log p / Real.sqrt p :=
    div_lt_div_of_pos_left hl hs hsp
  norm_num
  linarith

/-- An exact local discriminant dictionary; this equality supplies no uniform bound. -/
theorem signed_prime_square_cosine_packet_eq_discriminant {p : ℕ} (hp : p.Prime) (ξ : ℝ) :
    -2 * primeSquareCosinePacket p ξ =
      -2 * (Real.log p / Real.sqrt p) * (chi ξ p).re -
        2 * (Real.log p / (p : ℝ)) -
        (Real.log p / (p : ℝ)) * phaseDiscriminant ξ p := by
  rw [prime_square_cosine_packet_eq hp, phaseDiscriminant, phaseTrace, chi_re]
  ring

/-- The local weighted defect curvature is quantitative, but only at frequency zero. -/
theorem second_deriv_prime_square_defect_packet_zero {p : ℕ} (hp : p.Prime) :
    deriv (deriv (fun ξ : ℝ ↦
      primeWeight p * Complex.normSq (1 - chi ξ p) +
        primeWeight (p ^ 2) * Complex.normSq (1 - chi ξ (p ^ 2 : ℕ)))) 0 =
      2 * (Real.log p / Real.sqrt p + 4 * (Real.log p / (p : ℝ))) * Real.log p ^ 2 := by
  have heq : deriv (fun ξ : ℝ ↦
      primeWeight p * Complex.normSq (1 - chi ξ p) +
        primeWeight (p ^ 2) * Complex.normSq (1 - chi ξ (p ^ 2 : ℕ))) =
      (fun ξ ↦ primeWeight p * singleDefectDerivative ξ p +
        primeWeight (p ^ 2) * singleDefectDerivative ξ (p ^ 2 : ℕ)) := by
    funext ξ
    exact (((has_deriv_at_single_defect p ξ).const_mul (primeWeight p)).add
      ((has_deriv_at_single_defect (p ^ 2 : ℕ) ξ).const_mul (primeWeight (p ^ 2)))).deriv
  have h := ((has_deriv_at_single_defect_derivative_zero p).const_mul (primeWeight p)).fun_add
    ((has_deriv_at_single_defect_derivative_zero (p ^ 2 : ℕ)).const_mul (primeWeight (p ^ 2)))
  rw [heq, h.deriv, prime_weight_prime_pow hp (by decide),
    show primeWeight p = Real.log p / Real.sqrt p from by
      rw [primeWeight, ArithmeticFunction.vonMangoldt_apply_prime hp],
    Nat.cast_pow, Real.log_pow, Real.sq_sqrt (Nat.cast_nonneg p)]
  norm_num only [Nat.cast_ofNat]
  ring

theorem prime_mem_lower_power_inventory {p : ℕ} (hp : p.Prime) (A : ℝ)
    (hcut : (p : ℝ) < Real.exp (2 * A)) : p ∈ lowerPowerInventory A := by
  classical
  rw [lowerPowerInventory, Finset.mem_filter]
  exact ⟨(mem_primeIndices_iff A p).mpr ⟨hp.two_le, hcut⟩, Or.inl hp⟩

theorem prime_square_mem_lower_power_inventory {p : ℕ} (hp : p.Prime) (A : ℝ)
    (hcut : (p ^ 2 : ℕ) < Real.exp (2 * A)) : p ^ 2 ∈ lowerPowerInventory A := by
  classical
  rw [lowerPowerInventory, Finset.mem_filter]
  have hp2 : 2 ≤ p ^ 2 := by nlinarith [hp.two_le]
  exact ⟨(mem_primeIndices_iff A (p ^ 2)).mpr ⟨hp2, hcut⟩, Or.inr ⟨p, hp, rfl⟩⟩

/-- A concrete counterexample in the strict source inventory, at radius two. -/
theorem actual_cutoff_prime_two_packet_zero_pos :
    0 < cutoffPrimeSquareCosinePacket 2 2 0 := by
  have hexp : (5 : ℝ) < Real.exp 4 := by
    have h := Real.add_one_lt_exp (by norm_num : (4 : ℝ) ≠ 0)
    norm_num at h
    exact h
  have hp := prime_mem_lower_power_inventory (by decide : Nat.Prime 2) 2
    (show (2 : ℝ) < Real.exp (2 * 2) by norm_num; linarith)
  have hp2 := prime_square_mem_lower_power_inventory (by decide : Nat.Prime 2) 2
    (show ((2 ^ 2 : ℕ) : ℝ) < Real.exp (2 * 2) by norm_num; linarith)
  rw [cutoff_prime_square_cosine_packet_eq 2 2 0 hp hp2]
  exact prime_square_cosine_packet_zero_pos (by decide)

/-- The actual packet cannot have a universal nonpositive pointwise sign. -/
theorem not_all_prime_square_cosine_packet_nonpos {p : ℕ} (hp : p.Prime) :
    ¬∀ ξ, primeSquareCosinePacket p ξ ≤ 0 := by
  intro h
  exact (not_le_of_gt (prime_square_cosine_packet_zero_pos hp)) (h 0)

/-- Nor can it have a universal nonnegative pointwise sign. -/
theorem not_all_prime_square_cosine_packet_nonneg {p : ℕ} (hp : p.Prime) :
    ¬∀ ξ, 0 ≤ primeSquareCosinePacket p ξ := by
  intro h
  exact (not_le_of_gt (prime_square_cosine_packet_half_turn_neg hp))
    (h (Real.pi / Real.log p))

end

end FormalResearch.RiemannHypothesis.PhaseDeformationQuantities
```
