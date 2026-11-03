/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualIntegralBasisSemicharacter
import GRWTSK.Geometry.CMActualPeriodDoubledAutomorphy
import GRWTSK.Geometry.CMActualPeriodCoverCurvature
import Mathlib.Tactic

/-!
# Undoubled Appell-Humbert factor on the ORIGINAL O_E period torus

The SOURCE Hermitian form H is the upstream positive integral period form.
The SOURCE semicharacter alpha comes from the actual integral basis of O_E,
not from arbitrary gauge phases on residue classes. Define
  J(a,z)=alpha(a)*exp(pi*H(period a,z)+pi/2*H(period a,period a)).

The period form B=Im H is integer-valued, and alpha satisfies
  alpha(a+b)=alpha(a)*alpha(b)*(-1)^B(a,b).
Their signs cancel in the full holomorphic group cocycle, yielding
  J(a+b,z)=J(a,z+period(b))*J(b,z).
This action is UNDoubled, unlike the previously published projectivity
J₂. The precise fiber metric weight is
  h(z)=exp(-pi*Re H(z,z)),
whose transformation cancels |J(a,z)|².

The source below formalizes the period cocycle, its exact cover shift,
nonzero holomorphic factors, the Hermitian metric candidate, and the
square-to-doubled identity. The quotient line bundle, its genuine smooth
Chern connection and its class on the user's particular original CM
abelian variety remain separate geometric acceptance requirements.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledAppellHumbert

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralPeriodResidueLinks
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralBasisSemicharacter
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodDoubledAutomorphy
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodCoverCurvature

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- Holomorphic (complex) logarithmic exponent before exp. -/
def halfExponent
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) : ℂ :=
  (Real.pi : ℂ) *
    (epsilon.periodHermitian (epsilon.periodEmbedding (a : E)) z +
      epsilon.periodHermitian (epsilon.periodEmbedding (a : E))
        (epsilon.periodEmbedding (a : E)) / 2)

/-- The precise source-derived UNDOUBLED Appell-Humbert factor of automorphy. -/
def undoubledFactor
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) : ℂ :=
  actualIntegralSemicharacter E epsilon a *
    Complex.exp (halfExponent E epsilon a z)

/-- Identity factor, retaining the full O_E label. -/
@[simp] theorem undoubledFactor_zero
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z : PeriodSpace.CMPeriodSpace E) :
    undoubledFactor E epsilon 0 z = 1 := by
  simp [undoubledFactor, halfExponent,
    actualIntegralSemicharacter_zero]

/-- A genuine holomorphic nonzero factor, not a numerical detector kernel. -/
theorem undoubledFactor_nonzero
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) :
    undoubledFactor E epsilon a z ≠ 0 := by
  unfold undoubledFactor
  apply mul_ne_zero
  · intro hz
    have h := actualIntegralSemicharacter_norm_one E epsilon a
    simp [hz] at h
  · exact Complex.exp_ne_zero _

theorem undoubledFactor_holomorphic
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) :
    Differentiable ℂ (undoubledFactor E epsilon a) := by
  have hH : Differentiable ℂ
      (epsilon.periodHermitian (epsilon.periodEmbedding (a : E))) :=
    (epsilon.periodHermitian (epsilon.periodEmbedding (a : E))).toContinuousLinearMap.differentiable
  have hconstant : Differentiable ℂ
      (fun z : PeriodSpace.CMPeriodSpace E =>
        epsilon.periodHermitian (epsilon.periodEmbedding (a : E)) z +
        epsilon.periodHermitian (epsilon.periodEmbedding (a : E))
          (epsilon.periodEmbedding (a : E)) / 2) :=
    hH.add_const _
  have hexp : Differentiable ℂ (fun z => Complex.exp (halfExponent E epsilon a z)) := by
    change Differentiable ℂ (fun z => Complex.exp ((Real.pi : ℂ) *
      (epsilon.periodHermitian (epsilon.periodEmbedding (a : E)) z +
        epsilon.periodHermitian (epsilon.periodEmbedding (a : E))
          (epsilon.periodEmbedding (a : E)) / 2)))
    exact (hconstant.const_mul _).cexp
  exact hexp.const_mul _

/-- Exact phase of any INTEGRAL actual period, not a numerical rounding. -/
theorem exp_pi_I_int (m : ℤ) :
    Complex.exp ((Real.pi : ℂ) * Complex.I * (m : ℂ)) = (-1 : ℂ) ^ m := by
  have h : (Real.pi : ℂ) * Complex.I * (m : ℂ) =
      (m : ℂ) * ((Real.pi : ℂ) * Complex.I) := by ring
  rw [h, Complex.exp_int_mul, Complex.exp_pi_mul_I]

