import Mathlib

/-!
# Marked readouts and finite trace-form hostile controls

Representation algebra from audited RH conversation Batches 22–25. Six marked
coordinates retain all three source ports. The trace-form control uses the
companion matrix of the recorded degree-six polynomial; it does not assert an
M23 action on the primes, identify a number field, or prove the missing source
map and invariant/complement bounds.

Source programme and human direction: grwtsk contributors. Local finite adapter
and Lean implementation: OpenAI Codex. External OpenAI results remain references
under their own identities; no external declaration is renamed here.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.MarkedReadout

open scoped BigOperators Matrix

noncomputable section

/-- The marked left in this module, with the following exact parameterization.

def markedLeft (s : ℝ) : Fin 6 → ℝ := ![s ^ 2, -(s ^ 2), -s / 2, s / 2, 1 / 16, -1 / 16]
-/
def markedLeft (s : ℝ) : Fin 6 → ℝ := ![s ^ 2, -(s ^ 2), -s / 2, s / 2, 1 / 16, -1 / 16]
/-- The marked right in this module, with the following exact parameterization.

def markedRight (Z T₄ T₂ T₀ : ℝ) : Fin 6 → ℝ := ![T₄ / (2 * Z), -T₄ / (2 * Z), T₂ / (2 * Z),
-T₂ / (2 * Z), T₀ / (2 * Z), -T₀ / (2 * Z)]
-/
def markedRight (Z T₄ T₂ T₀ : ℝ) : Fin 6 → ℝ :=
  ![T₄ / (2 * Z), -T₄ / (2 * Z), T₂ / (2 * Z), -T₂ / (2 * Z),
    T₀ / (2 * Z), -T₀ / (2 * Z)]

/-- The marked pairing has the exact coefficient order from the source conversation. -/
theorem marked_pair_eq (s Z T₄ T₂ T₀ : ℝ) (hZ : Z ≠ 0) :
    (∑ i : Fin 6, markedLeft s i * markedRight Z T₄ T₂ T₀ i) =
      (s ^ 2 * T₄ - (s / 2) * T₂ + T₀ / 16) / Z := by
  simp only [markedLeft, markedRight, Fin.sum_univ_succ, Fin.sum_univ_zero,
    Matrix.cons_val_zero, Matrix.cons_val_succ, add_zero]
  field_simp
  ring

/-- Both marked vectors are centered: every paired coordinate is retained. -/
theorem markedLeft_centered (s : ℝ) : (∑ i : Fin 6, markedLeft s i) = 0 := by
  simp only [markedLeft, Fin.sum_univ_succ, Fin.sum_univ_zero,
    Matrix.cons_val_zero, Matrix.cons_val_succ, add_zero]
  ring

theorem markedRight_centered (Z T₄ T₂ T₀ : ℝ) :
    (∑ i : Fin 6, markedRight Z T₄ T₂ T₀ i) = 0 := by
  simp only [markedRight, Fin.sum_univ_succ, Fin.sum_univ_zero,
    Matrix.cons_val_zero, Matrix.cons_val_succ, add_zero]
  ring

/-- Scalar Reynolds projection leaves the pair's scalar readout intact. -/
theorem scalar_reynolds_readout (r : ℝ) : (22 : ℝ) * (r / 22) = r := by ring

/-- Extending a rational readout to a degree-six scalar does not improve its bound. -/
theorem scalar_trace_readout (r : ℝ) : (6 * r) / 6 = r := by ring

theorem two_root_channels (b₁ b₆ : ℝ) : b₁ + b₆ - b₁ = b₆ := by ring

/-- Trace moments are derived here from a concrete companion matrix over the rationals. -/
def traceCompanion : Matrix (Fin 6) (Fin 6) ℚ :=
  !![0, 0, 0, 0, 0, -4;
     1, 0, 0, 0, 0, -5;
     0, 1, 0, 0, 0, -1;
     0, 0, 1, 0, 0, 3;
     0, 0, 0, 1, 0, 3;
     0, 0, 0, 0, 1, 1]

theorem companion_trace_moments :
    Matrix.trace (traceCompanion ^ 0) = 6 ∧
    Matrix.trace traceCompanion = 1 ∧
    Matrix.trace (traceCompanion ^ 2) = 7 ∧
    Matrix.trace (traceCompanion ^ 3) = 19 ∧
    Matrix.trace (traceCompanion ^ 4) = 39 := by
  norm_num [traceCompanion, Matrix.trace, Matrix.diag, Matrix.mul_apply,
    Fin.sum_univ_succ, pow_succ]

/-- The trace quadratic in this module, with the following exact parameterization.

def traceQuadratic (a b c : ℚ) : ℚ := 6 * a ^ 2 + 2 * a * b + 14 * a * c + 7 * b ^ 2 + 38 * b
* c + 39 * c ^ 2
-/
def traceQuadratic (a b c : ℚ) : ℚ :=
  6 * a ^ 2 + 2 * a * b + 14 * a * c + 7 * b ^ 2 + 38 * b * c + 39 * c ^ 2

/-- The recorded trace form is positive on one explicit vector. -/
theorem trace_positive_witness : traceQuadratic 1 0 0 = 6 := by norm_num [traceQuadratic]

/-- The same trace form is negative on an explicitly centered polynomial. -/
theorem trace_negative_centered_witness :
    6 * (-30 / 41 : ℚ) + (-107 / 41) + 7 = 0 ∧
      traceQuadratic (-30 / 41) (-107 / 41) 1 = -644 / 41 := by
  norm_num [traceQuadratic]

/-- Therefore this finite trace form cannot be used as a nonnegative energy. -/
theorem trace_form_not_nonnegative : ¬ ∀ a b c : ℚ, 0 ≤ traceQuadratic a b c := by
  intro h
  have hn := h (-30 / 41) (-107 / 41) 1
  rw [trace_negative_centered_witness.2] at hn
  norm_num at hn

/-- A trace-zero factor can have a nonzero trace after multiplying by itself. -/
theorem trace_zero_square_nonzero :
    6 * (-1 / 6 : ℚ) + 1 = 0 ∧ traceQuadratic (-1 / 6) 1 0 = 41 / 6 := by
  norm_num [traceQuadratic]

/-- The cited fixed-channel value and trace-six value differ before any extra source law. -/
theorem fixed_channel_ne_trace_six (w : ℝ) (hw : 0 < w) :
    28 - 3 * w ≠ 22 - 22 * w := by linarith

end
end GRWTSK.RiemannHypothesis.Conversation.MarkedReadout
