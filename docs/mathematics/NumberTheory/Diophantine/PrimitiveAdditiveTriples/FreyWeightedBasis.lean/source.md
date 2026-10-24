# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBasis

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70e3db66dbad4ba002e76ba8532dfa4746c3250e` · SHA-256 `6ecda563d1a6135cbf5580f3e8f660d34cc54e16473562ac2263c56fe36ed48e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib bases, finite sums and the same localized Frey coordinate ring.
Formalization assistance: OpenAI.

An actual basis and strict rank growth for the PREVIOUS bounded function
spans W_k. Linear independence is obtained by polynomial coordinate
separation, not by counting the proposed generators. The equality with a
complete Riemann--Roch section space, its divisor interpretation and all
metric/integral-lattice estimates remain separate. Source proof scripts only.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyPolynomialCoordinates
import Mathlib.LinearAlgebra.Basis.Basic
import Mathlib.LinearAlgebra.Dimension.Finrank

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBasis

open FreyTorsionOpen FreyWeightedSections FreyPolynomialCoordinates
open scoped BigOperators

variable {K : Type*} [Field K]
attribute [local instance] FreyWeightedSections.coefficientAlgebra

/-- The Y block is empty for k=0,1. The constant stage W_0 has ONE coordinate. -/
abbrev Index (k : ℕ) := Fin (k + 1) ⊕ Fin (k - 1)

/-- Source-identified functions in the old D=C[1/X], not abstract replacement vectors. -/
def atom (a b : K) (k : ℕ) : Index k → OpenCurve a b
  | Sum.inl i => x a b ^ (i : ℕ)
  | Sum.inr j => y a b * x a b ^ (j : ℕ)

/-- Finite polynomial coefficients are represented in the standard monomial basis. -/
def coefficientPolynomial {n : ℕ} (c : Fin n → K) : Polynomial K :=
  ∑ i : Fin n, Polynomial.C (c i) * Polynomial.X ^ (i : ℕ)

@[simp] theorem coefficientPolynomial_coeff {n : ℕ} (c : Fin n → K) (i : Fin n) :
    (coefficientPolynomial c).coeff (i : ℕ) = c i := by
  classical
  rw [coefficientPolynomial, Polynomial.finsetSum_coeff]
  rw [Finset.sum_eq_single i]
  · simp
  · intro j _ hji
    have hv : (j : ℕ) ≠ (i : ℕ) := fun h => hji (Fin.ext h)
    simp [Polynomial.coeff_C_mul_X_pow, hv, Ne.symm hv]
  · intro hi
    exact (hi (Finset.mem_univ i)).elim

/-- The linear combination on the actual function ring is the two polynomial blocks. -/
theorem sum_atoms (a b : K) (k : ℕ) (c : Index k → K) :
    (∑ i : Index k, c i • atom a b k i) =
      pairValue a b (coefficientPolynomial (fun i => c (Sum.inl i)))
        (coefficientPolynomial (fun j => c (Sum.inr j))) := by
  classical
  rw [Fintype.sum_sum_type]
  simp only [atom, pairValue, coefficientPolynomial, map_sum, map_mul, map_pow,
    polynomialValue_C, polynomialValue_X, Finset.mul_sum, Algebra.smul_def]
  congr 1
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- No smoothness, nonzero ab, or rational two-torsion hypothesis is used for independence. -/
theorem atoms_linearIndependent (a b : K) (k : ℕ) : LinearIndependent K (atom a b k) := by
  classical
  apply Fintype.linearIndependent_iff.mpr
  intro c hc i
  rw [sum_atoms] at hc
  obtain ⟨h0, h1⟩ := (pairValue_eq_zero_iff a b _ _).mp hc
  cases i with
  | inl i =>
    have h := congrArg (fun p : Polynomial K => p.coeff (i : ℕ)) h0
    simpa only [coefficientPolynomial_coeff, Polynomial.coeff_zero] using h
  | inr j =>
    have h := congrArg (fun p : Polynomial K => p.coeff (j : ℕ)) h1
    simpa only [coefficientPolynomial_coeff, Polynomial.coeff_zero] using h

/-- The indexing type enumerates exactly the previous generator SET. -/
theorem range_atoms (a b : K) (k : ℕ) : Set.range (atom a b k) = generators a b k := by
  ext f
  constructor
  · rintro ⟨i, rfl⟩
    cases i with
    | inl i => exact Or.inl ⟨i.val, Nat.le_of_lt_succ i.isLt, rfl⟩
    | inr j =>
      have hj : j.val + 2 ≤ k := by omega
      exact Or.inr ⟨j.val, hj, rfl⟩
  · rintro (⟨i, hi, rfl⟩ | ⟨j, hj, rfl⟩)
    · exact ⟨Sum.inl ⟨i, Nat.lt_succ_of_le hi⟩, rfl⟩
    · have hj' : j < k - 1 := by omega
      exact ⟨Sum.inr ⟨j, hj'⟩, rfl⟩

/-- The new basis spans the SAME old W_k. -/
theorem span_atoms (a b : K) (k : ℕ) :
    Submodule.span K (Set.range (atom a b k)) = stage a b k := by
  rw [range_atoms]
  rfl

/-- A basis only AFTER the polynomial-pair independence theorem. -/
def basis (a b : K) (k : ℕ) : Module.Basis (Index k) K (stage a b k) :=
  (Module.Basis.span (atoms_linearIndependent a b k)).map
    (LinearEquiv.ofEq _ _ (span_atoms a b k))

@[simp] theorem basis_coe (a b : K) (k : ℕ) (i : Index k) :
    ((basis a b k i : stage a b k) : OpenCurve a b) = atom a b k i := by
  simp [basis, Module.Basis.span_apply]

/-- Exact dimension, including the exceptional constant stage. -/
theorem stage_finrank (a b : K) (k : ℕ) :
    Module.finrank K (stage a b k) = k + 1 + (k - 1) := by
  rw [Module.finrank_eq_card_basis (basis a b k)]
  simp [Index]

@[simp] theorem stage_zero_finrank (a b : K) :
    Module.finrank K (stage a b 0) = 1 := by
  simpa using stage_finrank a b 0

/-- The even-degree candidate stage has dimension 2k for k>=1, not for k=0. -/
theorem stage_finrank_positive (a b : K) (k : ℕ) (hk : 1 ≤ k) :
    Module.finrank K (stage a b k) = 2 * k := by
  rw [stage_finrank]
  omega

/-- The first refinement adds X and only one coordinate. -/
theorem first_rank_increment (a b : K) :
    Module.finrank K (stage a b 1) = Module.finrank K (stage a b 0) + 1 := by
  rw [stage_finrank, stage_finrank]

/-- Thereafter each refinement adds two independent coefficient directions. -/
theorem successive_rank_increment (a b : K) (k : ℕ) (hk : 1 ≤ k) :
    Module.finrank K (stage a b (k + 1)) = Module.finrank K (stage a b k) + 2 := by
  rw [stage_finrank_positive a b k hk,
    stage_finrank_positive a b (k + 1) (by omega)]
  omega

/-- Genuine strict growth, not only preservation of a list of old generators. -/
theorem stage_lt_succ (a b : K) (k : ℕ) : stage a b k < stage a b (k + 1) := by
  refine lt_of_le_of_ne (stage_mono a b (Nat.le_succ k)) ?_
  intro h
  have hd := congrArg (fun W : Submodule K (OpenCurve a b) => Module.finrank K W) h
  rw [stage_finrank, stage_finrank] at hd
  omega

/-- The old lift acts on the actual polynomial-block basis vectors. -/
theorem lift_basis_X (a b l : K) (hl : a * b * l = 1) (k : ℕ) (i : Fin (k + 1)) :
    FreyWeightedSections.lift a b l hl k
      ((basis a b k (Sum.inl i) : stage a b k) : OpenCurve a b) =
      (-(a * b)) ^ (i : ℕ) • x a b ^ (k - (i : ℕ)) := by
  rw [basis_coe]
  exact lift_X_pow a b l hl k i.val (Nat.le_of_lt_succ i.isLt)

/-- The old Y-block action is bound to the same basis, including its grade restriction. -/
theorem lift_basis_Y (a b l : K) (hl : a * b * l = 1) (k : ℕ) (j : Fin (k - 1)) :
    FreyWeightedSections.lift a b l hl k
      ((basis a b k (Sum.inr j) : stage a b k) : OpenCurve a b) =
      (a * b * (-(a * b)) ^ (j : ℕ)) •
        (y a b * x a b ^ (k - ((j : ℕ) + 2))) := by
  rw [basis_coe]
  exact lift_Y_X_pow a b l hl k j.val (by omega)

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBasis
```
