import Mathlib.LinearAlgebra.Quotient.Basic
import Mathlib.RingTheory.DualNumber
import Mathlib.RingTheory.Jacobson.Radical
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.NormNum

/-!
# Observation fibers and Jacobson quotient descent

A linear observation with kernel `J` has affine fibers `a + J`, and induces an
injective map from the quotient. Identifying `J` with a native module or ring
Jacobson radical is an additional mathematical obligation. These generic results
do not establish that identification for any spectral or arithmetic observation.

An arbitrary function descends precisely when it is constant on every coset.
Vanishing on `J` alone is sufficient for a linear function, but insufficient for
a nonlinear function. Dual numbers over `ℝ` give a concrete counterexample whose
augmentation kernel really is the native ring Jacobson radical.

Two operators preserving `J` commute on the quotient precisely when their
commutator takes every vector into `J`. Preservation alone does not imply this.
-/

namespace FormalResearch.MathematicalTooling.JacobsonObservation

section Linear

variable {R V W : Type*} [Ring R] [AddCommGroup V] [Module R V]
  [AddCommGroup W] [Module R W]

/-- Equal observations are exactly differences in the specified kernel. -/
theorem observation_eq_iff_sub_mem (J : Submodule R V) (obs : V →ₗ[R] W)
    (hker : LinearMap.ker obs = J) (x y : V) :
    obs x = obs y ↔ x - y ∈ J := by
  rw [← hker, LinearMap.mem_ker, map_sub, sub_eq_zero]

/-- Every observation fiber is an affine translate of its kernel. -/
theorem observation_eq_iff_exists_add (J : Submodule R V) (obs : V →ₗ[R] W)
    (hker : LinearMap.ker obs = J) (a x : V) :
    obs x = obs a ↔ ∃ j ∈ J, x = a + j := by
  rw [observation_eq_iff_sub_mem J obs hker]
  constructor
  · intro hx
    exact ⟨x - a, hx, by simp only [← add_sub_assoc, add_sub_cancel_left]⟩
  · rintro ⟨j, hj, rfl⟩
    simpa only [add_sub_cancel_left] using hj

/-- A set-valued version of the affine fiber identity. -/
theorem observation_fiber_eq_range (J : Submodule R V) (obs : V →ₗ[R] W)
    (hker : LinearMap.ker obs = J) (a : V) :
    {x | obs x = obs a} = Set.range (fun j : J ↦ a + (j : V)) := by
  ext x
  rw [Set.mem_ofPred_eq, observation_eq_iff_exists_add J obs hker]
  constructor
  · rintro ⟨j, hj, rfl⟩
    exact ⟨⟨j, hj⟩, rfl⟩
  · rintro ⟨j, rfl⟩
    exact ⟨j, j.property, rfl⟩

/-- No information beyond the kernel is lost by the induced linear observation. -/
theorem quotient_observation_injective (J : Submodule R V) (obs : V →ₗ[R] W)
    (hker : LinearMap.ker obs = J) :
    Function.Injective (J.liftQ obs hker.ge) :=
  LinearMap.ker_eq_bot.mp (J.ker_liftQ_eq_bot' obs hker.symm)

end Linear

section Functions

variable {R V T : Type*} [Ring R] [AddCommGroup V] [Module R V]

/-- The full translation invariance required to descend a possibly nonlinear function. -/
def CosetInvariant (J : Submodule R V) (Q : V → T) : Prop :=
  ∀ x j, j ∈ J → Q (x + j) = Q x

/-- Descent of a function constant on every coset of `J`. -/
def descend (J : Submodule R V) (Q : V → T) (hQ : CosetInvariant J Q) :
    V ⧸ J → T :=
  Quotient.lift Q fun x y h ↦ by
    have hxy : x - y ∈ J := J.quotientRel_def.mp h
    simpa only [← add_sub_assoc, add_sub_cancel_left] using hQ y (x - y) hxy

@[simp]
theorem descend_mkQ (J : Submodule R V) (Q : V → T) (hQ : CosetInvariant J Q)
    (x : V) : descend J Q hQ (Submodule.Quotient.mk x) = Q x := rfl

/-- Arbitrary-function factorization requires constancy on all cosets, rather than
only agreement at points of the kernel. -/
theorem coset_invariant_iff_quotient_factor (J : Submodule R V) (Q : V → T) :
    CosetInvariant J Q ↔ ∃ Qbar : V ⧸ J → T, Q = Qbar ∘ J.mkQ := by
  constructor
  · intro hQ
    exact ⟨descend J Q hQ, rfl⟩
  · rintro ⟨Qbar, rfl⟩ x j hj
    change Qbar (J.mkQ (x + j)) = Qbar (J.mkQ x)
    congr 1
    rw [map_add, (show J.mkQ j = 0 from (Submodule.Quotient.mk_eq_zero J).mpr hj),
      add_zero]

/-- For a linear function the full coset criterion reduces to kernel containment. -/
theorem linear_coset_invariant_iff {W : Type*} [AddCommGroup W] [Module R W]
    (J : Submodule R V) (Q : V →ₗ[R] W) :
    CosetInvariant J Q ↔ J ≤ LinearMap.ker Q := by
  constructor
  · intro hQ j hj
    simpa only [zero_add, map_zero, LinearMap.mem_ker] using hQ 0 j hj
  · intro hQ x j hj
    rw [map_add, (LinearMap.mem_ker.mp (hQ hj)), add_zero]

end Functions

section Operators

variable {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]

/-- The exact criterion for two preserving operators to commute after descent.
The hypotheses are Mathlib's native quotient-map preservation conditions. -/
theorem quotient_maps_commute_iff (J : Submodule R V) (A B : V →ₗ[R] V)
    (hA : J ≤ J.comap A) (hB : J ≤ J.comap B) :
    (J.mapQ J A hA).comp (J.mapQ J B hB) =
      (J.mapQ J B hB).comp (J.mapQ J A hA) ↔
    ∀ x, A (B x) - B (A x) ∈ J := by
  constructor
  · intro h x
    have hx := congrArg (fun f : V ⧸ J →ₗ[R] V ⧸ J ↦ f (J.mkQ x)) h
    exact (Submodule.Quotient.eq J).mp hx
  · intro h
    ext x
    exact (Submodule.Quotient.eq J).mpr (h x)

end Operators

section RingRadical

variable {K A W : Type*} [CommRing K] [Ring A] [Algebra K A]
  [AddCommGroup W] [Module K W]

/-- For an algebra, the proposed radical fiber identity requires equality of the
observation kernel with the scalar restriction of the native ring radical. -/
theorem ring_radical_observation_fiber (obs : A →ₗ[K] W)
    (hker : LinearMap.ker obs = (Ring.jacobson A).restrictScalars K) (a x : A) :
    obs x = obs a ↔ ∃ j ∈ Ring.jacobson A, x = a + j :=
  observation_eq_iff_exists_add _ obs hker a x

end RingRadical

section DualNumbers

open TrivSqZeroExt

/-- The augmentation of dual numbers to their base field. -/
def dualObservation (K : Type*) [Field K] : DualNumber K →+* K :=
  (fstHom K K K).toRingHom

/-- Here the observation kernel is provably the native ring Jacobson radical. -/
theorem dual_observation_ker_eq_jacobson (K : Type*) [Field K] :
    RingHom.ker (dualObservation K) = Ring.jacobson (DualNumber K) := by
  rw [IsLocalRing.ringJacobson_eq_maximalIdeal]
  exact IsLocalRing.ker_eq_maximalIdeal (dualObservation K) fun k ↦ ⟨inl k, rfl⟩

/-- A nonlinear quantity on dual numbers. -/
def dualProduct (x : DualNumber ℝ) : ℝ := x.fst * x.snd

/-- This nonlinear quantity vanishes on the actual Jacobson radical. -/
theorem dual_product_vanishes_on_jacobson :
    ∀ x ∈ Ring.jacobson (DualNumber ℝ), dualProduct x = 0 := by
  intro x hx
  rw [← dual_observation_ker_eq_jacobson ℝ, RingHom.mem_ker] at hx
  change x.fst = 0 at hx
  simp [dualProduct, hx]

/-- The square-zero infinitesimal is in the actual Jacobson radical. -/
theorem dual_eps_mem_jacobson :
    (DualNumber.eps : DualNumber ℝ) ∈ Ring.jacobson (DualNumber ℝ) := by
  rw [← dual_observation_ker_eq_jacobson ℝ, RingHom.mem_ker]
  rfl

/-- The radical contains a nonzero element whose square is zero. -/
theorem dual_eps_nonzero_square_zero :
    (DualNumber.eps : DualNumber ℝ) ≠ 0 ∧
      (DualNumber.eps : DualNumber ℝ) ^ 2 = 0 := by
  constructor
  · intro h
    have hsnd := congrArg TrivSqZeroExt.snd h
    norm_num at hsnd
  · exact DualNumber.eps_pow_two

/-- Vanishing on the radical does not make this nonlinear quantity constant on
radical cosets: translating `1` by the square-zero infinitesimal changes it. -/
theorem dual_product_not_coset_invariant :
    ¬ CosetInvariant ((Ring.jacobson (DualNumber ℝ)).restrictScalars ℝ) dualProduct := by
  intro h
  have heq := h 1 DualNumber.eps dual_eps_mem_jacobson
  norm_num [dualProduct, TrivSqZeroExt.fst_add, TrivSqZeroExt.snd_add] at heq

/-- A concrete obstruction to arbitrary-function quotient factorization, even
though the quantity vanishes on the genuine Jacobson radical. -/
theorem dual_product_no_quotient_factor :
    ¬ ∃ Qbar : DualNumber ℝ ⧸ (Ring.jacobson (DualNumber ℝ)).restrictScalars ℝ → ℝ,
      dualProduct = Qbar ∘ ((Ring.jacobson (DualNumber ℝ)).restrictScalars ℝ).mkQ :=
  fun h ↦ dual_product_not_coset_invariant
    ((coset_invariant_iff_quotient_factor _ dualProduct).mpr h)

/-- Even on one fixed observation fiber, this nonlinear quantity can take every
real value. Radical identification alone therefore supplies no bound for it. -/
theorem dual_product_fiber_full_range (t : ℝ) :
    ∃ x : DualNumber ℝ, dualObservation ℝ x = 1 ∧ dualProduct x = t := by
  refine ⟨⟨1, t⟩, rfl, ?_⟩
  simp [dualProduct]

/-- A fixed observed value does not bound a quantity that varies along its fiber. -/
theorem dual_product_no_upper_bound_on_fiber :
    ¬ ∃ C : ℝ, ∀ x : DualNumber ℝ, dualObservation ℝ x = 1 → dualProduct x ≤ C := by
  rintro ⟨C, hC⟩
  obtain ⟨x, hx, hvalue⟩ := dual_product_fiber_full_range (C + 1)
  have h := hC x hx
  rw [hvalue] at h
  exact (lt_add_one C).not_ge h

end DualNumbers

end FormalResearch.MathematicalTooling.JacobsonObservation
