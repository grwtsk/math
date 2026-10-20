/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement
import Mathlib.Tactic.Linarith

set_option autoImplicit false

/-!
# An explicit iteration preserving the decoded source

For a supplied bounded code E, D with D E = id, P = E D is a projection on
symbol space. The iteration P y + r • (y - P y) fixes the decoded payload
and scales only the complementary symbol error. No orthogonality of P,
completeness, selected fixed point, or arithmetic source identification is assumed.

In contrast, a self-map of source space preserving the injective encoding E
is the identity. Symbol contraction therefore cannot be silently promoted to
contraction of the source, its signed quadratic value, or a complete analytic
comparison budget. A codeword-shaped source error is retained, not repaired.

These are finite identities. No central limit theorem or zeta-zero assertion
is supplied by this module.
-/

namespace GRWTSK.LinearAlgebra.LinearMap.DecodedSourceIteration

open GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement

noncomputable section

variable {X Y : Type*}
  [NormedAddCommGroup X] [NormedSpace ℝ X]
  [NormedAddCommGroup Y] [NormedSpace ℝ Y]

/-- Equality of encoded payloads determines equality of the sources. -/
theorem source_eq_of_encode_eq (code : Code ℝ X Y) {x x' : X}
    (h : code.encode x = code.encode x') : x = x' := by
  have decoded := congrArg code.decode h
  simpa only [Code.decode_encode_apply] using decoded

/-- Exact preservation of an injective source encoding leaves no source dynamics. -/
theorem preserving_encoding_eq_id (code : Code ℝ X Y) (T : X → X)
    (preserves : ∀ x, code.encode (T x) = code.encode x) : T = id := by
  funext x
  exact source_eq_of_encode_eq code (preserves x)

/-- A retained nonzero payload cannot be strictly shrunk in the same source norm. -/
theorem preserving_encoding_no_strict_shrink (code : Code ℝ X Y)
    (T : X → X) (preserves : ∀ x, code.encode (T x) = code.encode x)
    (x : X) (nonzero : x ≠ 0) (r : ℝ) (strict : r < 1)
    (shrinks : ‖T x‖ ≤ r * ‖x‖) : False := by
  have fixed : T x = x := source_eq_of_encode_eq code (preserves x)
  have positive : 0 < ‖x‖ := norm_pos_iff.mpr nonzero
  rw [fixed] at shrinks
  nlinarith

/-- Projection to codewords using the supplied decoder, not a chosen inverse. -/
def symbolProjection (code : Code ℝ X Y) (y : Y) : Y :=
  code.encode (code.decode y)

@[simp]
theorem decode_projection (code : Code ℝ X Y) (y : Y) :
    code.decode (symbolProjection code y) = code.decode y := by
  simp [symbolProjection]

@[simp]
theorem projection_encode (code : Code ℝ X Y) (x : X) :
    symbolProjection code (code.encode x) = code.encode x := by
  simp [symbolProjection]

@[simp]
theorem projection_idempotent (code : Code ℝ X Y) (y : Y) :
    symbolProjection code (symbolProjection code y) = symbolProjection code y := by
  simp [symbolProjection]

/-- A source-preserving affine contraction on each decoder fiber when |r| < 1.
It is not asserted to be a strict contraction on all of symbol space. -/
def symbolStep (code : Code ℝ X Y) (r : ℝ) (y : Y) : Y :=
  symbolProjection code y + r • (y - symbolProjection code y)

@[simp]
theorem decode_step (code : Code ℝ X Y) (r : ℝ) (y : Y) :
    code.decode (symbolStep code r y) = code.decode y := by
  simp [symbolStep, symbolProjection]

@[simp]
theorem step_encode (code : Code ℝ X Y) (r : ℝ) (x : X) :
    symbolStep code r (code.encode x) = code.encode x := by
  simp [symbolStep]

/-- Exactly the complementary symbol component is scaled. -/
theorem step_residual (code : Code ℝ X Y) (r : ℝ) (y : Y) :
    symbolStep code r y - symbolProjection code y =
      r • (y - symbolProjection code y) := by
  simp [symbolStep]

/-- The whole orbit is specified by primitive recursion from its initial symbols. -/
def iterateSymbols (code : Code ℝ X Y) (r : ℝ) (y : Y) : ℕ → Y
  | 0 => y
  | n + 1 => symbolStep code r (iterateSymbols code r y n)

@[simp]
theorem decode_iterateSymbols (code : Code ℝ X Y) (r : ℝ) (y : Y) (n : ℕ) :
    code.decode (iterateSymbols code r y n) = code.decode y := by
  induction n with
  | zero => rfl
  | succ n ih =>
      simpa only [iterateSymbols, decode_step] using ih

/-- Closed residual formula; it retains the original decoded payload at every stage. -/
theorem iterateSymbols_residual (code : Code ℝ X Y) (r : ℝ) (y : Y) (n : ℕ) :
    iterateSymbols code r y n - symbolProjection code y =
      r ^ n • (y - symbolProjection code y) := by
  induction n with
  | zero => simp [iterateSymbols]
  | succ n ih =>
      calc
        iterateSymbols code r y (n + 1) - symbolProjection code y =
            r • (iterateSymbols code r y n - symbolProjection code y) := by
              simpa only [iterateSymbols, symbolProjection, decode_iterateSymbols]
                using step_residual code r (iterateSymbols code r y n)
        _ = r ^ (n + 1) • (y - symbolProjection code y) := by
              rw [ih, smul_smul, pow_succ']

/-- Geometric decay is in the symbol residual, not in the source or a Weil form. -/
theorem norm_iterateSymbols_residual (code : Code ℝ X Y)
    (r : ℝ) (y : Y) (n : ℕ) :
    ‖iterateSymbols code r y n - symbolProjection code y‖ =
      |r| ^ n * ‖y - symbolProjection code y‖ := by
  rw [iterateSymbols_residual, norm_smul, Real.norm_eq_abs, abs_pow]

/-- Every observable of the decoded payload, including a signed form, is invariant. -/
theorem decoded_observable_invariant {Z : Type*} (code : Code ℝ X Y)
    (observable : X → Z) (r : ℝ) (y : Y) (n : ℕ) :
    observable (code.decode (iterateSymbols code r y n)) =
      observable (code.decode y) := by
  rw [decode_iterateSymbols]

/-- Zero step factor gives the specified projection in one step. -/
theorem zero_step (code : Code ℝ X Y) (y : Y) :
    symbolStep code 0 y = symbolProjection code y := by
  simp [symbolStep]

/-- The endpoint r = 1 is the identity and provides no strict error decay. -/
theorem one_step (code : Code ℝ X Y) (y : Y) :
    symbolStep code 1 y = y := by
  simp [symbolStep]

end

end GRWTSK.LinearAlgebra.LinearMap.DecodedSourceIteration
