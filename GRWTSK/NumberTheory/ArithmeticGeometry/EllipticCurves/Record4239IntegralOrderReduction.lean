/-
Copyright (c) 2026 grwtsk contributors. MIT.
Rank-32 curve and rational points: Noam Elkies, Zev Klagsbrun,
Samuel Li (ICARM elliptic rank record #4239).
The polynomial quotient and unit-squareclass theorems are imported from
Mathlib; upstream authorship and licenses are retained.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
These theorem candidates have not been checked by Lean in this environment.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239UnitSquareClassTransport
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NegationObstruction
import Mathlib.RingTheory.AdjoinRoot

/-!
# Record #4239: actual finite reduction maps from its integral cubic order

Let f(T) = T^3 + shortA*T + shortB ∈ ℤ[T].  Every source-labelled pair
(p_j, theta_j) is a simple root of f modulo the prime p_j, as proved
in Record4239FiniteCharacterMatrix.  The universal property of the
*actual quotient ring* ℤ[T]/(f) therefore constructs a ring map

   rho_j : AdjoinRoot f →+* ZMod p_j
   rho_j(T) = theta_j,   rho_j(n) = n (mod p_j).

This is stronger than postulating an arbitrary reduction homomorphism.
It is still NOT a map ℚ[T]/(f) → F_p: rational coefficients may contain
denominators divisible by p.  Nor does the nonvanishing of the reduction
of an element imply that it is a unit in the global integral order.

The source x(P_i)-T and f'(T) are given as actual order elements.
Their reductions agree with the normal and exceptional source entries
selected in Record4239LocalSquareClass.  The ring maps also induce
quadratic characters on the order's *global unit* square classes.
A separate valuation-normalized local identification is required before
using those characters on the global x-T descent of E(ℚ).

No Mordell-Weil rank bound or unconditional character map from E(ℚ) is
established here.
-/

set_option autoImplicit false
set_option maxRecDepth 32768
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

open Polynomial

/-- Actual integral cubic order attached to the *short* record equation. -/
abbrev RecordIntegralOrder : Type := AdjoinRoot shortCubic

/-- A source-listed theta is a root modulo its source-listed prime.
The only finite premise is the already recorded exact root condition. -/
theorem shortCubic_eval₂_root_mod (j : Fin 32) :
    Polynomial.eval₂ (Int.castRingHom (ZMod (primeLabel j)))
      (rootLabel j : ZMod (primeLabel j)) shortCubic = 0 := by
  have hdiv : (primeLabel j : ℤ) ∣
      ((rootLabel j : ℤ) ^ 3 +
        shortA * (rootLabel j : ℤ) + shortB) :=
    Int.dvd_of_emod_eq_zero (rootLabels_valid j).1
  have hmod :
      (((rootLabel j : ℤ) ^ 3 +
        shortA * (rootLabel j : ℤ) + shortB : ℤ) :
          ZMod (primeLabel j)) = 0 :=
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mpr hdiv
  simpa [shortCubic] using hmod

/-- Construct the 32 *actual* ring homomorphisms from the integral cubic
order, rather than accepting them as assumed functions. -/
noncomputable def recordOrderReduction (j : Fin 32) :
    RecordIntegralOrder →+* ZMod (primeLabel j) :=
  AdjoinRoot.lift (Int.castRingHom (ZMod (primeLabel j)))
    (rootLabel j : ZMod (primeLabel j)) (shortCubic_eval₂_root_mod j)

/-- Reduction takes the distinguished root T to theta_j. -/
theorem recordOrderReduction_root (j : Fin 32) :
    recordOrderReduction j (AdjoinRoot.root shortCubic) =
      (rootLabel j : ZMod (primeLabel j)) := by
  simp [recordOrderReduction]

/-- Reduction of any embedded integer is reduction modulo p_j. -/
theorem recordOrderReduction_of (j : Fin 32) (n : ℤ) :
    recordOrderReduction j (AdjoinRoot.of shortCubic n) =
      (n : ZMod (primeLabel j)) := by
  simp [recordOrderReduction]

/-- The numerator-level x(P_i)-T for the source points with *integral*
short-model x-coordinates.  No global-unit assertion is made. -/
def sourceOrderDifference (i : Fin 32) : RecordIntegralOrder :=
  AdjoinRoot.of shortCubic (shortXInt i) - AdjoinRoot.root shortCubic

/-- The source x(P_i)-T reduces exactly to x(P_i)-theta_j. -/
theorem sourceOrderDifference_reduction (j i : Fin 32) :
    recordOrderReduction j (sourceOrderDifference i) =
      ((shortXInt i - (rootLabel j : ℤ) : ℤ) :
        ZMod (primeLabel j)) := by
  simp [sourceOrderDifference, recordOrderReduction_of,
    recordOrderReduction_root]

/-- The polynomial derivative f'(T) is an *actual element* of the same
integral cubic order; this is the exceptional 2-descent branch. -/
def sourceOrderDerivative : RecordIntegralOrder :=
  3 * (AdjoinRoot.root shortCubic) ^ 2 +
    AdjoinRoot.of shortCubic shortA

/-- Reducing the derivative gives the specified f'(theta_j) value. -/
theorem sourceOrderDerivative_reduction (j : Fin 32) :
    recordOrderReduction j sourceOrderDerivative =
      ((3 * (rootLabel j : ℤ) ^ 2 + shortA : ℤ) :
        ZMod (primeLabel j)) := by
  simp [sourceOrderDerivative, recordOrderReduction_of,
    recordOrderReduction_root]

/-- The derivative is never zero at the 32 selected source roots:
this is exactly the simple-root hypothesis, not an assumption that
arbitrary cubic roots are simple. -/
theorem sourceOrderDerivative_reduction_ne_zero (j : Fin 32) :
    recordOrderReduction j sourceOrderDerivative ≠ 0 := by
  rw [sourceOrderDerivative_reduction]
  intro hz
  have hzero : (3 * (rootLabel j : ℤ) ^ 2 + shortA) %
      (primeLabel j : ℤ) = 0 :=
    Int.emod_eq_zero_of_dvd
      ((ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp hz)
  exact (rootLabels_valid j).2 hzero

/-- The source-dependent exceptional rule is a choice of *actual*
order elements, never an assignment of a Legendre value to zero. -/
def sourceOrderLocalElement (j i : Fin 32) : RecordIntegralOrder :=
  if (shortXInt i - (rootLabel j : ℤ)) %
      (primeLabel j : ℤ) = 0
  then sourceOrderDerivative
  else sourceOrderDifference i

/-- Every actual local order element reduces to the *specific*
normal/exceptional integer used by the finite character packet.
This still does not claim the element is a global unit. -/
theorem sourceOrderLocalElement_reduction (j i : Fin 32) :
    recordOrderReduction j (sourceOrderLocalElement j i) =
      (sourceLocalInteger j i : ZMod (primeLabel j)) := by
  by_cases h : (shortXInt i - (rootLabel j : ℤ)) %
      (primeLabel j : ℤ) = 0
  · simp [sourceOrderLocalElement, sourceLocalInteger, h,
      sourceOrderDerivative_reduction]
  · simp [sourceOrderLocalElement, sourceLocalInteger, h,
      sourceOrderDifference_reduction, ZMod.intCast_mod]

/-- Hence all 1024 selected local reductions are nonzero; this is
a residue-unit condition, not global integrality of an inverse. -/
theorem sourceOrderLocalElement_reduction_ne_zero (j i : Fin 32) :
    recordOrderReduction j (sourceOrderLocalElement j i) ≠ 0 := by
  rw [sourceOrderLocalElement_reduction]
  exact sourceLocalInteger_cast_ne_zero j i

/-- A genuine character of the *global unit square classes of the
integral order* induced by the actual source-specific ring reduction.
This does not automatically accept nonunit x(P_i)-T elements. -/
noncomputable def recordOrderUnitCharacter (j : Fin 32) :
    UnitSquareClasses RecordIntegralOrder →* Multiplicative (ZMod 2) := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  exact localUnitClassCharacter (primeLabel j) (recordOrderReduction j)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