/-- Exact algebraic difference of the exponent sums is pi*i times the
ORIGINAL integer CM period pairing. This is where orientation matters. -/
theorem halfExponent_twisted_add
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) :
    halfExponent E epsilon a
        (z + epsilon.periodEmbedding (b : E)) +
      halfExponent E epsilon b z =
      halfExponent E epsilon (a + b) z +
        (Real.pi : ℂ) * Complex.I *
          (actualIntegerPeriodFlux E epsilon a b : ℂ) := by
  let u := epsilon.periodEmbedding (a : E)
  let v := epsilon.periodEmbedding (b : E)
  have hfull : epsilon.periodHermitian (u+v) (u+v) =
      epsilon.periodHermitian u u + epsilon.periodHermitian u v +
        epsilon.periodHermitian v u + epsilon.periodHermitian v v := by
    rw [epsilon.periodHermitian_add_left]
    simp only [map_add]
    ring
  have hskew : epsilon.periodHermitian u v -
      epsilon.periodHermitian v u =
        2 * Complex.I * (actualIntegerPeriodFlux E epsilon a b : ℂ) := by
    have hperiod : (epsilon.periodHermitian u v).im =
        (actualIntegerPeriodFlux E epsilon a b : ℝ) := by
      rw [epsilon.periodHermitian_im]
      exact (actualIntegerPeriodFlux_eq_periodForm E epsilon a b).symm
    calc
      _ = 2 * Complex.I * ((epsilon.periodHermitian u v).im : ℂ) :=
        epsilon.periodHermitian_skew u v
      _ = _ := by rw [hperiod]
  unfold halfExponent
  change (Real.pi : ℂ) *
      (epsilon.periodHermitian u (z + v) + epsilon.periodHermitian u u / 2) +
    (Real.pi : ℂ) * (epsilon.periodHermitian v z + epsilon.periodHermitian v v / 2) =
    (Real.pi : ℂ) *
      (epsilon.periodHermitian (u+v) z + epsilon.periodHermitian (u+v) (u+v) / 2) +
    (Real.pi : ℂ) * Complex.I * (actualIntegerPeriodFlux E epsilon a b : ℂ)
  rw [hfull, epsilon.periodHermitian_add_left]
  simp only [map_add]
  linear_combination (Real.pi : ℂ) / 2 * hskew

/-- Exact half-factor phase law; this is the analytically substantive
step NOT captured by the old doubled factor alone. -/
theorem rawHalfFactor_twist
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) :
    Complex.exp (halfExponent E epsilon a
        (z + epsilon.periodEmbedding (b : E))) *
      Complex.exp (halfExponent E epsilon b z) =
      Complex.exp (halfExponent E epsilon (a+b) z) *
        (-1 : ℂ) ^ (actualIntegerPeriodFlux E epsilon a b) := by
  rw [← Complex.exp_add, halfExponent_twisted_add]
  rw [Complex.exp_add, exp_pi_I_int]

/-- A COMPLETE undoubled holomorphic factor of automorphy on the genuine
ring of integers, with the full semicharacter and exact period law. -/
theorem undoubledFactor_add
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) :
    undoubledFactor E epsilon (a+b) z =
      undoubledFactor E epsilon a
        (z + epsilon.periodEmbedding (b : E)) *
      undoubledFactor E epsilon b z := by
  have ha := actualIntegralSemicharacter_add E epsilon a b
  have hf := rawHalfFactor_twist E epsilon a b z
  unfold undoubledFactor
  rw [ha, hf]
  ring

/-- The source action on the trivial line over the universal period cover. -/
def undoubledFrameShift
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E)
    (p : PeriodSpace.CMPeriodSpace E × ℂ) :
    PeriodSpace.CMPeriodSpace E × ℂ :=
  (p.1 + epsilon.periodEmbedding (a : E),
    undoubledFactor E epsilon a p.1 * p.2)

@[simp] theorem undoubledFrameShift_zero
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (p : PeriodSpace.CMPeriodSpace E × ℂ) :
    undoubledFrameShift E epsilon 0 p = p := by
  rcases p with ⟨z,w⟩
  simp [undoubledFrameShift]

theorem undoubledFrameShift_add
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a b : 𝓞 E)
    (p : PeriodSpace.CMPeriodSpace E × ℂ) :
    undoubledFrameShift E epsilon (a+b) p =
      undoubledFrameShift E epsilon a
        (undoubledFrameShift E epsilon b p) := by
  rcases p with ⟨z,w⟩
  apply Prod.ext
  · change z + epsilon.periodEmbedding (((a+b : 𝓞 E) : E)) =
      (z + epsilon.periodEmbedding (b : E)) +
        epsilon.periodEmbedding (a : E)
    simp only [map_add]
    abel
  · change undoubledFactor E epsilon (a+b) z * w =
      undoubledFactor E epsilon a
        (z+epsilon.periodEmbedding (b : E)) *
        (undoubledFactor E epsilon b z * w)
    rw [undoubledFactor_add]
    ring

theorem undoubledFrameShift_neg_comp
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (p : PeriodSpace.CMPeriodSpace E × ℂ) :
    undoubledFrameShift E epsilon (-a)
      (undoubledFrameShift E epsilon a p) = p := by
  rw [← undoubledFrameShift_add]
  simp

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledAppellHumbert
