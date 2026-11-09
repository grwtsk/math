/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusFourierTrace
import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic

/-!
# Character-resolved finite Frobenius trace on the actual unit fiber

Main source: grwtsk/math@e427072a9b8c1ecf68039a827c88748ecc5a0846.
The existing Frobenius windings, permutation matrix, zero modes and
complete AddChar basis are reused, not reconstructed from a new graph.
Upstream finite Fourier basis: Mathlib PontryaginDuality.lean,
mathlib4@d13f23b723b8a846827a245b89c10fc7d3f11612.
Arithmetic geometry: Alain Connes and Caterina Consani,
"Knots, primes and class field theory" (2025), arXiv:2501.06560.

For finite abelian G and character chi:G ->* C, let
  U_a^m(x,y) = 1 if a^m*x=y, otherwise 0,
  P_chi(x,y) = chi(x)*chi(y^-1)/|G|.
The P matrix is the usual rank-one character projector, with its
inverse character rather than an assumed complex conjugate. Since
every chi(x) is nonzero and chi(x)*chi(x^-1)=1, the diagonal
of U_a^m P_chi gives the full normalized matrix coefficient:
  Tr(U_a^m P_chi)
    = (1/|G|) sum_x chi(a^m*x) chi(x^-1)
    = chi(a)^m.
This returns the EVERY-POWER character phase; its first return is
nonzero even when the unweighted Frobenius permutation trace vanishes.

The exact complete-source complement is:
  sum over ALL AddChar modes of Tr(U_a^m P_psi)
       = Tr(U_a^m)
       = if orderOf(a) divides m then |G| else 0.
This is Fourier orthogonality on the original finite group, not
a proof of a trace-class infinite Weil operator.

The character-resolved scalar is generally complex. Positivity of the
rank-one projector or graph energy does NOT establish positivity of the
independent signed, pole-inclusive arithmetic Weil form. No source
operator, conductor/gamma factor, zeta pole, limiting domain, signed
remote residual, RH or Dirichlet GRH is identified by this theorem.
No novel finite harmonic analysis theorem is claimed. Native Lean,
kernel and independent review have not been run.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusCharacterProjector

open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusInvariantLoops
open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusFourierTrace

variable {G : Type*} [CommGroup G] [Fintype G]

/-- The positive cardinality of the original finite group is the
normalization, not the number of separate closed Frobenius orbits. -/
theorem groupCard_pos : 0 < Fintype.card G :=
  Fintype.card_pos_iff.mpr ⟨(1 : G)⟩

theorem groupCard_complex_ne_zero : (Fintype.card G : ℂ) ≠ 0 := by
  exact_mod_cast (Nat.ne_of_gt (groupCard_pos (G := G)))

/-- A finite-group character into C cannot vanish anywhere. -/
theorem character_value_nonzero (chi : G →* ℂ) (x : G) : chi x ≠ 0 := by
  have h : chi x * chi x⁻¹ = 1 := by
    calc
      chi x * chi x⁻¹ = chi (x * x⁻¹) := (map_mul chi x x⁻¹).symm
      _ = 1 := by simp
  intro hx
  rw [hx, zero_mul] at h
  exact zero_ne_one h

/-- The exact nonzero, finite character cancellation law. -/
theorem character_inverse_cancel (chi : G →* ℂ) (x : G) :
    chi x * chi x⁻¹ = 1 := by
  calc
    chi x * chi x⁻¹ = chi (x * x⁻¹) := (map_mul chi x x⁻¹).symm
    _ = 1 := by simp

/-- The original permutation matrix is multiplied by this actual
rank-one character projector; no unweighted trace is substituted. -/
def characterProjector (chi : G →* ℂ) : Matrix G G ℂ :=
  fun x y => chi x * chi y⁻¹ / (Fintype.card G : ℂ)

/-- The normalized character-resolved return, written as an exact
finite average on the original group fiber. -/
def characterResolvedReturn (chi : G →* ℂ) (a : G) (m : ℕ) : ℂ :=
  (∑ x : G, chi (a ^ m * x) * chi x⁻¹) / (Fintype.card G : ℂ)

theorem character_term (chi : G →* ℂ) (a x : G) (m : ℕ) :
    chi (a ^ m * x) * chi x⁻¹ = (chi a) ^ m := by
  calc
    chi (a ^ m * x) * chi x⁻¹ =
        chi ((a ^ m * x) * x⁻¹) :=
          (map_mul chi (a ^ m * x) x⁻¹).symm
    _ = chi (a ^ m) := by simp [mul_assoc]
    _ = (chi a) ^ m := map_pow chi a m

/-- Every summand in the character-resolved trace equals the same
prime-power phase; there are exactly card(G) such summands. -/
theorem character_sum_return (chi : G →* ℂ) (a : G) (m : ℕ) :
    (∑ x : G, chi (a ^ m * x) * chi x⁻¹) =
      (Fintype.card G : ℂ) * (chi a) ^ m := by
  calc
    (∑ x : G, chi (a ^ m * x) * chi x⁻¹) =
        ∑ _x : G, (chi a) ^ m := by
          apply Finset.sum_congr rfl
          intro x hx
          exact character_term chi a x m
    _ = (Fintype.card G : ℂ) * (chi a) ^ m := by simp

/-- The exact individual character sector extracted from the whole
Frobenius orbit space. In particular, it need not vanish at m=1. -/
theorem characterResolvedReturn_eq_pow (chi : G →* ℂ) (a : G) (m : ℕ) :
    characterResolvedReturn chi a m = (chi a) ^ m := by
  unfold characterResolvedReturn
  rw [character_sum_return]
  field_simp [groupCard_complex_ne_zero (G := G)]

/-- The diagonal of the actual product U_a^m P_chi is the character
return at x divided by the EXACT group cardinality. -/
theorem winding_projector_diagonal (chi : G →* ℂ)
    (a : G) (m : ℕ) (x : G) :
    (windingMatrix a m * characterProjector chi) x x =
      chi (a ^ m * x) * chi x⁻¹ / (Fintype.card G : ℂ) := by
  classical
  change (∑ y : G, (if a ^ m * x = y then (1 : ℂ) else 0) *
      (chi y * chi x⁻¹ / (Fintype.card G : ℂ))) =
      chi (a ^ m * x) * chi x⁻¹ / (Fintype.card G : ℂ)
  simp

/-- This is a genuine MATRIX TRACE after a rank-one character
projection, not merely an independently named scalar coefficient. -/
theorem projected_winding_trace_eq_return (chi : G →* ℂ)
    (a : G) (m : ℕ) :
    (windingMatrix a m * characterProjector chi).trace =
      characterResolvedReturn chi a m := by
  classical
  unfold Matrix.trace characterResolvedReturn
  simp_rw [Matrix.diag_apply, winding_projector_diagonal]
  rw [Finset.sum_div]

/-- The complete source operator has the exact character-resolved
matrix trace, including every m-fold return. -/
theorem projected_winding_trace (chi : G →* ℂ) (a : G) (m : ℕ) :
    (windingMatrix a m * characterProjector chi).trace =
      (chi a) ^ m := by
  rw [projected_winding_trace_eq_return,
    characterResolvedReturn_eq_pow]

/-- The character matrix is genuinely a rank-one projector: its
square equals itself. The proof keeps the full finite fiber sum and
cancels the exact character inverse at each intermediate fiber. -/
theorem characterProjector_idempotent (chi : G →* ℂ) :
    characterProjector chi * characterProjector chi =
      characterProjector chi := by
  classical
  have hN : (Fintype.card G : ℂ) ≠ 0 :=
    groupCard_complex_ne_zero (G := G)
  ext x y
  change
    (∑ z : G,
      (chi x * chi z⁻¹ / (Fintype.card G : ℂ)) *
      (chi z * chi y⁻¹ / (Fintype.card G : ℂ))) =
    chi x * chi y⁻¹ / (Fintype.card G : ℂ)
  calc
    (∑ z : G,
        (chi x * chi z⁻¹ / (Fintype.card G : ℂ)) *
        (chi z * chi y⁻¹ / (Fintype.card G : ℂ))) =
      ∑ _z : G,
        (chi x * chi y⁻¹) /
          ((Fintype.card G : ℂ) * (Fintype.card G : ℂ)) := by
        apply Finset.sum_congr rfl
        intro z hz
        have hcancel : chi z⁻¹ * chi z = 1 := by
          rw [mul_comm]
          exact character_inverse_cancel chi z
        calc
          (chi x * chi z⁻¹ / (Fintype.card G : ℂ)) *
              (chi z * chi y⁻¹ / (Fintype.card G : ℂ)) =
            ((chi x * chi y⁻¹) /
              ((Fintype.card G : ℂ) * (Fintype.card G : ℂ))) *
                (chi z⁻¹ * chi z) := by
                  field_simp [hN] <;> ring
          _ = (chi x * chi y⁻¹) /
              ((Fintype.card G : ℂ) * (Fintype.card G : ℂ)) := by
                rw [hcancel]
                ring
    _ = (Fintype.card G : ℂ) *
        ((chi x * chi y⁻¹) /
          ((Fintype.card G : ℂ) * (Fintype.card G : ℂ))) := by
            simp
    _ = chi x * chi y⁻¹ / (Fintype.card G : ℂ) := by
      field_simp [hN] <;> ring

/-- Convert the native AddChar basis element, without changing its
domain or its value on any group element. -/
def fromAddChar (psi : AddChar (Additive G) ℂ) : G →* ℂ where
  toFun := fun x => psi (Additive.ofMul x)
  map_one' := by
    change psi (0 : Additive G) = 1
    exact psi.map_zero_eq_one
  map_mul' := by
    intro x y
    change psi (Additive.ofMul x + Additive.ofMul y) =
      psi (Additive.ofMul x) * psi (Additive.ofMul y)
    exact psi.map_add_eq_mul _ _

/-- The sum of EVERY Fourier-filtered trace recovers the ordinary
permutation trace. It is the SUM of sectors, not any single chi. -/
theorem sum_all_projected_returns_eq_unweighted (a : G) (m : ℕ) :
    (∑ psi : AddChar (Additive G) ℂ,
      (windingMatrix a m * characterProjector (fromAddChar psi)).trace) =
        (windingMatrix a m).trace := by
  classical
  calc
    (∑ psi : AddChar (Additive G) ℂ,
      (windingMatrix a m * characterProjector (fromAddChar psi)).trace) =
        ∑ psi : AddChar (Additive G) ℂ,
          psi (Additive.ofMul (a ^ m)) := by
            apply Finset.sum_congr rfl
            intro psi hpsi
            rw [projected_winding_trace]
            exact (map_pow (fromAddChar psi) a m).symm
    _ = (windingMatrix a m).trace := by
      rw [AddChar.sum_apply_eq_ite, windingMatrix_trace]
      have hcard : Fintype.card (Additive G) = Fintype.card G :=
        (Fintype.card_congr (Additive.ofMul : G ≃ Additive G)).symm
      rw [hcard]
      change (if a ^ m = 1 then (Fintype.card G : ℂ) else 0) =
        if orderOf a ∣ m then (Fintype.card G : ℂ) else 0
      simp only [orderOf_dvd_iff_pow_eq_one]

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusCharacterProjector
