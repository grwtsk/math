/-
Copyright (c) 2026.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: GRWTSK research
-/
import Mathlib

/-!
# Quartic polygon adjacency and matching resolvents

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

A set of four distinct labelled roots has three unoriented four-cycle structures.
The missing edges of each four-cycle form a perfect matching. The pair-product
sum of that matching is a classical cubic-resolvent coordinate. These identities
are elementary polynomial identities and do not require distinctness of roots.

The quotient description by S₄/D₄, the descent by Vieta, and general n are
separate obligations not asserted here.
-/

namespace GRWTSK.Algebra.PolygonalResolvent

variable {R : Type*} [CommRing R]

/-- The second elementary symmetric expression of four labelled roots. -/
def quarticPairSum (a b c d : R) : R :=
  a * b + a * c + a * d + b * c + b * d + c * d

/-- Edge-product sum of the cycle a-b-c-d-a. -/
def cycleABCD (a b c d : R) : R :=
  a * b + b * c + c * d + d * a

/-- Edge-product sum of the cycle a-c-b-d-a. -/
def cycleACBD (a b c d : R) : R :=
  a * c + c * b + b * d + d * a

/-- Edge-product sum of the cycle a-b-d-c-a. -/
def cycleABDC (a b c d : R) : R :=
  a * b + b * d + d * c + c * a

/-- The matching omitted by the cycle a-b-c-d-a. -/
def matchAC_BD (a b c d : R) : R := a * c + b * d

/-- The matching omitted by the cycle a-c-b-d-a. -/
def matchAB_CD (a b c d : R) : R := a * b + c * d

/-- The matching omitted by the cycle a-b-d-c-a. -/
def matchAD_BC (a b c d : R) : R := a * d + b * c

theorem cycleABCD_eq_complement (a b c d : R) :
    cycleABCD a b c d =
      quarticPairSum a b c d - matchAC_BD a b c d := by
  simp only [cycleABCD, quarticPairSum, matchAC_BD]
  ring

theorem cycleACBD_eq_complement (a b c d : R) :
    cycleACBD a b c d =
      quarticPairSum a b c d - matchAB_CD a b c d := by
  simp only [cycleACBD, quarticPairSum, matchAB_CD]
  ring

theorem cycleABDC_eq_complement (a b c d : R) :
    cycleABDC a b c d =
      quarticPairSum a b c d - matchAD_BC a b c d := by
  simp only [cycleABDC, quarticPairSum, matchAD_BC]
  ring

/-- Monic cubic built from the three adjacency weights. -/
noncomputable def cycleCubic (a b c d : R) : Polynomial R :=
  (Polynomial.X - Polynomial.C (cycleABCD a b c d)) *
  (Polynomial.X - Polynomial.C (cycleACBD a b c d)) *
  (Polynomial.X - Polynomial.C (cycleABDC a b c d))

/-- The same cubic expressed by the three matching weights. -/
noncomputable def complementaryMatchingCubic (a b c d : R) : Polynomial R :=
  (Polynomial.X - Polynomial.C
    (quarticPairSum a b c d - matchAC_BD a b c d)) *
  (Polynomial.X - Polynomial.C
    (quarticPairSum a b c d - matchAB_CD a b c d)) *
  (Polynomial.X - Polynomial.C
    (quarticPairSum a b c d - matchAD_BC a b c d))

theorem cycleCubic_eq_complementaryMatchingCubic (a b c d : R) :
    cycleCubic a b c d = complementaryMatchingCubic a b c d := by
  simp only [cycleCubic, complementaryMatchingCubic,
    cycleABCD_eq_complement, cycleACBD_eq_complement,
    cycleABDC_eq_complement]

end GRWTSK.Algebra.PolygonalResolvent
