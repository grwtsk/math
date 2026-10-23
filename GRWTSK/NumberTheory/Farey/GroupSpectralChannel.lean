/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
The native two-coordinate spectral obstruction is an exact finite algebra
statement. It is NOT an infinite-volume spectral or RH claim.
-/
import GRWTSK.NumberTheory.Farey.GroupSuperwalk
import Mathlib.Tactic

/-!
# Farey group superwalks and native spectral-channel obstruction

Both integral Farey shear generators act on the same two-dimensional
complexified coordinate carrier. Every matrix commuting with both is scalar.
Consequently an idempotent projector commuting with all Farey turns is either
zero or identity. There is NO nontrivial native simultaneous sector split.

This does not exclude spectral channels in an enlarged representation,
a single return/monodromy operator, a projective action, or a non-equivariant
observable. A logarithmic spiral needs an additional scalar eigenchannel,
radial growth and an angular normalization; none is inferred from Farey labels.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.GroupSpectralChannel

open Matrix
open GRWTSK.NumberTheory.Farey.GroupSuperwalk

abbrev MatC := Matrix (Fin 2) (Fin 2) ℂ

/-- Same Farey generator words represented on the complex two-coordinate space. -/
def complexWord : List Turn → MatC
  | [] => 1
  | t :: ts => (turnShear t : MatC) * complexWord ts

@[simp] theorem complexWord_nil : complexWord [] = 1 := rfl

@[simp] theorem complexWord_cons (t : Turn) (ts : List Turn) :
    complexWord (t :: ts) = (turnShear t : MatC) * complexWord ts := rfl

theorem complexWord_append (u v : List Turn) :
    complexWord (u ++ v) = complexWord u * complexWord v := by
  induction u with
  | nil => simp [complexWord]
  | cons t ts ih => simp [complexWord, ih, Matrix.mul_assoc]

/-- A supplied equivariant channel projector commutes with every chronological
word. This transports a channel assumption; it does not construct one. -/
theorem commutes_complexWord (P : MatC)
    (hL : P * (leftShear : MatC) = (leftShear : MatC) * P)
    (hR : P * (rightShear : MatC) = (rightShear : MatC) * P)
    (w : List Turn) :
    P * complexWord w = complexWord w * P := by
  induction w with
  | nil => simp [complexWord]
  | cons t ts ih =>
      have ht : P * (turnShear t : MatC) =
          (turnShear t : MatC) * P := by
        cases t with
        | left => simpa [turnShear] using hL
        | right => simpa [turnShear] using hR
      change P * ((turnShear t : MatC) * complexWord ts) =
        ((turnShear t : MatC) * complexWord ts) * P
      calc
        P * ((turnShear t : MatC) * complexWord ts) =
            (P * turnShear t) * complexWord ts := (Matrix.mul_assoc _ _ _).symm
        _ = (turnShear t * P) * complexWord ts := by rw [ht]
        _ = turnShear t * (P * complexWord ts) := Matrix.mul_assoc _ _ _
        _ = turnShear t * (complexWord ts * P) := by rw [ih]
        _ = ((turnShear t : MatC) * complexWord ts) * P :=
          (Matrix.mul_assoc _ _ _).symm

/-- Exact centralizer obstruction for the actual opposed Farey shears. -/
theorem commutant_is_scalar (P : MatC)
    (hL : P * (leftShear : MatC) = (leftShear : MatC) * P)
    (hR : P * (rightShear : MatC) = (rightShear : MatC) * P) :
    P = (P 0 0) • (1 : MatC) := by
  have hb : P 0 1 = 0 := by
    have h := congrArg (fun M : MatC => M 0 0) hL
    norm_num [leftShear, Matrix.mul_apply, Fin.sum_univ_two] at h
    linear_combination h
  have hd : P 1 1 = P 0 0 := by
    have h := congrArg (fun M : MatC => M 1 0) hL
    norm_num [leftShear, Matrix.mul_apply, Fin.sum_univ_two] at h
    linear_combination h
  have hc : P 1 0 = 0 := by
    have h := congrArg (fun M : MatC => M 0 0) hR
    norm_num [rightShear, Matrix.mul_apply, Fin.sum_univ_two] at h
    exact h
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [Matrix.smul_apply, hb, hc, hd]

/-- No nontrivial idempotent can be a spectral channel invariant under
BOTH native Farey generators. Enlarged or block-return representations are
not covered by this obstruction. -/
theorem native_invariant_projector_trivial (P : MatC)
    (hIdem : P * P = P)
    (hL : P * (leftShear : MatC) = (leftShear : MatC) * P)
    (hR : P * (rightShear : MatC) = (rightShear : MatC) * P) :
    P = 0 ∨ P = 1 := by
  let a : ℂ := P 0 0
  have hs : P = a • (1 : MatC) := commutant_is_scalar P hL hR
  have hp := hIdem
  rw [hs] at hp
  have ha : a * a = a := by
    have h00 := congrArg (fun M : MatC => M 0 0) hp
    norm_num [Matrix.mul_apply, Fin.sum_univ_two, Matrix.smul_apply] at h00
    simpa using h00
  have hz : a * (a - 1) = 0 := by
    calc
      a * (a - 1) = a * a - a := by ring
      _ = 0 := sub_eq_zero.mpr ha
  rcases mul_eq_zero.mp hz with h0 | h1
  · exact Or.inl (hs.trans (by simp [h0]))
  · exact Or.inr (hs.trans (by simp [sub_eq_zero.mp h1]))

theorem no_proper_native_channel (P : MatC)
    (hIdem : P * P = P)
    (hL : P * (leftShear : MatC) = (leftShear : MatC) * P)
    (hR : P * (rightShear : MatC) = (rightShear : MatC) * P)
    (hNonzero : P ≠ 0) (hProper : P ≠ 1) : False := by
  rcases native_invariant_projector_trivial P hIdem hL hR with h | h
  · exact hNonzero h
  · exact hProper h

end GRWTSK.NumberTheory.Farey.GroupSpectralChannel
