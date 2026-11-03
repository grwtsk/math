/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualPeriodDoubledAutomorphy
import GRWTSK.Geometry.CMActualIntegralPeriodResidueLinks
import Mathlib.Tactic

/-!
# Actual positive CM period form: cover connection, curvature, residue area

The source is the ACTUAL upstream positive integral period Riemann form
B_ε = Im(H_ε), on the actual period cover V_ε and lattice O_E. Set

    A_z(v) = pi*i*B_ε(z,v).

It is a unitary (pure imaginary) affine connection-potential candidate on
the trivial line over the COVER. Its antisymmetrized directional jet is

    F(u,v) = A_u(v)-A_v(u) = 2*pi*i*B_ε(u,v).

Thus the HALF face-curvature integral through a Euclidean triangle equals
pi*i*B_ε(b-a,c-a), the EXACT exponent of the earlier U(1) parity holonomy
for actual integer periods. The triangle is an affine two-simplex, with
oriented area factor 1/2. This is genuine sourced curvature-coefficient
algebra, not a proof of the differential-form dA or a descended Chern
connection on a realized ample line bundle.

The normalized undoubled phase exp(pi*i*integer)=(-1)^integer must not be
mistaken for the projectivity proof's DOUBLED automorphy factor, which
has exp(2*pi*i*integer)=1 on lattice commutators. The Appell-Humbert
semicharacter and gluing remain independent acceptance obligations.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodCoverCurvature

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralPeriodResidueLinks
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- A source-derived pure-imaginary potential on the universal cover.
Its period form is NOT a freely selected symplectic matrix. -/
def coverPotential (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  (Real.pi : ℂ) * Complex.I * (epsilon.periodRiemannForm z v : ℂ)

/-- Real part vanishes: the coefficients lie in the unitary Lie algebra. -/
theorem coverPotential_re_zero
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) :
    (coverPotential E epsilon z v).re = 0 := by
  simp [coverPotential, Complex.mul_re]

/-- Translation on the cover changes A by the ORIGINAL period pairing. -/
theorem coverPotential_add_left
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z u v : PeriodSpace.CMPeriodSpace E) :
    coverPotential E epsilon (z + u) v =
      coverPotential E epsilon z v + coverPotential E epsilon u v := by
  have h : epsilon.periodRiemannForm (z + u) v =
      epsilon.periodRiemannForm z v + epsilon.periodRiemannForm u v := by
    simp
  unfold coverPotential
  rw [h]
  push_cast
  ring

/-- The cover potential is skew under interchange because its ORIGINAL
Riemann form is alternating. -/
theorem coverPotential_skew
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (u v : PeriodSpace.CMPeriodSpace E) :
    coverPotential E epsilon v u = -coverPotential E epsilon u v := by
  have h : epsilon.periodRiemannForm v u =
      -epsilon.periodRiemannForm u v :=
    (epsilon.periodRiemannForm_isAlt.neg_eq u v).symm
  unfold coverPotential
  rw [h]
  push_cast
  ring

