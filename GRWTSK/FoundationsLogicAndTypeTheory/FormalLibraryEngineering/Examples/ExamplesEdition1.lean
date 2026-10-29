import Boolean
import Boolean.Cube.CertificateBoundary

/-!
# Boolean import examples

Small examples showing that the public Boolean surface and the explicit
certificate-boundary surface are independently importable.
-/

namespace Boolean

example :
    Tree.eval (fun x : Fin 1 => decide (x = 0)) (.var (0 : Fin 1)) = true := by
  rfl

example (p : Tree (Fin 2)) :
    Formula.eval (fun _ : Fin 2 => false) (Tree.toFormula p) =
      Tree.eval (fun _ : Fin 2 => false) p := by
  simp

namespace Cube

example
    (report : SpectralDeterminantBoundary.BoundaryReport) :
    SpectralDeterminantBoundary.FiniteMobiusAuthority report ∨
      SpectralDeterminantBoundary.RequiresExternalAnalyticOrArithmeticCertificate
        report :=
  SpectralDeterminantBoundary.mobius_reducer_is_boundary_detector report

example :
    PrismaticProjection.stepChecked
      PrismaticProjection.exampleShapeUpdateWitness :=
  PrismaticProjection.example_stepChecked

example :
    PrismaticProjection.exampleShapeUpdateWitness.certificate.precisionSound :=
  PrismaticProjection.example_stepChecked_exposes_precision

example :
    PrismaticProjection.PrismaticComputed :=
  PrismaticProjection.examplePrismaticComputed

example :
    PrismaticProjection.ToroidalShadowState :=
  PrismaticProjection.examplePriorShadowState

end Cube

end Boolean
