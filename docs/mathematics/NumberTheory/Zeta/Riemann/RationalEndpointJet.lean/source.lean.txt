/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.EndpointCorrectedJet
import GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic

set_option autoImplicit false

/-!
# Rational construction of the complete endpoint-corrected finite jet

Exact rational coefficients use the upstream Bernoulli numbers. The rising
product and its derivative are accumulated together without dividing by a
possibly zero factor. Rounded operations reuse the existing complex Ball owner.
Every positive base through N and the final N endpoint are consumed. This file
refines the FINITE model only, not zeta or a periodic-Bernoulli integral remainder.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.RationalEndpointJet

open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open GRWTSK.Analysis.Complex
open CriticalStripHeightDescent

/-- Total rational coordinates; inverse_refines requires the actual nonzero denominator. -/
def inverse (u : Coordinates) : Coordinates :=
  (u.1 / squareNorm u, -u.2 / squareNorm u)

theorem inverse_refines {u : Coordinates} (hu : toComplex u ≠ 0) :
    toComplex (inverse u) = (toComplex u)⁻¹ := by
  have hsq : squareNorm u ≠ 0 := by
    intro hzero
    have hn := norm_sq_toComplex u
    have hz : ‖toComplex u‖ = 0 := by
      rw [hzero, Rat.cast_zero] at hn
      nlinarith [norm_nonneg (toComplex u)]
    exact hu (norm_eq_zero.mp hz)
  have hpair : mul u (inverse u) = one := by
    apply Prod.ext
    · dsimp [mul, inverse, one]
      field_simp [hsq]
      simp only [squareNorm]
      ring
    · dsimp [mul, inverse, one]
      field_simp [hsq]
      ring
  apply mul_left_cancel₀ hu
  rw [← toComplex_mul, hpair, toComplex_one, mul_inv_cancel₀ hu]

/-- Exact rational value and tangent, not the componentwise product on a pair. -/
def risingJet (s : Coordinates) : ℕ → Coordinates × Coordinates
  | 0 => (one, zero)
  | n + 1 =>
    let prev := risingJet s n
    let factor := add s ((n : ℚ), 0)
    (mul prev.1 factor, add (mul prev.2 factor) prev.1)

theorem risingJet_refines (s : Coordinates) (n : ℕ) :
    toComplex (risingJet s n).1 = PochhammerJet.value n (toComplex s) ∧
    toComplex (risingJet s n).2 = PochhammerJet.slope n (toComplex s) := by
  induction n with
  | zero => simp [risingJet, PochhammerJet.value_zero, PochhammerJet.slope]
  | succ n ih =>
    constructor <;>
      simp only [risingJet, toComplex_mul, toComplex_add, toComplex_real,
        Rat.cast_natCast, ih.1, ih.2, PochhammerJet.value_succ, PochhammerJet.slope]

/-- The finite coefficient and its derivative are exact Q(i) arithmetic. -/
def coefficientJet (s : Coordinates) (N : ℕ) : ℕ → Coordinates × Coordinates
  | 0 =>
    let inv := inverse (sub s one)
    (sub (mul ((N : ℚ), 0) inv) (1 / 2, 0), mul ((-(N : ℚ)), 0) (mul inv inv))
  | p + 1 =>
    let prev := coefficientJet s N p
    let r := risingJet s (2 * (p + 1) - 1)
    let a : Coordinates := (EndpointCorrectedJet.weight N (p + 1), 0)
    (add prev.1 (mul a r.1), add prev.2 (mul a r.2))

