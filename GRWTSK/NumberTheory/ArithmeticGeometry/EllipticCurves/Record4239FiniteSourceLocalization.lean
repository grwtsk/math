/-
Copyright (c) 2026 grwtsk contributors. MIT.
Curve and 32 rational points: N. Elkies, Z. Klagsbrun, S. Li,
ICARM rank record #4239 (15 October 2026).
The localization, finite quadratic characters, and quotient groups
are imported from Mathlib and retain their upstream authorship.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Lean proof candidates; no kernel-verified global descent or rank theorem.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239IntegralOrderReduction
import Mathlib.RingTheory.Localization.Away.Basic

/-!
# One genuine source-specific localization for each rank-32 character

The exact 32 source evaluations at one labelled prime/root (p_j,θ_j)
are elements of the integral cubic order R = ℤ[T]/(f).  The previously
proved finite arithmetic establishes that all 32 of their residues in
F_p are *nonzero*, including the exceptional branch f'(T).

This module inverts their PRODUCT in the canonical localization R[1/s_j]:
  s_j = ∏_{i : Fin 32} sourceOrderLocalElement j i.

Every one of those 32 actual order elements becomes a unit in the SAME
source-specific ring R[1/s_j].  Since ρ_j(s_j) ≠ 0 in F_p, the genuine
ring map ρ_j : R →+* F_p extends uniquely to R[1/s_j] →+* F_p.
Consequently the existing unit-squareclass quadratic character
applies to all 32 actual localized representatives for this j.

This is not the global étale x-T descent character on E(ℚ):
* s_j is a finite product chosen for the 32 **published** points.
  A point-independent global 2-descent homomorphism is not supplied.
* f'(T) is substituted in the exceptional zero-residue case.  Its
  equality with the genuine x-T descent squareclass is still a
  separate arithmetic theorem.
* SourceBitsMatch has not been kernel-proved, and full rank remains
  conditional on the missing global μ, local normalization and
  exact character-evaluation transport.

No rank ≥ 32, RH, BSD, or analytic statement is claimed here.
-/

set_option autoImplicit false
set_option maxRecDepth 32768

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

/-- The exact finite product of the 32 branch-corrected order elements
for a chosen *existing* source root and prime. -/
def sourceLocalizingProduct (j : Fin 32) : RecordIntegralOrder :=
  ∏ i : Fin 32, sourceOrderLocalElement j i

/-- All 32 factors have nonzero reduction, hence the product does too.
Only previously sourced root, derivative and point facts are consumed. -/
theorem sourceLocalizingProduct_reduction_ne_zero (j : Fin 32) :
    recordOrderReduction j (sourceLocalizingProduct j) ≠ 0 := by
  classical
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  have hp : (∏ i : Fin 32,
      recordOrderReduction j (sourceOrderLocalElement j i)) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr (by
      intro i hi
      exact sourceOrderLocalElement_reduction_ne_zero j i)
  simpa only [sourceLocalizingProduct, map_prod] using hp

/-- This product is nonzero in the integral order, since a genuine ring
homomorphism takes it to a nonzero residue. -/
theorem sourceLocalizingProduct_ne_zero (j : Fin 32) :
    sourceLocalizingProduct j ≠ 0 := by
  intro h
  apply sourceLocalizingProduct_reduction_ne_zero j
  simp [h]

/-- A single legitimate localization for all 32 point evaluations at
source character j.  It need not be a discrete valuation ring and is
not asserted to be the maximal-ideal localization of R. -/
abbrev SourceLocalRing (j : Fin 32) : Type :=
  Localization.Away (sourceLocalizingProduct j)

/-- Extend the REAL integral cubic-order root-evaluation homomorphism
across this localization. It exists because the finite product reduces
to a nonzero element of the actual residue field. -/
noncomputable def sourceLocalReduction (j : Fin 32) :
    SourceLocalRing j →+* ZMod (primeLabel j) := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  exact IsLocalization.Away.lift (S := SourceLocalRing j)
    (g := recordOrderReduction j) (sourceLocalizingProduct j)
      (isUnit_iff_ne_zero.mpr (sourceLocalizingProduct_reduction_ne_zero j))

/-- The extended map agrees *exactly* with source reduction on elements
embedded from the actual integral cubic order. -/
theorem sourceLocalReduction_algebraMap (j : Fin 32)
    (x : RecordIntegralOrder) :
    sourceLocalReduction j
        (algebraMap RecordIntegralOrder (SourceLocalRing j) x) =
      recordOrderReduction j x := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  simp [sourceLocalReduction, IsLocalization.Away.lift_eq]

/-- Each of the 32 actual branch-corrected source elements divides the
exact finite product used to define the localization. -/
theorem sourceOrderLocalElement_dvd_product (j i : Fin 32) :
    sourceOrderLocalElement j i ∣ sourceLocalizingProduct j := by
  classical
  exact Finset.dvd_prod_of_mem
    (fun k : Fin 32 => sourceOrderLocalElement j k)
    (Finset.mem_univ i)

/-- All 32 source elements are now GENUINE units in the SAME localized
integral-order ring (for fixed j), not merely nonzero field residues. -/
theorem sourceOrderLocalElement_isUnit (j i : Fin 32) :
    IsUnit (algebraMap RecordIntegralOrder (SourceLocalRing j)
      (sourceOrderLocalElement j i)) := by
  exact IsLocalization.Away.isUnit_of_dvd
    (S := SourceLocalRing j) (sourceLocalizingProduct j)
    (sourceOrderLocalElement_dvd_product j i)

/-- The canonical localized unit representing the i-th actual source
element at the j-th labelled prime/root. -/
noncomputable def sourceLocalizedUnit (j i : Fin 32) :
    (SourceLocalRing j)ˣ :=
  (sourceOrderLocalElement_isUnit j i).unit

theorem sourceLocalizedUnit_coe (j i : Fin 32) :
    ((sourceLocalizedUnit j i : (SourceLocalRing j)ˣ) :
        SourceLocalRing j) =
      algebraMap RecordIntegralOrder (SourceLocalRing j)
        (sourceOrderLocalElement j i) := by
  exact (sourceOrderLocalElement_isUnit j i).unit_spec

/-- Reduction of a genuine localized unit agrees with the actual
normal/exceptional finite residue used by the 1024 source checks. -/
theorem sourceLocalizedUnit_reduction (j i : Fin 32) :
    sourceLocalReduction j (sourceLocalizedUnit j i : SourceLocalRing j) =
      (sourceLocalInteger j i : ZMod (primeLabel j)) := by
  rw [sourceLocalizedUnit_coe, sourceLocalReduction_algebraMap,
    sourceOrderLocalElement_reduction]

/-- The pre-existing quadratic unit-squareclass character becomes a
genuine homomorphism on this explicitly constructed localized order. -/
noncomputable def sourceLocalSquareClassCharacter (j : Fin 32) :
    UnitSquareClasses (SourceLocalRing j) →*
      Multiplicative (ZMod 2) := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  exact localUnitClassCharacter (primeLabel j) (sourceLocalReduction j)

/-- Evaluate the TRUE localized-unit-squareclass character on the
canonical class of the source element, without introducing an
arbitrary nonhomomorphic bit assignment. -/
noncomputable def sourceLocalSquareClassBit (j i : Fin 32) : ZMod 2 :=
  (sourceLocalSquareClassCharacter j
      ((QuotientGroup.mk'
        (powMonoidHom (α := (SourceLocalRing j)ˣ) 2).range)
        (sourceLocalizedUnit j i))).toAdd

/-- Structural comparison between the true localized character and
the finite residue-unit character. This does NOT identify either
with the global Mordell-Weil descent character. -/
theorem sourceLocalSquareClassBit_eq_sourceQuadraticBit
    (j i : Fin 32) :
    sourceLocalSquareClassBit j i = sourceQuadraticBit j i := by
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  have hunit :
      Units.map (sourceLocalReduction j).toMonoidHom
        (sourceLocalizedUnit j i) = sourceLocalUnit j i := by
    apply Units.ext
    change sourceLocalReduction j
        (sourceLocalizedUnit j i : SourceLocalRing j) =
      (sourceLocalUnit j i : ZMod (primeLabel j))
    rw [sourceLocalizedUnit_reduction]
    simp [sourceLocalUnit]
  unfold sourceLocalSquareClassBit sourceLocalSquareClassCharacter
  rw [localUnitClassCharacter_mk]
  simpa [sourceQuadraticBit, hunit]

/-- The remaining finite Euler-bit agreement is an EXPLICIT premise,
not an axiom or a theorem that the computational replay discharged.
It is deliberately kept separate from local structural correctness. -/
theorem sourceLocalSquareClassBit_eq_matrix_of_SourceBitsMatch
    (hmatch : SourceBitsMatch) (j i : Fin 32) :
    sourceLocalSquareClassBit j i = characterMatrix i j := by
  exact (sourceLocalSquareClassBit_eq_sourceQuadraticBit j i).trans
    (hmatch j i)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