/-- Algebraic coefficient of the antisymmetrized directional derivative.
Formal identification with de Rham dA is a distinct analytic obligation. -/
def coverCurvatureCoefficient
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (u v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  coverPotential E epsilon u v - coverPotential E epsilon v u

/-- Exact constant curvature coefficient: twice pi*i times the sourced
positive integral CM period Riemann form. -/
theorem coverCurvatureCoefficient_eq
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (u v : PeriodSpace.CMPeriodSpace E) :
    coverCurvatureCoefficient E epsilon u v =
      (2 * Real.pi : ℂ) * Complex.I *
        (epsilon.periodRiemannForm u v : ℂ) := by
  unfold coverCurvatureCoefficient
  rw [coverPotential_skew E epsilon u v]
  unfold coverPotential
  ring

/-- The existing holomorphic factor is DOUBLED, whereas the connection
potential matching the odd residue phase is the undoubled one. Its cover
potential therefore has twice the original coefficient. -/
def doubledCoverPotential
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  2 * coverPotential E epsilon z v

/-- The doubled factor's source curvature coefficient is TWICE the
undoubled value and must not be compared with a mod-two odd phase. -/
def doubledCoverCurvatureCoefficient
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (u v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  doubledCoverPotential E epsilon u v -
    doubledCoverPotential E epsilon v u

theorem doubledCoverCurvatureCoefficient_eq
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (u v : PeriodSpace.CMPeriodSpace E) :
    doubledCoverCurvatureCoefficient E epsilon u v =
      (4 * Real.pi : ℂ) * Complex.I *
        (epsilon.periodRiemannForm u v : ℂ) := by
  calc
    doubledCoverCurvatureCoefficient E epsilon u v =
        2 * coverCurvatureCoefficient E epsilon u v := by
      unfold doubledCoverCurvatureCoefficient doubledCoverPotential
        coverCurvatureCoefficient
      ring
    _ = _ := by rw [coverCurvatureCoefficient_eq E epsilon u v]; ring

/-- Oriented lattice triangle identity in the actual complex period space.
No integer or residue label has been quotiented to obtain this equation. -/
theorem periodRiemann_triangle_area
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (x y z : PeriodSpace.CMPeriodSpace E) :
    epsilon.periodRiemannForm x y +
      epsilon.periodRiemannForm y z +
      epsilon.periodRiemannForm z x =
        epsilon.periodRiemannForm (y - x) (z - x) := by
  have hxy : epsilon.periodRiemannForm y x =
      -epsilon.periodRiemannForm x y :=
    (epsilon.periodRiemannForm_isAlt.neg_eq x y).symm
  have hxz : epsilon.periodRiemannForm x z =
      -epsilon.periodRiemannForm z x :=
    (epsilon.periodRiemannForm_isAlt.neg_eq z x).symm
  have hxx : epsilon.periodRiemannForm x x = 0 :=
    epsilon.periodRiemannForm_isAlt x
  symm
  calc
    epsilon.periodRiemannForm (y - x) (z - x) =
        epsilon.periodRiemannForm y z -
        epsilon.periodRiemannForm y x -
        epsilon.periodRiemannForm x z +
        epsilon.periodRiemannForm x x := by
          simp only [map_sub, LinearMap.sub_apply]
          ring
    _ = _ := by rw [hxy, hxz, hxx]; ring

/-- The cover curvature of a triangle has exactly the signed integral of
its oriented period flux, including its factor 1/2. -/
theorem half_curvature_equals_triangle_exponent
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (x y z : PeriodSpace.CMPeriodSpace E) :
    coverCurvatureCoefficient E epsilon (y - x) (z - x) / 2 =
      (Real.pi : ℂ) * Complex.I *
        ((epsilon.periodRiemannForm x y +
          epsilon.periodRiemannForm y z +
          epsilon.periodRiemannForm z x : ℝ) : ℂ) := by
  rw [coverCurvatureCoefficient_eq,
      ← periodRiemann_triangle_area E epsilon x y z]
  push_cast
  ring

/-- A TRUE integer-period triangle has precisely the same real signed area
as the previously published actual integer flux (before taking mod 2). -/
theorem actualIntegralPeriod_triangle_area
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b c : 𝓞 E) :
    (actualIntegerPeriodFlux E epsilon a b +
      actualIntegerPeriodFlux E epsilon b c +
      actualIntegerPeriodFlux E epsilon c a : ℤ) =
      actualIntegerPeriodFlux E epsilon (b - a) (c - a) := by
  apply Int.cast_injective (α := ℝ)
  push_cast
  simp only [actualIntegerPeriodFlux_eq_periodForm]
  have hba : epsilon.periodEmbedding (((b - a : 𝓞 E) : E)) =
      epsilon.periodEmbedding (b : E) - epsilon.periodEmbedding (a : E) := by
    simp
  have hca : epsilon.periodEmbedding (((c - a : 𝓞 E) : E)) =
      epsilon.periodEmbedding (c : E) - epsilon.periodEmbedding (a : E) := by
    simp
  rw [hba, hca]
  exact periodRiemann_triangle_area E epsilon
    (epsilon.periodEmbedding (a : E))
    (epsilon.periodEmbedding (b : E))
    (epsilon.periodEmbedding (c : E))

/-- This is the existing quantized residue connection's REAL oriented
triangle exponent, now derived from relative actual O_E period vectors. -/
theorem actualPeriodResidueLinks_relative_area
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (i j k : Sector d) :
    triangleHolonomy d (actualPeriodResidueLinks E epsilon d sites) i j k =
      (-1 : ℂ) ^
        (actualIntegerPeriodFlux E epsilon
          (sites j - sites i) (sites k - sites i)) := by
  rw [actualPeriodResidueLinks_triangle]
  congr 1
  exact actualIntegralPeriod_triangle_area E epsilon
    (sites i) (sites j) (sites k)

/-- Any odd actual CM period triangle remains -1 even after ALL local
U(1) rephasings; no positive lattice energy replaces the signed phase. -/
theorem odd_actual_period_triangle_gauge
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (g : Gauge d) (i j k : Sector d)
    (hodd : Odd (actualIntegerPeriodFlux E epsilon
          (sites j - sites i) (sites k - sites i))) :
    triangleHolonomy d (gaugeLinks d g
      (actualPeriodResidueLinks E epsilon d sites)) i j k = -1 := by
  rw [actualPeriodResidueLinks_triangle_gauge,
      actualPeriodResidueLinks_relative_area, hodd.neg_one_zpow]

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodCoverCurvature
