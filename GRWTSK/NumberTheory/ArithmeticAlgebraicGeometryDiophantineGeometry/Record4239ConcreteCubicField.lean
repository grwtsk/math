/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib polynomial and AdjoinRoot facts retain upstream authorship and licenses. -/
import GRWTSK.AssociativeRingsAndAlgebras.Record4239NativeSquareClassModDoubles
import Mathlib.Algebra.Polynomial.SpecificDegree
import Mathlib.RingTheory.AdjoinRoot
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-! Literal rational cubic field and distinguished root for native descent.
Irreducibility uses the existing source no-rational-root candidate, not
an independent polynomial or new assumption. Local valuations and source
character compatibility remain separate. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
open Polynomial

def rationalShortCubic : ℚ[X] := X ^ 3 + C (shortA : ℚ) * X + C (shortB : ℚ)

theorem rationalShortCubic_source_map :
    rationalShortCubic = shortCubic.map (Int.castRingHom ℚ) := by
  simp [rationalShortCubic, shortCubic]

theorem rationalShortCubic_natDegree : rationalShortCubic.natDegree = 3 := by
  unfold rationalShortCubic
  compute_degree!

theorem rationalShortCubic_irreducible : Irreducible rationalShortCubic := by
  apply irreducible_of_degree_le_three_of_not_isRoot
  · simp [rationalShortCubic_natDegree]
  · intro q hq
    apply shortCubic_noRationalRoot q
    simpa [Polynomial.IsRoot, rationalShortCubic] using hq

instance rationalShortCubic_irreducible_fact : Fact (Irreducible rationalShortCubic) :=
  ⟨rationalShortCubic_irreducible⟩

abbrev NativeCubicField := AdjoinRoot rationalShortCubic

def nativeCubicRoot : NativeCubicField := AdjoinRoot.root rationalShortCubic

theorem nativeCubicRoot_relation :
    nativeCubicRoot ^ 3 + (shortA : NativeCubicField) * nativeCubicRoot +
      (shortB : NativeCubicField) = 0 := by
  have h : aeval (AdjoinRoot.root rationalShortCubic) rationalShortCubic = 0 := by
    rw [AdjoinRoot.aeval_eq, AdjoinRoot.mk_self]
  simpa [rationalShortCubic, nativeCubicRoot] using h

def concreteNativeSquareClassModDoubles :
    NativePointsModDoubles →+ Additive (UnitSquareClasses NativeCubicField) :=
  nativeSquareClassModDoubles NativeCubicField nativeCubicRoot nativeCubicRoot_relation

theorem concreteNativeSquareClassModDoubles_mk (P : nativeCurve.toAffine.Point) :
    concreteNativeSquareClassModDoubles (P : NativePointsModDoubles) =
      nativeSquareClassHom NativeCubicField nativeCubicRoot nativeCubicRoot_relation P := by
  rfl

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
