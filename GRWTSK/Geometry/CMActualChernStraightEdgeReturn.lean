/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualPeriodChartLocalFrames
import GRWTSK.Geometry.CMActualChernJetCompatibility
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic

/-!
# Exact straight-edge transport for the sourced Chern UNITARY cover jet

For the source positive CM period B=Im H and the metric-compatible
holomorphic-frame sign, the UNITARY cover coefficient is
   A_z(v)=-pi*i*B(z,v).
The straight line z+t*v has constant contraction A_(z+t*v)(v), because
B(v,v)=0. Its path integral is exactly A_z(v). Therefore the chosen
parallel-transport convention for covariant derivative d+A is
   T(z,z+v)=exp(-integral A)=exp(+pi*i*B(z,v)).

On TRUE O_E integral periods, B is an exact integer. Hence the transport
from period a to b equals (-1)^B(a,b), the ORIGINAL published residue link
U_ij. Its cyclic edge product returns the existing odd/even triangle
holonomy, with every additive residue and both parities still included.

This closes a substantive curve-integral comparison on the universal
cover, NOT the assertion that the algebraic orbit quotient carries a
smooth descended Chern connection. The latter needs analytic bundle
local trivializations, connection descent, and intrinsic variety match.
No CERN coupling, signed all-rate Moebius estimate or Schwartz transfer.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualChernStraightEdgeReturn

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralPeriodResidueLinks
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledAppellHumbert
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualChernJetCompatibility
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- The genuine real-affine segment in the complex period space. -/
def straightSegment (z v : PeriodSpace.CMPeriodSpace E) (t : ℝ) :
    PeriodSpace.CMPeriodSpace E := z + t • v

/-- Skew-symmetry makes the unitary connection coefficient constant ALONG
any straight segment when evaluated on its own tangent direction. -/
theorem straightSegment_chernUnitary_constant
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) (t : ℝ) :
    chernUnitaryFrameJet E epsilon (straightSegment E z v t) v =
      chernUnitaryFrameJet E epsilon z v := by
  rw [chernUnitaryFrameJet_eq, chernUnitaryFrameJet_eq]
  have hself : epsilon.periodRiemannForm v v = 0 :=
    epsilon.periodRiemannForm_isAlt v
  have hz : epsilon.periodRiemannForm (z + t • v) v =
      epsilon.periodRiemannForm z v := by
    simp [hself]
  simp [straightSegment, coverPotential, hz]

/-- Source unitary Chern-JET line integral; the integrand is a concrete
constant along this curve, not a guessed midpoint approximation. -/
def straightChernJetIntegral
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  ∫ t in (0 : ℝ)..1,
    chernUnitaryFrameJet E epsilon (straightSegment E z v t) v

/-- Exact real-line parameter integral, including the order 0..1 and sign. -/
theorem straightChernJetIntegral_eq
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) :
    straightChernJetIntegral E epsilon z v =
      chernUnitaryFrameJet E epsilon z v := by
  unfold straightChernJetIntegral
  calc
    _ = ∫ t in (0 : ℝ)..1, chernUnitaryFrameJet E epsilon z v := by
      apply intervalIntegral.integral_congr
      intro t _
      exact straightSegment_chernUnitary_constant E epsilon z v t
    _ = _ := by simp

/-- Covariant transport convention: parallel sections obey d w + A w=0.
The minus sign in exp(-integral A) is therefore essential. -/
def straightChernJetTransport
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) : ℂ :=
  Complex.exp (-straightChernJetIntegral E epsilon z v)

/-- The exact constant CM Riemann form determines the edge transport. -/
theorem straightChernJetTransport_eq
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z v : PeriodSpace.CMPeriodSpace E) :
    straightChernJetTransport E epsilon z v =
      Complex.exp ((Real.pi : ℂ) * Complex.I *
        (epsilon.periodRiemannForm z v : ℂ)) := by
  rw [straightChernJetTransport, straightChernJetIntegral_eq,
    chernUnitaryFrameJet_eq]
  simp only [neg_neg, coverPotential]

/-- Straight-edge transport between ORIGINAL integral CM period points.
Endpoints retain their full O_E labels, before residue grouping. -/
def actualPeriodStraightTransport
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) : ℂ :=
  straightChernJetTransport E epsilon
    (epsilon.periodEmbedding (a : E))
    (epsilon.periodEmbedding ((b-a : 𝓞 E) : E))

/-- True orientation and integral period precision: the geometric transport
is IDENTICAL to (-1)^B(a,b) for the original signed integer form. -/
theorem actualPeriodStraightTransport_eq_phase
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) :
    actualPeriodStraightTransport E epsilon a b =
      (-1 : ℂ) ^ (actualIntegerPeriodFlux E epsilon a b) := by
  unfold actualPeriodStraightTransport
  rw [straightChernJetTransport_eq]
  have hlin : epsilon.periodRiemannForm
      (epsilon.periodEmbedding (a : E))
      (epsilon.periodEmbedding (((b-a : 𝓞 E) : E))) =
        epsilon.periodRiemannForm
          (epsilon.periodEmbedding (a : E))
          (epsilon.periodEmbedding (b : E)) := by
    have he : epsilon.periodEmbedding (((b-a : 𝓞 E) : E)) =
        epsilon.periodEmbedding (b : E) -
          epsilon.periodEmbedding (a : E) := by simp
    rw [he]
    simp [epsilon.periodRiemannForm_isAlt (epsilon.periodEmbedding (a : E))]
  rw [hlin, ← actualIntegerPeriodFlux_eq_periodForm]
  exact exp_pi_I_int (actualIntegerPeriodFlux E epsilon a b)

/-- Direct return of the published true residue link, not only a triangle
integrated-curvature surrogate. Nonunits and both parities are preserved. -/
theorem straightTransport_eq_actualResidueLink
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (i j : Sector d) :
    actualPeriodStraightTransport E epsilon (sites i) (sites j) =
      (actualPeriodResidueLinks E epsilon d sites).transport i j := by
  rw [actualPeriodStraightTransport_eq_phase]
  rfl

/-- Three exact oriented transports equal the source triangle holonomy.
This is a connection-JET transport comparison on the cover, NOT a verified
parallel-transport theorem on a descended line bundle. -/
theorem straightTransport_triangle_eq_actualHolonomy
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (d : ℕ) (sites : IntegralResidueSites E d)
    (i j k : Sector d) :
    actualPeriodStraightTransport E epsilon (sites i) (sites j) *
      actualPeriodStraightTransport E epsilon (sites j) (sites k) *
        actualPeriodStraightTransport E epsilon (sites k) (sites i) =
      triangleHolonomy d (actualPeriodResidueLinks E epsilon d sites) i j k := by
  rw [straightTransport_eq_actualResidueLink,
    straightTransport_eq_actualResidueLink,
    straightTransport_eq_actualResidueLink]
  rfl

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualChernStraightEdgeReturn
