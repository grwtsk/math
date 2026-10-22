/-
Copyright (c) 2026.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: GRWTSK research
-/
import GRWTSK.Algebra.PolygonalQuarticDescent
import Mathlib.FieldTheory.SplittingField.IsSplittingField

/-!
# Quartic resolvent in a splitting extension

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

This file advances the genuine polynomial-root interface without choosing a
canonical root order. The multiset enumeration hypothesis is deliberately
isolated: the next theorem must construct it from degree four, splitting and
separability. Factorization and resolvent descent below are mathematical
statements about the actual mapped polynomial, not synthetic coefficients.

Characteristic 2 and 3 are allowed. The algebraic resolvent identity does not
need separability. Separability is needed only to enumerate four *distinct*
roots (without multiplicities).
-/

namespace GRWTSK.Algebra.PolygonalQuarticSplitting

open Polynomial
open GRWTSK.Algebra.PolygonalQuarticDescent

noncomputable section

variable {K L : Type*} [Field K] [Field L] [Algebra K L]

private def mappedQuartic (p : K[X]) : L[X] :=
  p.map (algebraMap K L)

/-- A labelled enumeration of the *actual* root multiset of the mapped
quartic, as opposed to a canonical choice of order. -/
structure QuarticRootEnumeration (p : K[X]) where
  r : Fin 4 → L
  roots_eq : (mappedQuartic p).roots =
    (Multiset.cons (r 0) (Multiset.cons (r 1)
      (Multiset.cons (r 2) (Multiset.singleton (r 3)))))

/-- A four-element root multiset can be enumerated by Fin 4. This is
purely finite, and does not assume that its elements are distinct. -/
theorem enumeration_of_root_card_four (p : K[X])
    (hcard : (mappedQuartic p).roots.card = 4) :
    Nonempty (QuarticRootEnumeration p) := by
  let s := (mappedQuartic p).roots
  have hl : s.toList.length = 4 := by
    simpa [Multiset.length_toList] using hcard
  cases hlist : s.toList with
  | nil => simp [hlist] at hl
  | cons a t =>
    cases t with
    | nil => simp [hlist] at hl
    | cons b t =>
      cases t with
      | nil => simp [hlist] at hl
      | cons c t =>
        cases t with
        | nil => simp [hlist] at hl
        | cons d t =>
          cases t with
          | nil => simp [hlist] at hl
          | cons e t =>
            simp [hlist] at hl
          have hs : s = ({a, b, c, d} : Multiset L) := by
            rw [← Multiset.coe_toList s, hlist]
            rfl
          refine ⟨⟨![a, b, c, d], ?_⟩⟩
          simpa [s, hs, Matrix.cons_val_zero, Matrix.cons_val_one]

/-- Splitting and exact degree four produce an actual four-root enumeration.
No assumption of distinctness or characteristic is needed. -/
theorem enumeration_of_splitting_quartic (p : K[X])
    (hs : (mappedQuartic p).Splits)
    (hdegree : (mappedQuartic p).natDegree = 4) :
    Nonempty (QuarticRootEnumeration p) := by
  apply enumeration_of_root_card_four p
  rw [← hs.natDegree_eq_card_roots]
  exact hdegree

/-- Factorization of the actual quartic in the extension, with its leading
coefficient retained. This does not require separability. -/
theorem factorization_of_root_enumeration (p : K[X])
    (hs : (mappedQuartic p).Splits) (e : QuarticRootEnumeration p) :
    mappedQuartic p =
      C (mappedQuartic p).leadingCoeff *
        ((X - C (e.r 0)) * (X - C (e.r 1)) *
          (X - C (e.r 2)) * (X - C (e.r 3))) := by
  rw [hs.eq_prod_roots, e.roots_eq]
  simp only [Multiset.map_cons, Multiset.map_singleton, Multiset.prod_cons,
    Multiset.prod_singleton]
  ring

/-- Monicity removes the leading scalar but never by silently
normalizing a nonmonic polynomial. -/
theorem monic_factorization_of_root_enumeration (p : K[X])
    (hs : (mappedQuartic p).Splits)
    (hm : (mappedQuartic p).Monic)
    (e : QuarticRootEnumeration p) :
    mappedQuartic p =
      (X - C (e.r 0)) * (X - C (e.r 1)) *
        (X - C (e.r 2)) * (X - C (e.r 3)) := by
  rw [factorization_of_root_enumeration p hs e, hm.leadingCoeff]
  simp

/-- Direct coefficient descent for an actual monic mapped quartic. -/
theorem resolvent_of_mapped_quartic (p : K[X])
    (hs : (mappedQuartic p).Splits)
    (hm : (mappedQuartic p).Monic)
    (e : QuarticRootEnumeration p) (A B C₀ D : L)
    (hcoeff : mappedQuartic p =
      X ^ 4 + Polynomial.C A * X ^ 3 + Polynomial.C B * X ^ 2 +
        Polynomial.C C₀ * X + Polynomial.C D) :
    adjacencyResolventFromRoots (e.r 0) (e.r 1) (e.r 2) (e.r 3) =
      adjacencyResolventOfMonicCoefficients A B C₀ D := by
  exact resolvent_of_actual_factored_quartic
    (mappedQuartic p) (e.r 0) (e.r 1) (e.r 2) (e.r 3)
    A B C₀ D (monic_factorization_of_root_enumeration p hs hm e) hcoeff

/-- Relabelling any chosen enumeration leaves the resolvent unchanged,
without requiring that the enumeration itself be canonical. -/
theorem resolvent_relabel (p : K[X]) (e : QuarticRootEnumeration p)
    (σ : Equiv.Perm (Fin 4)) :
    adjacencyResolventFromRoots (e.r (σ 0)) (e.r (σ 1))
      (e.r (σ 2)) (e.r (σ 3)) =
      adjacencyResolventFromRoots (e.r 0) (e.r 1) (e.r 2) (e.r 3) :=
  adjacencyResolvent_permutation e.r σ

end
end GRWTSK.Algebra.PolygonalQuarticSplitting
