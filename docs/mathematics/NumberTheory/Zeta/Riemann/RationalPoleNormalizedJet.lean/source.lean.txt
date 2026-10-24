/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PoleNormalizedEndpointJet
import GRWTSK.NumberTheory.Zeta.Riemann.RationalEndpointJet
import Mathlib.Data.Rat.BigOperators

set_option autoImplicit false

/-!
# Rational pole-free finite value/derivative assembly and actual-source value error

Reuse the existing positive-base prefix and Ball arithmetic. The new coefficient
has no inverse of s-1. Finite jets are valid at s=1, not only away from it.
The actual-source VALUE ball pays the derived Bernoulli tail. A source derivative
still requires the separate UNIFORM analytic-difference estimate; a pointwise
value radius is not differentiated. Leaf enclosures retain their prior semantics.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.RationalPoleNormalizedJet

open scoped BigOperators
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude magnitude_nonneg norm_le_magnitude)
open RationalEndpointJet (risingJet risingJet_refines point point_sound prefix prefix_sound)
open GRWTSK.Analysis.Complex
open CriticalStripHeightDescent

/-- The coefficient's regular polynomial and tangent, without a pole inverse. -/
def regularJet (s : Coordinates) (N : ℕ) : ℕ → Coordinates × Coordinates
  | 0 => ((-1 / 2, 0), zero)
  | p + 1 =>
    let prev := regularJet s N p
    let r := risingJet s (2 * (p + 1) - 1)
    let w : Coordinates := (EndpointCorrectedJet.weight N (p + 1), 0)
    (add prev.1 (mul w r.1), add prev.2 (mul w r.2))

def coefficientJet (s : Coordinates) (N p : ℕ) : Coordinates × Coordinates :=
  let a := regularJet s N p
  let d := sub s one
  (add ((N : ℚ), 0) (mul d a.1), add a.1 (mul d a.2))

theorem regularJet_refines (s : Coordinates) (N p : ℕ) :
    toComplex (regularJet s N p).1 = PoleNormalizedEndpointJet.regular N p (toComplex s) ∧
    toComplex (regularJet s N p).2 = PoleNormalizedEndpointJet.regularSlope N p (toComplex s) := by
  induction p with
  | zero =>
      constructor <;> simp [regularJet, PoleNormalizedEndpointJet.regular,
        PoleNormalizedEndpointJet.regularSlope, toComplex]
  | succ p ih =>
      have hr := risingJet_refines s (2 * (p + 1) - 1)
      constructor <;> simp only [regularJet, toComplex_add, toComplex_mul, toComplex_real,
        ih.1, ih.2, hr.1, hr.2, PoleNormalizedEndpointJet.regular_succ,
        PoleNormalizedEndpointJet.regularSlope_succ]

theorem coefficientJet_refines (s : Coordinates) (N p : ℕ) :
    toComplex (coefficientJet s N p).1 = PoleNormalizedEndpointJet.coefficient N p (toComplex s) ∧
    toComplex (coefficientJet s N p).2 = PoleNormalizedEndpointJet.coefficientSlope N p (toComplex s) := by
  have h := regularJet_refines s N p
  constructor <;> simp only [coefficientJet, toComplex_add, toComplex_mul, toComplex_sub,
    toComplex_one, toComplex_real, Rat.cast_natCast, h.1, h.2,
    PoleNormalizedEndpointJet.coefficient, PoleNormalizedEndpointJet.coefficientSlope]

/-- Full positive-base inventory and BOTH finite outputs; no conditional inverse. -/
def assemble (bits : ℕ) (s : Coordinates) (N p : ℕ) (logs powers : ℕ → Ball) : Ball × Ball :=
  let acc := prefix bits logs powers N
  let coeff := coefficientJet s N p
  let d := sub s one
  (ballAdd bits (ballScale bits d acc.1) (ballScale bits coeff.1 (powers N)),
    ballAdd bits (ballAdd bits acc.1 (ballScale bits d acc.2))
      (ballMul bits (powers N)
        (ballAdd bits (point coeff.2) (ballScale bits (sub zero coeff.1) (logs N)))))

/-- This finite assembly includes s=1. Input powers still need their actual
inverse-power enclosure proofs, not only a matching filename or record ID. -/
theorem assemble_sound (bits : ℕ) (s : Coordinates) {N : ℕ} (hN : 1 ≤ N)
    (p : ℕ) (logs powers : ℕ → Ball)
    (hl : ∀ k ∈ Finset.Icc 1 N, Holds (logs k) (Real.log (k : ℝ) : ℂ))
    (hp : ∀ k ∈ Finset.Icc 1 N, Holds (powers k) ((k : ℂ) ^ (-toComplex s))) :
    Holds (assemble bits s N p logs powers).1 (PoleNormalizedEndpointJet.model N p (toComplex s)) ∧
    Holds (assemble bits s N p logs powers).2 (deriv (PoleNormalizedEndpointJet.model N p) (toComplex s)) := by
  have ha := prefix_sound bits logs powers N hl hp
  have hn : N ∈ Finset.Icc 1 N := Finset.mem_Icc.mpr ⟨hN, le_rfl⟩
  have hc := coefficientJet_refines s N p
  constructor
  · have h := ballAdd_sound bits (ballScale_sound bits (sub s one) ha.1)
        (ballScale_sound bits (coefficientJet s N p).1 (hp N hn))
    simpa only [assemble, PoleNormalizedEndpointJet.model, toComplex_sub, toComplex_one,
      hc.1, mul_comm] using h
  · have hinner := ballAdd_sound bits (point_sound (coefficientJet s N p).2)
        (ballScale_sound bits (sub zero (coefficientJet s N p).1) (hl N hn))
    have hinner' : Holds
        (ballAdd bits (point (coefficientJet s N p).2)
          (ballScale bits (sub zero (coefficientJet s N p).1) (logs N)))
        (PoleNormalizedEndpointJet.coefficientSlope N p (toComplex s) -
          (Real.log (N : ℝ) : ℂ) * PoleNormalizedEndpointJet.coefficient N p (toComplex s)) := by
      convert hinner using 1
      simp only [toComplex_sub, toComplex_zero, hc.1, hc.2]
      ring
    have h := ballAdd_sound bits
      (ballAdd_sound bits ha.1 (ballScale_sound bits (sub s one) ha.2))
      (ballMul_sound bits (hp N hn) hinner')
    simpa only [assemble, PoleNormalizedEndpointJet.deriv_model hN p,
      PoleNormalizedEndpointJet.slope, toComplex_sub, toComplex_one] using h

/-- Rational form of the INHERITED integral bound; p indexes p+1 corrections. -/
def tailAllowance (N p : ℕ) (B : ℚ) : ℚ :=
  let m := 2 * (p + 1)
  (∏ j ∈ Finset.range m, (B + (j : ℚ))) / (m.factorial : ℚ) *
    (PeriodicBernoulli.majorant m / ((m - 1 : ℕ) * (N : ℚ) ^ (m - 1)))

def sourceAllowance (s : Coordinates) (N p : ℕ) : ℚ :=
  magnitude (sub s one) * tailAllowance N p (magnitude s)

def sourceBall (s : Coordinates) (N p : ℕ) (b : Ball) : Ball :=
  ⟨b.mid, b.rad + sourceAllowance s N p⟩

/-- A TRUE source error, not a guessed certificate radius or a divisor tail. -/
theorem source_error (s : Coordinates) {N : ℕ} (hN : 1 ≤ N) (p : ℕ) (hs : 0 < s.1) :
    ‖poleNormalizedZeta (toComplex s) - PoleNormalizedEndpointJet.model N (p + 1) (toComplex s)‖ ≤
      (sourceAllowance s N p : ℝ) := by
  have hsR : 0 < (toComplex s).re := by
    simpa [toComplex] using (show (0 : ℝ) < (s.1 : ℝ) by exact_mod_cast hs)
  have h := PoleNormalizedEndpointJet.source_error hN p hsR (norm_le_magnitude s)
  have hb := PeriodicBernoulli.majorant_nonneg (2 * (p + 1))
  have hm := magnitude_nonneg s
  have hnQ : (0 : ℚ) ≤ tailAllowance N p (magnitude s) := by
    unfold tailAllowance
    positivity
  have hn : (0 : ℝ) ≤ (tailAllowance N p (magnitude s) : ℝ) := by exact_mod_cast hnQ
  have h' : ‖poleNormalizedZeta (toComplex s) - PoleNormalizedEndpointJet.model N (p + 1) (toComplex s)‖ ≤
      ‖toComplex s - 1‖ * (tailAllowance N p (magnitude s) : ℝ) := by
    simpa only [tailAllowance, Rat.cast_mul, Rat.cast_div, Rat.cast_prod, Rat.cast_add,
      Rat.cast_natCast, Rat.cast_pow] using h
  apply h'.trans
  rw [sourceAllowance, Rat.cast_mul]
  apply mul_le_mul_of_nonneg_right _ hn
  simpa only [toComplex_sub, toComplex_one] using norm_le_magnitude (sub s one)

/-- Finite arithmetic plus the independently derived actual-source residual.
Only the finite model, not its derivative, is transported by this pointwise ball. -/
theorem sourceBall_sound {s : Coordinates} {N : ℕ} (hN : 1 ≤ N) (p : ℕ)
    (hs : 0 < s.1) {b : Ball}
    (hb : Holds b (PoleNormalizedEndpointJet.model N (p + 1) (toComplex s))) :
    Holds (sourceBall s N p b) (poleNormalizedZeta (toComplex s)) := by
  unfold Holds sourceBall
  have he := source_error s hN p hs
  calc
    _ ≤ ‖poleNormalizedZeta (toComplex s) - PoleNormalizedEndpointJet.model N (p + 1) (toComplex s)‖ +
        ‖PoleNormalizedEndpointJet.model N (p + 1) (toComplex s) - toComplex b.mid‖ := by
      simpa only [dist_eq_norm] using dist_triangle (poleNormalizedZeta (toComplex s))
        (PoleNormalizedEndpointJet.model N (p + 1) (toComplex s)) (toComplex b.mid)
    _ ≤ (sourceAllowance s N p : ℝ) + (b.rad : ℝ) := add_le_add he hb
    _ = _ := by push_cast; ring

end GRWTSK.RiemannHypothesis.RationalPoleNormalizedJet
