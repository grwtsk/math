/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib integral lying-over retains upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239IntegerClosureResidueCompatibility
import Mathlib.RingTheory.Ideal.GoingUp

set_option autoImplicit false
noncomputable section

/-! A prime above each actual source kernel in the literal integer closure.
Lying-over does not identify the upper residue field with the source
prime field. Such a residue identification and valuation-normalized
square-class transport remain separate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem recordOrderToIntegerClosure_injective :
    Function.Injective recordOrderToIntegerClosure := by
  intro x y h
  apply recordOrderToCubicField_injective
  have hc := congrArg (algebraMap NativeIntegerClosure NativeCubicField) h
  have he := integerClosure_order_map_field_compat
  have hx := congrArg (fun f : RecordIntegralOrder →+* NativeCubicField => f x) he
  have hy := congrArg (fun f : RecordIntegralOrder →+* NativeCubicField => f y) he
  exact hx.symm.trans (hc.trans hy)

theorem exists_integerClosure_prime_above_source (j : Fin 32) :
    ∃ Q : Ideal NativeIntegerClosure, Q.IsPrime ∧
      Q.comap recordOrderToIntegerClosure = RingHom.ker (recordOrderReduction j) := by
  letI : Algebra RecordIntegralOrder NativeIntegerClosure :=
    recordOrderToIntegerClosure.toAlgebra
  letI : IsScalarTower ℤ RecordIntegralOrder NativeIntegerClosure := by infer_instance
  letI : Algebra.IsIntegral RecordIntegralOrder NativeIntegerClosure :=
    ⟨fun x => (integralClosure.isIntegral x).tower_top⟩
  letI : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩
  let P : Ideal RecordIntegralOrder := RingHom.ker (recordOrderReduction j)
  letI : P.IsPrime := RingHom.ker_isPrime (recordOrderReduction j)
  have hk : RingHom.ker (algebraMap RecordIntegralOrder NativeIntegerClosure) ≤ P := by
    intro x hx
    have hz : recordOrderToIntegerClosure x = 0 := hx
    have hx0 : x = 0 := recordOrderToIntegerClosure_injective
      (hz.trans (map_zero recordOrderToIntegerClosure).symm)
    simpa [hx0] using (show (0 : RecordIntegralOrder) ∈ P from P.zero_mem)
  exact Ideal.exists_ideal_over_prime_of_isIntegral_of_isDomain P hk

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
