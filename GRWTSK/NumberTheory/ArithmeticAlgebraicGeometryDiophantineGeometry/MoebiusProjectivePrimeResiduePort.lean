/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueFiberPorts
import Mathlib.Tactic

/-!
# A projective prime-residue port with the exceptional point retained

The existing GeometricFiberPort acts on the affine fiber only. A
nonaffine Möbius coordinate change can exchange a finite two-torsion
point with the point at infinity. The new port acts on Option of the
EXISTING source affine fiber; none means the unique point at infinity.

Every projective equivalence gives exact equality of the original
integralModelCount, without inventing an arithmetic trace or omitting
an exceptional point. This file does NOT construct the concrete
nonaffine gauge equivalence or supply an RH-facing arithmetic rate.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ProjectivePrimeResiduePort

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow

/-- Existing affine solutions, with an additional, separately counted
point at infinity. The source model and the source prime are unchanged. -/
abbrev ProjectivePointFiber (W : WeierstrassCurve ℤ) (p : PrimeIndex) : Type :=
  Option (AffinePointFiber W p)

/-- A genuine projective equivalence; the image of the point at infinity
need not be the target point at infinity. -/
structure ProjectivePointPort (W V : WeierstrassCurve ℤ) (p : PrimeIndex) where
  pointEquiv : ProjectivePointFiber W p ≃ ProjectivePointFiber V p

namespace ProjectivePointPort

/-- The projective source's finite count is the original integer-model
count, with the unique infinity point paid once. -/
theorem projective_card (W : WeierstrassCurve ℤ) (p : PrimeIndex) :
    Fintype.card (ProjectivePointFiber W p) = integralModelCount W p.1 := by
  change Fintype.card (Option (AffinePointFiber W p)) = integralModelCount W p.1
  have hsource := affineFiber_card_add_one W p
  simp only [Fintype.card_option]
  omega

/-- Any genuine equivalence of full projective fibers preserves the
SOURCE integral-model point count. Affine-only preservation is NOT required. -/
theorem pointCount_eq {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (f : ProjectivePointPort W V p) :
    integralModelCount W p.1 = integralModelCount V p.1 := by
  calc
    integralModelCount W p.1 = Fintype.card (ProjectivePointFiber W p) :=
      (projective_card W p).symm
    _ = Fintype.card (ProjectivePointFiber V p) := Fintype.card_congr f.pointEquiv
    _ = integralModelCount V p.1 := projective_card V p

/-- Identity, composition and reversal preserve the exact same dependent
prime index. This interface does not manufacture a cross-prime map. -/
def identity (W : WeierstrassCurve ℤ) (p : PrimeIndex) :
    ProjectivePointPort W W p :=
  ⟨Equiv.refl _⟩

def comp {W V U : WeierstrassCurve ℤ} {p : PrimeIndex}
    (f : ProjectivePointPort W V p) (g : ProjectivePointPort V U p) :
    ProjectivePointPort W U p :=
  ⟨f.pointEquiv.trans g.pointEquiv⟩

def symm {W V : WeierstrassCurve ℤ} {p : PrimeIndex}
    (f : ProjectivePointPort W V p) :
    ProjectivePointPort V W p :=
  ⟨f.pointEquiv.symm⟩

end ProjectivePointPort
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ProjectivePrimeResiduePort