theorem coefficientJet_refines {s : Coordinates} (hs : toComplex s ≠ 1) (N p : ℕ) :
    toComplex (coefficientJet s N p).1 = EndpointCorrectedJet.coefficient N p (toComplex s) ∧
    toComplex (coefficientJet s N p).2 = EndpointCorrectedJet.coefficientSlope N p (toComplex s) := by
  have hi : toComplex (inverse (sub s one)) = (toComplex s - 1)⁻¹ := by
    simpa only [toComplex_sub, toComplex_one] using
      inverse_refines (u := sub s one) (by simpa using sub_ne_zero.mpr hs)
  induction p with
  | zero =>
    constructor <;>
      simp [coefficientJet, toComplex_sub, toComplex_mul, toComplex_real, hi,
        EndpointCorrectedJet.coefficient, EndpointCorrectedJet.coefficientSlope,
        div_eq_mul_inv, inv_pow, pow_two]
  | succ p ih =>
    have hr := risingJet_refines s (2 * (p + 1) - 1)
    constructor <;>
      simp only [coefficientJet, toComplex_add, toComplex_mul, toComplex_real,
        ih.1, ih.2, hr.1, hr.2, EndpointCorrectedJet.coefficient_succ,
        EndpointCorrectedJet.coefficientSlope_succ]

/-- Exact points are data with a proved zero-radius interpretation. -/
def point (u : Coordinates) : Ball := ⟨u, 0⟩

theorem point_sound (u : Coordinates) : Holds (point u) (toComplex u) := by
  simp [point, Holds]

/-- Consume bases 1,...,N in ascending order. Base zero is never an input. -/
def prefix (bits : ℕ) (logs powers : ℕ → Ball) : ℕ → Ball × Ball
  | 0 => (point zero, point zero)
  | N + 1 =>
    let prev := prefix bits logs powers N
    (ballAdd bits prev.1 (powers (N + 1)),
      ballAdd bits prev.2 (ballScale bits (sub zero one)
        (ballMul bits (logs (N + 1)) (powers (N + 1)))))

/-- Both outputs are tied to actual finite functions, not free jet labels. -/
theorem prefix_sound (bits : ℕ) {s : ℂ} (logs powers : ℕ → Ball) (N : ℕ)
    (hl : ∀ k ∈ Finset.Icc 1 N, Holds (logs k) (Real.log (k : ℝ) : ℂ))
    (hp : ∀ k ∈ Finset.Icc 1 N, Holds (powers k) ((k : ℂ) ^ (-s))) :
    Holds (prefix bits logs powers N).1 (finiteDirichletPowerSum N s) ∧
    Holds (prefix bits logs powers N).2 (EndpointCorrectedJet.dirichletSlope N s) := by
  revert hl hp
  induction N with
  | zero =>
    intro _ _
    simp [prefix, point, Holds, finiteDirichletPowerSum, EndpointCorrectedJet.dirichletSlope]
  | succ N ih =>
    intro hl hp
    have hlast : N + 1 ∈ Finset.Icc 1 (N + 1) := by simp
    have hsub : Finset.Icc 1 N ⊆ Finset.Icc 1 (N + 1) := by
      intro k hk
      exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hk).1, (Finset.mem_Icc.mp hk).2.trans (by omega)⟩
    have hprev := ih (fun k hk => hl k (hsub hk)) (fun k hk => hp k (hsub hk))
    constructor
    · have h := ballAdd_sound bits hprev.1 (hp (N + 1) hlast)
      simpa only [prefix, finiteDirichletPowerSum, EndpointCorrectedJet.positive_sum_succ] using h
    · have hterm := ballScale_sound bits (sub zero one)
        (ballMul_sound bits (hl (N + 1) hlast) (hp (N + 1) hlast))
      have hterm' : Holds (ballScale bits (sub zero one)
          (ballMul bits (logs (N + 1)) (powers (N + 1))))
          (-(Real.log ((N + 1 : ℕ) : ℝ) : ℂ) * ((N + 1 : ℕ) : ℂ) ^ (-s)) := by
        simpa only [toComplex_sub, toComplex_zero, toComplex_one, zero_sub,
          neg_one_mul, neg_mul] using hterm
      have h := ballAdd_sound bits hprev.2 hterm'
      simpa only [prefix, EndpointCorrectedJet.dirichletSlope,
        EndpointCorrectedJet.positive_sum_succ] using h

/-- Match the prototype's operation order; signed cancellation does not erase radii. -/
def assemble (bits : ℕ) (s : Coordinates) (N p : ℕ) (logs powers : ℕ → Ball) : Ball × Ball :=
  let acc := prefix bits logs powers N
  let coeff := coefficientJet s N p
  (ballAdd bits acc.1 (ballScale bits coeff.1 (powers N)),
    ballAdd bits acc.2 (ballMul bits (powers N)
      (ballAdd bits (point coeff.2) (ballScale bits (sub zero coeff.1) (logs N)))))

/-- The complete rounded arithmetic refines BOTH the finite value and its derivative. -/
theorem assemble_sound (bits : ℕ) {s : Coordinates} (hs : toComplex s ≠ 1)
    {N : ℕ} (hN : 1 ≤ N) (p : ℕ) (logs powers : ℕ → Ball)
    (hl : ∀ k ∈ Finset.Icc 1 N, Holds (logs k) (Real.log (k : ℝ) : ℂ))
    (hp : ∀ k ∈ Finset.Icc 1 N, Holds (powers k) ((k : ℂ) ^ (-toComplex s))) :
    Holds (assemble bits s N p logs powers).1 (EndpointCorrectedJet.model N p (toComplex s)) ∧
    Holds (assemble bits s N p logs powers).2 (deriv (EndpointCorrectedJet.model N p) (toComplex s)) := by
  have hprev := prefix_sound bits logs powers N hl hp
  have hlast : N ∈ Finset.Icc 1 N := Finset.mem_Icc.mpr ⟨hN, le_rfl⟩
  have hc := coefficientJet_refines hs N p
  constructor
  · have h := ballAdd_sound bits hprev.1
      (ballScale_sound bits (coefficientJet s N p).1 (hp N hlast))
    simpa only [assemble, EndpointCorrectedJet.model, hc.1, mul_comm] using h
  · have hinner := ballAdd_sound bits (point_sound (coefficientJet s N p).2)
      (ballScale_sound bits (sub zero (coefficientJet s N p).1) (hl N hlast))
    have hinner' : Holds
        (ballAdd bits (point (coefficientJet s N p).2)
          (ballScale bits (sub zero (coefficientJet s N p).1) (logs N)))
        (EndpointCorrectedJet.coefficientSlope N p (toComplex s) -
          (Real.log (N : ℝ) : ℂ) * EndpointCorrectedJet.coefficient N p (toComplex s)) := by
      convert hinner using 1
      simp only [toComplex_sub, toComplex_zero, hc.1, hc.2]
      ring
    have h := ballAdd_sound bits hprev.2 (ballMul_sound bits (hp N hlast) hinner')
    simpa only [assemble, EndpointCorrectedJet.deriv_model hN p hs,
      EndpointCorrectedJet.slope] using h

/-- A final displayed center needs a further displacement charge, even for exact Q data. -/
theorem presented_error {b : Ball} {z : ℂ} (h : Holds b z) (v : Coordinates) :
    ‖z - toComplex v‖ ≤ ((b.rad + RationalNewtonDisk.magnitude (sub v b.mid) : ℚ) : ℝ) := by
  calc
    _ ≤ ‖z - toComplex b.mid‖ + ‖toComplex b.mid - toComplex v‖ := by
      simpa only [dist_eq_norm] using dist_triangle z (toComplex b.mid) (toComplex v)
    _ ≤ (b.rad : ℝ) + (RationalNewtonDisk.magnitude (sub v b.mid) : ℝ) := by
      apply add_le_add h
      simpa only [toComplex_sub, norm_sub_rev] using RationalNewtonDisk.norm_le_magnitude (sub v b.mid)
    _ = _ := by push_cast; rfl

/-- A disappearing factor does not make its derivative disappear. -/
theorem rising_zero_control : risingJet (-1, 0) 3 = (zero, (-1, 0)) := by decide

end GRWTSK.RiemannHypothesis.RationalEndpointJet
