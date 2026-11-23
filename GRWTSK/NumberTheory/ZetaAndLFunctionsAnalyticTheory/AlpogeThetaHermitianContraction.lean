/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Module.BigOperators

/-!
# Hermitian contractions of polarized theta logarithms

The polarization of the selected theta logarithm takes values modulo logarithms
of integral units. Its two arguments are additive for the Honda formal group,
and complex multiplication moves to the other argument by conjugation.
These identities give the contraction in the hyperbolic and trace-dual frames
of §19 of `AlpogeEllipticCubicalB4.md`.
-/

set_option autoImplicit false
open scoped BigOperators
namespace GRWTSK.NumberTheory.AlpogeThetaContraction

variable {R X A : Type*} [CommSemiring R] [AddCommMonoid X] [Module R X] [AddCommMonoid A]

/-- Summing a balanced additive pairing of rows contracts the two coefficient matrices
against their Hermitian product. The target needs only addition. -/
theorem sum_balanced_rows {ι κ ρ : Type*} [Fintype ι] [Fintype κ] [Fintype ρ]
    (B : X →+ X →+ A) (c : R → R)
    (hadj : ∀ a x y, B (a • x) y = B x (c a • y))
    (u : ι → κ → R) (v : ι → ρ → R) (x : κ → X) (y : ρ → X) :
    (∑ i, B (∑ j, u i j • x j) (∑ k, v i k • y k)) =
      ∑ j, ∑ k, B (x j) ((∑ i, c (u i j) * v i k) • y k) := by
  classical
  calc
    _ = ∑ i, ∑ j, ∑ k, B (x j) ((c (u i j) * v i k) • y k) := by
      simp only [map_sum, AddMonoidHom.finsetSum_apply, hadj, smul_smul]
      exact Finset.sum_congr rfl fun i _ => Finset.sum_comm
    _ = ∑ j, ∑ k, ∑ i, B (x j) ((c (u i j) * v i k) • y k) := by
      rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun j _ => Finset.sum_comm
    _ = _ := by simp [Finset.sum_smul, map_sum]

/-- Dual rows preserve the sum of paired terms, including over a nontrivial involution. -/
theorem sum_dual_rows {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq κ]
    (B : X →+ X →+ A) (c : R → R)
    (hadj : ∀ a x y, B (a • x) y = B x (c a • y))
    (u v : ι → κ → R) (hdual : ∀ j k, (∑ i, c (u i j) * v i k) = if j = k then 1 else 0)
    (x y : κ → X) :
    (∑ i, B (∑ j, u i j • x j) (∑ k, v i k • y k)) = ∑ j, B (x j) (y j) := by
  rw [sum_balanced_rows B c hadj]
  simp_rw [hdual]
  simp [ite_smul, apply_ite (B _)]

/-- Quadratic sums with a common Hermitian Gram matrix agree when doubling is injective. -/
theorem sum_quadratic_rows {ι κ ρ : Type*} [Fintype ι] [Fintype κ] [Fintype ρ]
    (B : X →+ X →+ A) (q : X → A) (c : R → R)
    (hadj : ∀ a x y, B (a • x) y = B x (c a • y))
    (hdiag : ∀ x, B x x = q x + q x) (htwo : Function.Injective (fun a : A => a + a))
    (u : ι → κ → R) (v : ρ → κ → R)
    (hgram : ∀ j k, (∑ i, c (u i j) * u i k) = ∑ i, c (v i j) * v i k) (x : κ → X) :
    (∑ i, q (∑ j, u i j • x j)) = ∑ i, q (∑ j, v i j • x j) := by
  have h := sum_balanced_rows B c hadj u u x x
  simp_rw [hgram] at h
  rw [← sum_balanced_rows B c hadj v v x x] at h
  apply htwo
  simpa only [hdiag, Finset.sum_add_distrib] using h

end GRWTSK.NumberTheory.AlpogeThetaContraction
