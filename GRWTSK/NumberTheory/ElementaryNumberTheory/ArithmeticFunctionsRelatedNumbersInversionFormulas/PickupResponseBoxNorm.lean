import Mathlib

/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

Finite Hilbert-valued box identities for the response-weighted pickup
parallelogram. No external Gowers-uniformity theorem is imported.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupResponseBoxNorm

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]

/-- One real Hilbert-valued four-corner observation. -/
def boxTerm (F : ℕ → V) (m r k : ℕ) : ℝ :=
  ⟪F m, F (m + r)⟫_ℝ * ⟪F (m + k), F (m + k + r)⟫_ℝ

/-- Finite box observation over prescribed base points and two edge sets. -/
def boxObservation
    (bases shiftsR shiftsK : Finset ℕ) (F : ℕ → V) : ℝ :=
  ∑ m ∈ bases, ∑ r ∈ shiftsR, ∑ k ∈ shiftsK, boxTerm F m r k

/-- For scalar coefficients embedded along a fixed Hilbert vector, the box term
is exactly the scalar parallelogram coefficient times the fourth power of the
vector norm. -/
theorem boxTerm_smul
    (a : ℕ → ℝ) (v : V) (m r k : ℕ) :
    boxTerm (fun n => a n • v) m r k =
      (a m * a (m + r) * a (m + k) * a (m + k + r)) * ‖v‖ ^ 4 := by
  simp [boxTerm, real_inner_smul_left, real_inner_smul_right]
  ring

/-- A typed Hilbert realization of a real Gram kernel. -/
structure GramHilbertRealization where
  carrier : Type*
  instNormedAddCommGroup : NormedAddCommGroup carrier
  instInnerProductSpace : InnerProductSpace ℝ carrier
  responseVector : ℕ → carrier
  gram : ℕ → ℕ → ℝ
  gram_eq_inner :
    ∀ m n,
      letI := instNormedAddCommGroup
      letI := instInnerProductSpace
      ⟪responseVector m, responseVector n⟫_ℝ = gram m n

/-- Exact obligations for transferring scalar Möbius Gowers/box uniformity to
the complete response-weighted source.  This is an obligation record, not a
supplier. -/
structure ResponseWeightedGowersBridge where
  exactResponseHilbertRealization : Prop
  scalarMobiusUniformityAvailable : Prop
  multiplicationByResponseControlled : Prop
  selectedDivisorSignsPreserved : Prop
  gcdCollisionInventoryPreserved : Prop
  roughMasksPreserved : Prop
  clippedEndpointsPreserved : Prop
  diagonalPaid : Prop
  completeComplementPreserved : Prop
  growingCoefficientUniformity : Prop
  quantitativeSavingSurvives : Prop

end GRWTSK.NumberTheory.Moebius.PickupResponseBoxNorm
