/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.NumberTheory.DirichletCharacter.Orthogonality
import Mathlib.NumberTheory.MulChar.Lemmas
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Universal finite ratio-class Fourier transform for pair sources

For an arbitrary FINITE inventory S and arbitrary complex weights
w(x), each source item has numerator and denominator in ZMod q.
The character pair coefficient is
  chi(num x) * star(chi(den x)) * w(x).

If den(x) is a unit, pinned
MulChar.star_apply', MulChar.inv_apply' and map_mul give
  chi(num x)*star(chi(den x))
    = chi(num x * (den x)^(-1)).
If den(x) is not a unit, BOTH sides vanish for every genuine
DirichletCharacter, by MulChar.map_nonunit.

Consequently the true pair source is the finite character
Fourier transform of the ratio-class weight:
  B(a)=sum_(x in S, den x unit, num x / den x=a) w(x).

No arithmetic source, signed Möbius assertion, physical time,
GRH, RH or probabilistic independence is assumed here.
This module is independently importable from pinned Mathlib.

NEW Lean bodies are SOURCE PROOF CANDIDATES. Compilation, exact
expected types, fresh kernel and transitive axiom audit NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletPairRatioFinite

variable (q : ℕ) [NeZero q]
variable {α : Type*}
classical

/-- Generic complex character-weighted pair source. The
second character is conjugated, not multiplied unconjugated. -/
def pairCharacterSum (S : Finset α)
    (num den : α → ZMod q) (w : α → ℂ)
    (χ : DirichletCharacter ℂ q) : ℂ :=
  ∑ x ∈ S, χ (num x) * star (χ (den x)) * w x

/-- Genuine multiplicative residue-ratio coefficient, with
the denominator-unit condition preserved exactly. -/
def pairRatioCoefficient (S : Finset α)
    (num den : α → ZMod q) (w : α → ℂ)
    (a : ZMod q) : ℂ :=
  ∑ x ∈ S,
    if IsUnit (den x) ∧ num x * (den x)⁻¹ = a then w x else 0

/-- Source-independent exact character-to-ratio Fourier map.
A nonunit denominator is discarded ONLY because every true
character vanishes on it; no generic complex model is substituted. -/
theorem pairCharacterSum_eq_ratioFourier
    (S : Finset α) (num den : α → ZMod q)
    (w : α → ℂ) (χ : DirichletCharacter ℂ q) :
    pairCharacterSum q S num den w χ =
      ∑ a : ZMod q, χ a * pairRatioCoefficient q S num den w a := by
  have hterm (x : α) :
      χ (num x) * star (χ (den x)) * w x =
        ∑ a : ZMod q,
          χ a * (if IsUnit (den x) ∧
              num x * (den x)⁻¹ = a then w x else 0) := by
    by_cases hu : IsUnit (den x)
    · have hconj :
          star (χ (den x)) = χ ((den x)⁻¹) := by
        rw [MulChar.star_apply' χ (den x),
          MulChar.inv_apply' χ (den x)]
      calc
        _ = χ (num x * (den x)⁻¹) * w x := by
          rw [hconj, map_mul]
        _ = ∑ a : ZMod q,
              χ a * (if IsUnit (den x) ∧
                num x * (den x)⁻¹ = a then w x else 0) := by
          simp [hu]
    · have hz : χ (den x) = 0 :=
        MulChar.map_nonunit χ hu
      simp [hz, hu]
  unfold pairCharacterSum
  calc
    (∑ x ∈ S, χ (num x) * star (χ (den x)) * w x) =
        ∑ x ∈ S, ∑ a : ZMod q,
          χ a * (if IsUnit (den x) ∧
            num x * (den x)⁻¹ = a then w x else 0) := by
      apply Finset.sum_congr rfl
      intro x hx
      exact hterm x
    _ = ∑ a : ZMod q, ∑ x ∈ S,
        χ a * (if IsUnit (den x) ∧
          num x * (den x)⁻¹ = a then w x else 0) :=
      Finset.sum_comm
    _ = ∑ a : ZMod q,
        χ a * pairRatioCoefficient q S num den w a := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [Finset.mul_sum]

end GRWTSK.NumberTheory.Moebius.DirichletPairRatioFinite
