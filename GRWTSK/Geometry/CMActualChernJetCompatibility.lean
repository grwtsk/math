/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualOrbitHermitianMetric
import GRWTSK.Geometry.CMActualPeriodCoverCurvature
import Mathlib.Tactic

/-!
# Correct Chern-frame sign for the actual CM Appell-Humbert metric

The local undoubled quotient uses (z,w) -> (z+p(a),J(a,z)*w) and
h(z)=exp(-pi*Re H(z,z)). For this convention, the Hermitian-compatible
HOLOMORPHIC-frame Chern coefficient is

  theta_z(v) = -pi H(z,v),

not +pi H(z,v). Translation obeys

  theta_(z+p(a))(v) + d log J(a,z)(v) = theta_z(v),
  d log J(a,z)(v) = pi H(p(a),v).

In the associated unitary-frame convention A = -pi*i*Im H(z,v), and the
constant antisymmetrized directional coefficient is

  F(u,v)= -2*pi*i*Im H(u,v).

This is the NEGATIVE of the previously published +2*pi*i*B cover-potential
convention. On integer period triangles exp(-pi*i*B) = exp(+pi*i*B) =
(-1)^B, so mod-two residue holonomy does not detect the sign difference.
That ambiguity MUST NOT be used to identify the two continuous connections.

The present source formalizes algebraic directional jets and gauge/metric
identities. It does not yet prove the analytic de Rham differentiation,
construct the complex-holomorphic locally trivial quotient bundle, or
identify the Chern class of a particular original CM abelian variety.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualChernJetCompatibility

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledAppellHumbert
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualOrbitHermitianMetric
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodCoverCurvature
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralPeriodResidueLinks

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- Candidate Chern coefficient in a HOLOMORPHIC frame, derived from the
source metric h and its original conjugate-linear-first Hermitian H. -/
def chernHolomorphicFrameJet
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  -(Real.pi : ℂ) * epsilon.periodHermitian z v

/-- Exact complex-linear derivative-of-log-factor coefficient in the z slot.
The phase alpha(a) is constant in z and contributes no derivative. -/
def logarithmicFactorJet
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  (Real.pi : ℂ) *
    epsilon.periodHermitian (epsilon.periodEmbedding (a : E)) v

/-- A purely algebraic finite increment identifies the logarithmic factor
jet, without differentiating the complex exponential in Lean. -/
theorem halfExponent_directional_difference
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z v : PeriodSpace.CMPeriodSpace E) :
    halfExponent E epsilon a (z + v) - halfExponent E epsilon a z =
      logarithmicFactorJet E epsilon a v := by
  unfold halfExponent logarithmicFactorJet
  rw [map_add]
  ring

/-- The correct connection gauge law on the original CM period cover.
It is opposite to an arbitrary +pi*i*B cover-potential assignment. -/
theorem chernHolomorphicFrameJet_translation
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z v : PeriodSpace.CMPeriodSpace E) :
    chernHolomorphicFrameJet E epsilon
        (z + epsilon.periodEmbedding (a : E)) v +
      logarithmicFactorJet E epsilon a v =
        chernHolomorphicFrameJet E epsilon z v := by
  unfold chernHolomorphicFrameJet logarithmicFactorJet
  rw [epsilon.periodHermitian_add_left]
  ring

/-- Differential of the scalar log-metric at the level of its exact first
jet, with BOTH real-linear complex slots present. -/
def metricLogRealDirectionalJet
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) : ℝ :=
  -Real.pi *
    (epsilon.periodHermitian z v + epsilon.periodHermitian v z).re

/-- Hermitian compatibility at the JET level: d(log h)=theta+conj(theta).
The required analytic derivative identification remains separately open. -/
theorem metricLogRealDirectionalJet_eq
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) :
    metricLogRealDirectionalJet E epsilon z v =
      2 * (chernHolomorphicFrameJet E epsilon z v).re := by
  have hsym : (epsilon.periodHermitian v z).re =
      (epsilon.periodHermitian z v).re := by
    rw [epsilon.periodHermitian_symm]
    rfl
  unfold metricLogRealDirectionalJet chernHolomorphicFrameJet
  simp only [Complex.add_re, Complex.mul_re, Complex.neg_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  rw [hsym]
  ring

/-- The correct antisymmetrized holomorphic-frame curvature coefficient. -/
def chernCurvatureJet
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (u v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  chernHolomorphicFrameJet E epsilon u v -
    chernHolomorphicFrameJet E epsilon v u

/-- Main SIGN comparison with the previously published plus-cover potential.
The two jets are opposite at real, non-integral coordinate directions. -/
theorem chernCurvatureJet_eq_neg_cover
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (u v : PeriodSpace.CMPeriodSpace E) :
    chernCurvatureJet E epsilon u v =
      -coverCurvatureCoefficient E epsilon u v := by
  unfold chernCurvatureJet chernHolomorphicFrameJet
  unfold coverCurvatureCoefficient coverPotential
  have hskew := epsilon.periodHermitian_skew u v
  calc
    -(Real.pi : ℂ) * epsilon.periodHermitian u v -
        (-(Real.pi : ℂ) * epsilon.periodHermitian v u) =
      -(Real.pi : ℂ) *
        (epsilon.periodHermitian u v - epsilon.periodHermitian v u) := by ring
    _ = -(2 * Real.pi : ℂ) * Complex.I *
          (epsilon.periodRiemannForm u v : ℂ) := by rw [hskew]; ring
    _ = -((Real.pi : ℂ) * Complex.I * (epsilon.periodRiemannForm u v : ℂ) -
          (Real.pi : ℂ) * Complex.I * (epsilon.periodRiemannForm v u : ℂ)) := by
      have hv : epsilon.periodRiemannForm v u =
          -epsilon.periodRiemannForm u v :=
        (epsilon.periodRiemannForm_isAlt.neg_eq u v).symm
      rw [hv]
      ring

/-- The exact imaginary curvature coefficient, with sign and scale paid. -/
theorem chernCurvatureJet_eq
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (u v : PeriodSpace.CMPeriodSpace E) :
    chernCurvatureJet E epsilon u v =
      -(2 * Real.pi : ℂ) * Complex.I *
        (epsilon.periodRiemannForm u v : ℂ) := by
  rw [chernCurvatureJet_eq_neg_cover]
  rw [coverCurvatureCoefficient_eq]
  ring

/-- At the level of complex coordinates, the unitary-frame potential is
minus the earlier one (not an unidentified numerical sign convention). -/
def chernUnitaryFrameJet
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  (chernHolomorphicFrameJet E epsilon z v -
    star (chernHolomorphicFrameJet E epsilon z v)) / 2

theorem chernUnitaryFrameJet_eq
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) :
    chernUnitaryFrameJet E epsilon z v =
      -coverPotential E epsilon z v := by
  unfold chernUnitaryFrameJet chernHolomorphicFrameJet
  have hsym := epsilon.periodHermitian_symm z v
  have hskew := epsilon.periodHermitian_skew z v
  calc
    (-(Real.pi : ℂ) * epsilon.periodHermitian z v -
      star (-(Real.pi : ℂ) * epsilon.periodHermitian z v)) / 2 =
        -(Real.pi : ℂ) / 2 *
          (epsilon.periodHermitian z v - epsilon.periodHermitian v z) := by
            rw [star_mul, star_neg, ← hsym]
            simp only [Complex.star_def, Complex.conj_ofReal]
            ring
    _ = -(Real.pi : ℂ) * Complex.I *
          (epsilon.periodRiemannForm z v : ℂ) := by rw [hskew]; ring
    _ = -coverPotential E epsilon z v := by rfl

/-- A genuine CM lattice parallelogram has an integral sourced curvature
exponent; its sign is the opposite of the plus-cover model. -/
theorem chernCurvature_on_integral_periods
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) :
    chernCurvatureJet E epsilon
      (epsilon.periodEmbedding (a : E))
      (epsilon.periodEmbedding (b : E)) =
      -(2 * Real.pi : ℂ) * Complex.I *
        (actualIntegerPeriodFlux E epsilon a b : ℂ) := by
  rw [chernCurvatureJet_eq]
  rw [actualIntegerPeriodFlux_eq_periodForm]
  ring


/-- The two opposite Chern/cover orientations agree AFTER exponentiating
on an integer period. They do not agree on the full real tangent space. -/
theorem exp_negative_pi_I_integer (n : ℤ) :
    Complex.exp (-(Real.pi : ℂ) * Complex.I * (n : ℂ)) =
      (-1 : ℂ) ^ n := by
  have h : -(Real.pi : ℂ) * Complex.I * (n : ℂ) =
      (Real.pi : ℂ) * Complex.I * ((-n : ℤ) : ℂ) := by
    push_cast
    ring
  rw [h, exp_pi_I_int]
  simp [zpow_neg]

/-- Correct-sign CHERN-JET half-curvature still returns the original
signed (-1)^B residue holonomy on each actual O_E-period triangle.
This is coefficient algebra and exponential periodicity, NOT a proof of
physical parallel transport by a descended analytic Chern connection. -/
theorem residueHolonomy_eq_chernJetHalfFlux
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (i j k : Sector d) :
    triangleHolonomy d (actualPeriodResidueLinks E epsilon d sites) i j k =
      Complex.exp
        (chernCurvatureJet E epsilon
          (epsilon.periodEmbedding ((sites j - sites i : 𝓞 E) : E))
          (epsilon.periodEmbedding ((sites k - sites i : 𝓞 E) : E)) / 2) := by
  rw [actualPeriodResidueLinks_relative_area]
  rw [chernCurvature_on_integral_periods]
  have h : -(2 * Real.pi : ℂ) * Complex.I *
      (actualIntegerPeriodFlux E epsilon
        (sites j - sites i) (sites k - sites i) : ℂ) / 2 =
      -(Real.pi : ℂ) * Complex.I *
        (actualIntegerPeriodFlux E epsilon
          (sites j - sites i) (sites k - sites i) : ℂ) := by ring
  rw [h, exp_negative_pi_I_integer]

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualChernJetCompatibility
