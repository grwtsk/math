/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239PadicSourceRoot
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.Record4239ConcreteCubicField

set_option autoImplicit false
noncomputable section

/-! Literal native cubic field embedding selected by the source Hensel root.
Restriction to the integer closure and residue/local-square transport
remain separate. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
section
variable (j : Fin 32)
local instance : Fact (Nat.Prime (primeLabel j)) := ⟨(primeLabels_valid j).1⟩

def nativePadicRoot : ℤ_[primeLabel j] := Classical.choose (exists_padic_source_root j)

theorem nativePadicRoot_equation : shortCubic.aeval (nativePadicRoot j)=0 :=
  (Classical.choose_spec (exists_padic_source_root j)).1

theorem nativePadicRoot_close : ‖nativePadicRoot j-(rootLabel j : ℤ_[primeLabel j])‖<1 :=
  (Classical.choose_spec (exists_padic_source_root j)).2

theorem integralCubic_eval_nativePadicRoot :
    shortCubic.eval₂ (Int.castRingHom ℚ_[primeLabel j])
      (nativePadicRoot j : ℚ_[primeLabel j])=0 := by
  have h := congrArg (PadicInt.Coe.ringHom : ℤ_[primeLabel j] →+* ℚ_[primeLabel j])
    (nativePadicRoot_equation j)
  simpa [shortCubic, Polynomial.aeval_def] using h

theorem rationalCubic_eval_nativePadicRoot :
    rationalShortCubic.eval₂ (algebraMap ℚ ℚ_[primeLabel j])
      (nativePadicRoot j : ℚ_[primeLabel j])=0 := by
  have h := integralCubic_eval_nativePadicRoot j
  simpa [rationalShortCubic, shortCubic] using h

def nativeCubicToPadic : NativeCubicField →+* ℚ_[primeLabel j] :=
  AdjoinRoot.lift (algebraMap ℚ ℚ_[primeLabel j])
    (nativePadicRoot j : ℚ_[primeLabel j]) (rationalCubic_eval_nativePadicRoot j)

theorem nativeCubicToPadic_root : nativeCubicToPadic j nativeCubicRoot =
    (nativePadicRoot j : ℚ_[primeLabel j]) := by
  simp [nativeCubicToPadic, nativeCubicRoot]

theorem nativeCubicToPadic_injective : Function.Injective (nativeCubicToPadic j) :=
  (nativeCubicToPadic j).injective
end
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
