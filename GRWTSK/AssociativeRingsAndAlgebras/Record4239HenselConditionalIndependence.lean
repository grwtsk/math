/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Record4239HenselSignedNativeParity
import GRWTSK.GroupTheoryAndGeneralizations.ModTwoIndependenceDescent

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Assemble the actual Hensel/cofactor relation bridge with integer halving
and actual native no-two-torsion. The finite SourceBitsMatch proof and all
source elaboration remain outstanding. NOT_RUN / NOT_KERNEL_AUDITED.
This is not a BSD theorem. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

theorem native_relations_even_of_hensel_source_bits (bits : SourceBitsMatch)
    (n : Fin 32 → ℤ) (hrel : (∑ i, n i • nativePoint i)=0) :
    ∀ i, (2 : ℤ) ∣ n i := by
  have hp := signed_native_relation_parity_zero bits n 0 (by simpa using hrel)
  intro i
  have hi : (n i : ZMod 2)=0 := congrFun hp i
  exact (ZMod.intCast_zmod_eq_zero_iff_dvd (n i) 2).mp hi

theorem nativePoints_linearIndependent_of_hensel_source_bits (bits : SourceBitsMatch) :
    LinearIndependent ℤ nativePoint := by
  apply GRWTSK.Algebra.LinearAlgebra.ModTwoIndependenceDescent.linearIndependent_of_even_relations
    nativePoint nativeNoTwoTorsion_for_descent
  exact native_relations_even_of_hensel_source_bits bits

/- Finite source comparison is a genuine remaining premise. Even a completed
independence argument supplies neither an upper rank bound nor the analytic
rank, leading coefficient, regulator, Sha or other BSD identities. -/
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
