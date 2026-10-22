/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External manuscript pattern:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/02-tensors.tex.
This file formalizes only the rational trace-form algebra.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMNumberFieldIndex
import Mathlib.RingTheory.Discriminant

/-!
# CM trace polarization algebra

For a finite Galois CM number field E and a nonzero anti-invariant element
xi, define

  psi_xi(x,y) = Tr_{E/Q}(xi * x * c(y)).

The local source proves trace invariance under CM conjugation, skew-symmetry,
alternation, and left/right nondegeneracy. It does not prove the archimedean
positivity required of a Hodge polarization, integrality on a lattice, or the
Riemann criterion realizing the Hodge structure by an abelian variety.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMTracePolarization

open CMNumberFieldIndex

noncomputable section

variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]

/-- Field trace is invariant under the canonical CM conjugation. -/
theorem trace_complexConj (z : E) :
    Algebra.trace ℚ E (galoisComplexConj E z) = Algebra.trace ℚ E z := by
  apply (algebraMap ℚ E).injective
  rw [trace_eq_sum_automorphisms, trace_eq_sum_automorphisms]
  have h := Equiv.sum_comp
    (Equiv.mulRight (galoisComplexConj E))
    (fun σ : E ≃ₐ[ℚ] E => σ z)
  simpa only [AlgEquiv.mul_apply] using h

/-- Rational trace pairing associated with an anti-invariant CM element. -/
def tracePairing (xi x y : E) : ℚ :=
  Algebra.trace ℚ E (xi * x * galoisComplexConj E y)

/-- Data needed for the algebraic part of a weight-one CM polarization. -/
structure TracePolarizationData where
  xi : E
  xi_ne_zero : xi ≠ 0
  antiInvariant : galoisComplexConj E xi = -xi

/-- The trace pairing is skew-symmetric for an anti-invariant xi. -/
theorem tracePairing_skew
    (P : TracePolarizationData E) (x y : E) :
    tracePairing E P.xi y x = - tracePairing E P.xi x y := by
  unfold tracePairing
  rw [← trace_complexConj E
    (P.xi * y * galoisComplexConj E x)]
  simp only [map_mul, P.antiInvariant, galoisComplexConj_apply_apply]
  have hinside :
      (-P.xi) * galoisComplexConj E y * x =
        -(P.xi * x * galoisComplexConj E y) := by
    ring
  rw [hinside, map_neg]

/-- In characteristic zero, skew-symmetry gives alternation. -/
theorem tracePairing_self
    (P : TracePolarizationData E) (x : E) :
    tracePairing E P.xi x x = 0 := by
  have h := tracePairing_skew E P x x
  linarith

/-- The trace pairing separates its left argument whenever xi is nonzero. -/
theorem tracePairing_left_nondegenerate
    (P : TracePolarizationData E) (x : E)
    (h : ∀ y : E, tracePairing E P.xi x y = 0) :
    x = 0 := by
  have hprod : P.xi * x = 0 := by
    apply (traceForm_nondegenerate ℚ E).1 (P.xi * x)
    intro z
    have hz := h (galoisComplexConj E z)
    simpa only [tracePairing, galoisComplexConj_apply_apply,
      Algebra.traceForm_apply, mul_assoc] using hz
  exact (mul_eq_zero.mp hprod).resolve_left P.xi_ne_zero

/-- Skew-symmetry converts left nondegeneracy into right nondegeneracy. -/
theorem tracePairing_right_nondegenerate
    (P : TracePolarizationData E) (y : E)
    (h : ∀ x : E, tracePairing E P.xi x y = 0) :
    y = 0 := by
  apply tracePairing_left_nondegenerate E P y
  intro x
  rw [tracePairing_skew E P]
  simp [h x]

/-- Source-level algebraic polarization package: alternating and nondegenerate.
Archimedean positivity is intentionally absent. -/
theorem tracePairing_alternating_nondegenerate
    (P : TracePolarizationData E) :
    (∀ x : E, tracePairing E P.xi x x = 0) ∧
      (∀ x : E, (∀ y : E, tracePairing E P.xi x y = 0) → x = 0) ∧
      (∀ y : E, (∀ x : E, tracePairing E P.xi x y = 0) → y = 0) :=
  ⟨tracePairing_self E P, tracePairing_left_nondegenerate E P,
    tracePairing_right_nondegenerate E P⟩

end

end GRWTSK.AlgebraicGeometry.Hodge.CMTracePolarization
